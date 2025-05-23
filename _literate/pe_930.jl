# Partiamo caricando tutti gli strumentopoli misteriosi necessari alla soluzione.
using Random, LinearAlgebra
using SparseArrays
using DataStructures
using IterativeSolvers
using Plots, GraphRecipes
gr() # hide
Random.seed!(31032025);

# Per iniziare ad ambientarci nel contesto del problema (ovvero con il meccanismo di spostamento delle palline nelle ciotole, la condizione di terminazione del gioco, ecc) possiamo implementare una semplice simulazione del gioco stesso, osservando quali possibili scenari possono verificarsi.
## n bowls, m balls
function simulate_F(n::Int, m::Int; num_trials::Int=10000, verbose=false)
    total_moves = 0
	if verbose num_trials = 1 end

    for _ in 1:num_trials
        ## random initial distribution of balls
        balls = rand(1:n, m) # array of size m, each element in 1:n
        ## so that each ball i is assigned to the bowl given by balls[i]
        moves = 0

        while length(unique(balls)) > 1 # stop when all balls are in the same bowl
        ## and they will be in the same bowl when all the indexes of balls vector will be equal
            ball_idx = rand(1:m) # pick a ball at random
            direction = rand([-1, 1]) # pick a direction (-1 for counterclockwise, 1 for clockwise)
			if verbose println("Balls are in bowls: $balls (selected ball: $ball_idx, will move by: $direction)") end
            balls[ball_idx] = mod1(balls[ball_idx] + direction, n) # move the ball
            ## this changes the bowl attribution of ball ball_idx, using mod1 as for the circular structure
            moves += 1
        end
		total_moves += moves
		if verbose 
			println("Balls are in bowls: $balls")
			println("Total moves: $total_moves")
		end
    end
    return total_moves / num_trials  # estimate of F(n, m)
end
# Con questa funzione possiamo o simulare il problema per ottenere una stima più o meno accurata della soluzione:
simulate_F(2, 3, num_trials = 20_000) # soluzione esatta: 9/4 = 2.25
#-
# o altrimenti vedere in concreto cosa accade in un'esempio di esecuzione:
Random.seed!(1) # hide
simulate_F(4, 3, verbose=true)
#-

# Ma ovviamente questo non ci basta: vogliamo risolvere il problema in modo (matematicamente) esatto. Per farlo, l'idea è di affidarci alle _catene di Markov_. Le catene di Markov hanno infatti come principale scopo nella vita quello di poter modellare un contesto stocastico e dinamico, che è precisamente quello che abbiamo qui: palline, disposte inizialmente in modo casuale, che si muovono nelle ciotole seguendo mosse casuali.

# Per caratterizzare una catena di Markov servono due elementi: lo spazio degli stati $S$, ovvero le configurazioni che può assumere il sistema che stiamo modellando, e la matrice di transizione $P$, le cui componenti $p_{ij}$ descrivono la probabilità che da un certo stato $i$ ci spostiamo in un altro stato $j$. L'idea dello "spostarsi tra i vari stati" deriva dal fatto che alla catena di Markov associamo anche una variabile aleatoria $X_n$ che descrive in quale stato $i\in S$ ci troveremo all'istante di tempo $n\in\mathbb{N}_0$. Per esempio: $X_0$ è lo stato da cui partiamo, poi al tempo 1 ci sposteremo in un qualche altro stato $X_1$, poi $X_2$, e così via.

# ### Stati
# In questo problema, una scelta interessante consiste già nel capire come modellare gli stati. Esistono infatti diversi possibili approcci:
# 1. assegnare a ogni pallina un'etichetta corrispondente alla ciotola in cui è contenuta
# 2. assegnare ad ogni ciotola il numero di palline che contiene, pensando alle ciotole come disposte in una fila (quindi esiste la "prima" ciotola, la "seconda" ciotola, ecc) ma mantenendo ovviamente la configurazione circolare del problema assumendo che dalla prima ciotola possiamo "andare a sinistra" ed andare nell'ultima ciotola, e viceversa
# 3. assegnare ad ogni ciotola il numero di palline che contiene, pensando alle ciotole come effettivamente disposte nel cerchio che prevede il testo, quindi accorpando in base alle simmetrie circolari le configurazioni derivate dal metodo del punto 2

# Per capire meglio, consideriamo lo scenario in cui ci sono 4 ciotole e 2 palline disposte in modo alternato nelle ciotole. Col primo metodo, questa configurazione verrebbe descritta da quattro stati: $13$, $24$, $31$, $42$; dove $ij$ starebbe quindi ad indicare la prima pallina nella ciotola numero $i$ e la seconda pallina nella ciotola numero $j$. Col secondo metodo, invece, avremmo gli stati $0101$ oppure $1010$, mentre solo col terzo metodo saremo in grado di apprezzare la simmetria del problema e avere un unico stato, diciamo $0101$, che rappresenti perfettamente la situazione. Infatti, gli stati $0101$ e $1010$ diventano ora equivalenti, in quest'ultima formulazione, in quanto uno può essere ottenuto "facendo scorrere con circolarità" l'altro, moralmente.

# Ad ogni modo, con $n$ ciotole ed $m$ palline, ciascuno di questi metodi prevederebbe una diversa numerosità dello spazio degli stati:
# 1. con la prima formulazione avremmo che ogni pallina può andare in ciascuna ciotola. Quindi: $n$ opzioni per $m$ palline, da cui $n^m$ stati
# 2. con la seconda formulazione avremmo che ogni ciotola, disposta in fila, può accogliere da zero a $m$ palline. Pensando di rappresentare ogni pallina come, beh, una pallina "∘" ed ogni ciotola come una barra "|" segue che gli stati totali sono i modi in cui possiamo anagrammare la stringa formata da $m$ palline e $n-1$ ciotole (il meno uno è perché fissiamo una certa ciotola essere la prima lettera della stringa)[^1], supponendo che le palline alla destra di una barra corrispondano a quelle che tale ciotola contiene. Per esempio, la stringa "∘∘||∘" corrisponde ad uno scenario con 3 palline e 3 ciotole, dove la prima contiene due palline, la seconda zero, e la terza una. Con questo metodo, si ricava che il numero di stati è pari, in generale, a $$\frac{(m+n-1)!}{m!(n-1)!}={ m+n-1 \choose m}$$ 
# 3. con la terza formulazione più complicata perché contiamo come una sola configurazione, per via delle simmetrie, configurazioni precedentemente diverse, il numero degli stati diminuisce ulteriormente. Per sapere di quanto diminuisce... beh, di certo esisterà una formula che, come nei casi precedenti, conti elegantemente gli stati in funzione di $n$ ed $m$. Tuttavia stavolta ricavarla è molto meno immediato, quindi non ci ho badato troppo: la mia natura ingegneristica ha preso il sopravvento e, contento di aver raggiunto il caso ottimale, ho beatamente proseguito col resto del problema senza stare ad indagare troppo questo calcolo


# Il punto è infatti che all'aumentare del numero di ciotole e palline, il terzo metodo permette di limitare la numerosità degli stati, mantenendo quindi il problema più agilmente risolvibile per un computer. Per esempio, con 12 ciotole e 6 palline, il primo metodo prevederebbe $12^6=2985984$ stati, il secondo ${17 \choose 6}=12376$, il terzo 561. E siccome in seguito vedremo che ci sarà da risolvere un sistema, meglio lavorare con sistemi da 561 variabili rispetto che 2985984![^2]. La formulazione del secondo metodo è comunque utile a livello umano per raccontare cosa succede, quindi la riprenderò comunque, a volte, nel discorso.

# [^1]: Per la cronaca, è il "classico" problema delle stelline e sbarrette.
# [^2]: Se avete letto il "!" come fattoriale tranquilli, non siete i soli, ormai quando anche in giro leggo _"buon compleanno! +20!"_ lo interpreto istintivamente come un "20 fattoriale".

# ### Probabilità iniziali
# Una volta definito come modellare gli stati, il prossimo passo consiste nel calcolare le probabilità che la configurazione iniziale delle palline nelle ciotole sia esattamente un certo stato piuttosto che un altro. Questo servirà perché per trovare il tempo medio necessario ad entrare nella classe ricorrente $R$, quella in cui tutte le palline sono riunite nella stessa ciotola e quindi il gioco terminerà, dovremmo espandere[^3] il calcolo su tutti i possibili stati da cui possiamo partire. Moralmente dobbiamo cioè pesare i contributi portati da ciascuno stato per la probabilità di partire proprio da quello stato: 
# $$ \mathbb{E}(\text{#passi per entrare in $R$}) =  \sum_{i \in S} \mathbb{E}(\text{#passi per entrare in $R$ partendo da $i$}) \cdot \mathbb{P}(\text{partiamo da $i$})$$

# Intuitivamente ha senso: se da uno stato magari ci mettiamo pochi passi per entrare nella classe ricorrente $R$, ma quella configurazione iniziale è molto rara da ottenere, allora è giusto che il suo contributo venga scalato rispetto agli altri.

# Comunque, tornando al discorso, per calcolare queste probabilità serve invocare la distribuzione Multinomiale, dove diciamo che ${\bf{X}}=(X_1,\ldots,X_n) \sim \text{Mult}(m,(p_1,\ldots,p_n))$ se ${\bf{X}}$ modella lo scenario in cui, ripetendo un certo esperimento aleatorio per $m$ volte, sono risultate $X_i$ occorrenze di ciascun evento $i$, il quale aveva probabilità $p_i$ di verificarsi[^4]. 

# Questa distribuzione fa precisamente al caso nostro: come $m$ esperimenti aleatori abbiamo le assegnazioni di ciascuna delle $m$ palline a una qualunque delle $n$ ciotole, scelta in modo casuale e con equiprobabilità. Quindi tutte le $p_i$ per $i=1,\ldots,n$ saranno uguali a $\frac{1}{n}$. La probabilità di ottenere una certa configurazione $\bf{X}=\bf{x}$ sarà quindi data dalla densità Multinomiale: $$p_{\bf{X}}({\bf x}) = \mathbb{P}({\bf X}={\bf x}) = \frac{m!}{x_1!\cdots x_n!}\prod_{i=1}^n p_i^{x_i}$$

# Questa probabilità va però poi aggiustata contando per le simmetrie. Nel nostro caso, infatti, uno stato del tipo $00k0$ (rappresentato con la seconda formulazione) sarebbe equivalente a $k000$, $0k00$, e $000k$, dato che sono tutti simmetrici rispetto alla disposizione circolare delle ciotole. L'aggiustamento consiste quindi nel moltiplicare quella probabilità "base" per il numero di occorrenze che tale configurazione presenta. 
# Consideriamo ad esempio lo stato $0002$, dove abbiamo $n=4$ ciotole e $m=2$ palline. Questo stato può manifestarsi in 4 possibili casi (come appena spiegato, sciogliendo la simmetria circolare), quindi la probabilità di ottenere tala configurazione è pari a $$p(0002) = 4\cdot\frac{2!}{0!0!0!2!} \left(\frac{1}{4}\right)^0\left(\frac{1}{4}\right)^0\left(\frac{1}{4}\right)^0 \left(\frac{1}{4}\right)^2 = \frac{1}{4}$$

# [^3]: Tecnicamente, si può dire anche esplodere o disintegrare! molto più divertenti.
# [^4]: Come vincoli, abbiamo da chiedere che $\sum p_i=1$ (qualcosa deve sempre verificarsi) e $\sum X_i = m$ (le occorrenze di ciascun evento devono ammontare al totale di esperimenti condotti).

# ### Finalmente un po' di codice
# Le funzioni qui di seguito si occupano di generare le variabili finora introdotte. Di ogni funzione propongo anche alcuni esempietti di esecuzione, con l'opzione `verbose` attiva, in modo da facilitarne la comprensione. 

## generate all possible states of where balls can be located in the bowls
function get_all_states(n::Int, m::Int; verbose=false)
	if n == 1
		return [[m]]
	end
	ret = []
	for i in 0:m # loop balls' assignments from 0 to m
		if verbose @show i end
		## fill the n-1 left spots with the remaining m-i balls 
		tmp = get_all_states(n-1, m-i, verbose=false)
		for t in tmp
			if verbose println("\tt=$t") end
			push!(t, i)
			push!(ret, t)
		end
	end
	return ret
end
get_all_states(3,2,verbose=true)
#-
## reduce states to their minimal representation, ie accounting for simmetries
function min_state(best::Vector; verbose=false)
    tmp = copy(best)
    rtmp = reverse(copy(best))
	if verbose @show tmp,rtmp,best end
    for i in 1:length(best)
        tmp = circshift(tmp, 1)
        if tmp < best
            best = copy(tmp)
        end
        rtmp = circshift(rtmp, 1)
        if rtmp < best
            best = copy(rtmp)
        end
		if verbose @show tmp,rtmp,best end
    end
    return best
end
min_state([1,2,0,0,1],verbose=true)'
#-
## compute initial probabilities for the states
function get_states(bowls::Int, balls::Int; verbose=false)
	allStates = get_all_states(bowls, balls)
	multiStates = OrderedDict{Vector{Real},Int}()
	states = Vector{Vector{Int64}}()
	for s in allStates
		min_s = min_state(s)
		multiStates[min_s] = get(multiStates, min_s, 0) + 1
		if !(min_s in states)
			push!(states, min_s)
		end
	end
	if verbose
		for (key, val) in multiStates
			println("stato: ", key, " => # ocorrenze: ", val)
		end
	end
	prob = factorial(balls) / (bowls ^ balls)
	if verbose 
		@show states
		@show prob
	end
	init_probs = Float64[]
	for x in states
		if verbose print(x) end
		p = multiStates[x] * prob
		for y in x
			p *= 1 / factorial(y)
		end
		if verbose print(" -> p: $p") end
		push!(init_probs, p)
		if verbose println() end
	end
	return states, init_probs
end
states, probs = get_states(5,3,verbose=true);
#-
## check if a state is absorbing
function is_absorbing(state::Vector)
	return sum(state .== 0) == length(state)-1 
end

states, probs = get_states(4,2)
for st in states
	println(st, " -> is_absorbing? ", is_absorbing(st))
end
#-
# Ecco quindi un esempietto riassuntivo finale:
begin
	bowls = 4
	balls = 3
	println("Working with $bowls bowls and $balls balls.")
	println("All states and minimal representations:")
	for v in get_all_states(bowls,balls)
		println(v," => ", min_state(v))
	end
	println("Initial probabilities:")
	states, init_probs = get_states(bowls, balls,verbose=false)
	for i in 1:length(states)
		println(states[i], " => ", init_probs[i])
	end
end
#-

# ### Assembliamo la soluzione
# Ora che disponiamo di alcuni degli elementi fondamentali per modellare il problema, possiamo audacemente proseguire verso il sistema lineare che ci condurrà effettivamente alla sua soluzione. Dopo aver definito alcune variabili di supporto e di contesto, tra cui in particolare gli stati e il vettore delle probabilità iniziali,

nbowls = 4; nballs = 5
## definiamo gli stati e le probabilità iniziali
states, p₀ = get_states(nbowls, nballs) 
## salviamo l'indice di ogni stato, per accederci con 1, 2, ecc nella matrice P
states_dict = Dict(state => i for (i, state) in enumerate(states))
nstates = length(states);

# occorre ora costruire la matrice $P$. Per farlo, l'idea è che possiamo iterare sugli stati e guardare in quali altri stati possiamo arrivare seguendo i possibili modi in cui le palline possono spostarsi.

P = zeros(nstates, nstates)
for st in states
	if !is_absorbing(st)
		for i in 1:nbowls
			if st[i] > 0
				## where can the current ball move?

				## can move with direction -1
				st_new_m1 = copy(st) 
				st_new_m1[i] -= 1; st_new_m1[mod1(i-1,nbowls)] +=1 # move by -1
				st_new_m1 = min_state(st_new_m1) # retrieve minimal configuration
				## or with direction 1
				st_new_p1 = copy(st)
				st_new_p1[i] -= 1; st_new_p1[mod1(i+1,nbowls)] +=1 # move by +1
				st_new_p1 = min_state(st_new_p1) # retrieve minimal configuration

				## update P matrix entries
				P[states_dict[st],states_dict[st_new_m1]] += st[i]
				P[states_dict[st],states_dict[st_new_p1]] += st[i]
			end
		end
	else
		## if state is absorbing can only go to itself
		P[states_dict[st],states_dict[st]] = 1
	end
end
## normalize the matrix by dividing each value by the sum of its row values
Int.(P) ## prima 
#-
for i in 1:size(P)[1]
	P[i,:] = P[i,:]/sum(P[i,:]) 
end
P ## dopo
#-
# Diventa anche molto bello plottare il grafo che mostra le possibili transizioni tra gli stati della catena di Markov, dove giustamente osserviamo che esiste un solo stato assorbente (l'unico ad avere come unica freccia una freccia verso sé stesso).
## https://docs.juliaplots.org/stable/generated/graph_attributes/#graph_attributes
graphplot(P, 
	names=join.(states),
	nodesize = 0.2,
	curvature_scalar=0.1,
	node_shape=:circle,
	## edge_label = P,
	## edgelabel_offset = 0,
	fontsize = 4,
	self_edge_size = 0.12,
	method=:circular,
	axis_buffer=0.2)
savefig(joinpath(@OUTPUT, "mc_graph_real.svg")); # hide

# \fig{mc_graph_real.svg}

#-
# Una volta creata $P$, dobbiamo capire come usarla per risolvere il problema. Possiamo intanto osservare la struttura di $P$ (o in generale di una qualunque matrice di transizione per una catena di Markov che presenta stati assorbenti). La struttura di $P$ è infatti $$ P =\begin{pmatrix} I & O\\ R &  Q\end{pmatrix}$$
# dove
# - $I$ è la matrice identità, corrispondente alle transizioni degli stati assorbenti verso sé stessi
# - $O$ è una matrice piena di zeri, perché dagli stati assorbenti non ci si può spostare a quelli transienti
# - $Q$ è la matrice che descrive come da uno stato transiente ci si può spostare in un altro transiente
# - $R$ è la matrice che descrive come da uno stato transiente ci si può spostare in uno assorbente
# Noto solo ora che non ho mai chiarito cosa si intende precisamente con stati assorbenti o transienti. Forse perché supponevo che dal nome fosse tutto sommato intuibile, ma in effetti un po' di teoria anche qui non guasta. Parliamo di stati ricorrenti quando la catena di Markov ci passerà di sicuro un numero infinito di volte, da cui il nome ricorrenti: continuiamo a visitarli, ne siamo proprio affezionati. Uno stato è invece transiente se non è ricorrente, cioè se quindi,  nel lungo termine, smetteremo di visitarlo. Uno stato assorbente è la massima espressione di uno stato ricorrente in quanto, una volta entrati in uno stato assorbente, non possiamo più abbandonarlo, ne veniamo infatti "assorbiti". 

# Tornando alla struttura di $P$, con la logica del nostro codice esisterà un solo stato assorbente, e si troverà sempre in posizione 1. Di conseguenza, gli indici `2:end` definiranno la matrice $Q$. 

# Questa matrice $Q$ serve, e siamo quasi arrivati alla fine, per risolvere il sistema dei "mean hitting time". L'obiettivo era infatti di trovare $k_i^R=\mathbb{E}_i(H_R)$, ovvero il tempo (o equivalentemente, il numero di passi) medio necessario per entrare nella classe $R$ degli stati ricorrenti, partendo da un qualunque stato $i$. Nel nostro caso, in realtà, la classe $R$ è formata dall'unico stato assorbente, e quindi ricorrente, in cui le palline sono tutte riunite assieme nella stessa ciotola (in simboli, la configurazione $00\ldots 00m$). Si può ricavare che
# $$ \begin{cases} k_i^R = 0 & i\in R\\ k_i^R = 1+\sum_{j\notin R}p_{ij}k_j^R & i\notin R \end{cases} $$

# Trascurando, in generale, gli stati ricorrenti (nel nostro caso, di nuovo, sarebbe trascurare un solo stato) che non danno contributo, essendo che per loro $k_i^R=0$, possiamo considerare la sola seconda equazione e vederla in forma vettoriale ${\bf{k}} = {\bf{1}} + Q\bf{k}$, da cui si ricava il sistema $(I-Q)\bf{k} = \bf{1}$, che possiamo risolvere in julia in modo classico con l'operatore backslash `\ `, altrimenti usando metodi più sofisticati dal pacchetto `IterativeSolvers`.

## https://en.wikipedia.org/wiki/Absorbing_Markov_chain
Q = P[2:end,2:end]
if size(Q)[1] > 1 # c'è davvero un sistema da risolvere
	k = (I(nstates-1)-Q)\ones(nstates-1) # metodo classico
	## k = bicgstabl(I(nstates-1)-Q, ones(nstates-1)) # biconjugate gradient method, per esempio
else
	k = [1/(I(nstates-1)-Q)[1]]
end


# Una volta trovato $\bf{k}$ possiamo combinarlo con il vettore $\bf{p_0}$ delle probabilità iniziali per trovare la soluzione finale. Data la formulazione del problema, infatti, possiamo dire che 
# $$\mathbb{E}(\text{#passi per entrare in $R$}) = \sum_{i\in S} k_i^R \cdot \mathbb{P}(\text{partire da $i$})={\bf{k}}^T{\bf{p_0}}$$ da cui ricaviamo

slz = dot(k,p₀[2:end])

# che corrisponde alla soluzione esatta 6875/24:
6875/24


# ### Tutto insieme
# Infine, riuniamo qui all'interno di un'unica funzione ordinata tutti i passaggi finora esposti. Possiamo anche effettuare qualche piccola ottimizzazione, per esempio definendo la matrice $P$ come sparsa, grazie alle strutture importate con `SparseArrays`, in modo da potenzialmente diminuire il consumo di memoria, dato che in effetti la matrice $P$ di transizione sarà spesso vuota, essendo che non tutti gli stati conducono a tutti gli stati.

function F(nbowls, nballs; verbose=false, plot_graph=false)
	if verbose println("Deriving states and initial probabilities") end
	states, p₀ = get_states(nbowls, nballs) 
	states_dict = Dict(state => i for (i, state) in enumerate(states))
	nstates = length(states)
	P = spzeros(nstates, nstates)
	if verbose println("Assembling transition matrix") end
	for st in states
		if !is_absorbing(st)
			for i in 1:nbowls
				if st[i] > 0
					## where can the current ball move?
					## can move with direction -1
					st_new_m1 = copy(st) 
					st_new_m1[i] -= 1; st_new_m1[mod1(i-1,nbowls)] +=1 # move by -1
					st_new_m1 = min_state(st_new_m1) # retrieve minimal configuration
					## or with direction 1
					st_new_p1 = copy(st)
					st_new_p1[i] -= 1; st_new_p1[mod1(i+1,nbowls)] +=1 # move by +1
					st_new_p1 = min_state(st_new_p1) # retrieve minimal configuration
					## update P matrix entries
					P[states_dict[st],states_dict[st_new_m1]] += st[i]
					P[states_dict[st],states_dict[st_new_p1]] += st[i]
				end
			end
		else
			P[states_dict[st],states_dict[st]] = 1
		end
	end
	## normalize the matrix by dividing each value by the sum of its row values
	for i in 1:size(P)[1]
		P[i,:] = P[i,:]/sum(P[i,:]) 
	end
	if verbose
		println("Let's have a view of the sparsity of P")
		## with pure text output:
		## show(stdout,"text/plain",P)
		## SparseArrays._show_with_braille_patterns(stdout, P)
		## with a real plot:
		spy(P)
		savefig(joinpath(@OUTPUT, "P_sparsity.svg")); # hide
	end
	if plot_graph
		println("Plotting MC graph")
		graphplot(P, 
		names=join.(states),
		nodesize = 0.2,
		curvature_scalar=0.1,
		node_shape=:circle,
		## edge_label = P,
		## edgelabel_offset = 0,
		fontsize = 4,
		self_edge_size = 0.12,
		method=:circular,
		axis_buffer=0.2)
		savefig("mc_graph_$(nbowls)_$(nballs).svg"); # hide
	end
	Q = P[2:end,2:end]
	if verbose println("Solving the linear system") end
	if size(Q)[1] > 1
		k = (I(nstates-1)-Q)\ones(nstates-1)
	else
		k = [1/(I(nstates-1)-Q)[1]]
	end
	slz = dot(k,p₀[2:end])
	if verbose println("done!") end
	return slz
end
F(12,6,verbose=true,plot_graph=false)
#- 
# \fig{P_sparsity.svg}

function G(N,M)
	S = 0
	for n in 2:N, m in 2:M
		println("(n,m)=($n,$m)")
		@time S += F(n,m)
		println("")
	end
	println("done!")
	return S
end

G(4,5) # giusto un esempio
#-
6277/12 # la soluzione esatta per G(4,5)