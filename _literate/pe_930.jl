# Partiamo caricando tutti gli strumentopoli miseteriosi necessari alla soluzione.
using Random, LinearAlgebra
using DataStructures
using IterativeSolvers
using Plots, GraphRecipes
Random.seed!(29032025);

# Per iniziare ad ambientarci nel contesto del problema, ovvero con il meccanismo di spostamento delle palline nelle ciotole, la condizione di terminazione del gioco, ecc, possiamo implementare una semplice simulazione del gioco stesso, osservando quali possibili scenari possono verificarsi.
######### SIMULATED EXECUTION #########
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
# Con cui possiamo o simulare seriamente il problema per ottenere una stima accurata:
simulate_F(2, 3, num_trials = 10_000) # soluzione esatta: 9/4 = 2.25
#-
# o altrimenti vedere in concreto cosa accade in un'esempio di esecuzione:
simulate_F(2, 3, verbose=true)
#-

# Ma ovviamente questo non ci basta: vogliamo risolvere il problema in modo esatto. Per farlo, l'idea è di affidarci alle catene di Markov. Le catene di Markov hanno infatti come principale scopo nella vita quello di poter modellare un contesto stocastico e dinamico, che è precisamente quello che abbiamo qui: palline disposte inizalmente in modo casuale, che si muovono nelle ciotole sempre seguendo mosse randomiche (riprendo le regole, ad ogni turno una palline viene scelta in modo casuale e si sposta di una ciotola o in senso orario o in senso antiorario).

# Una catena di Markov è caretterizzata da due elementi: lo spazio degli stati $S$, ovvero le configurazioni che può assumere il sistema che stiamo modellando, e la matrice di transizione $P$, le cui componenti $p_{ij}$ descrivono la probabilità che da un certo stato $i$ ci posiamo spostare in un certo stato $j$.

# ### Stati
# In questo problema, una scelta interessante consiste già nel capire come modellare gli stati. Esistono infatti diversi possibili approccci:
# 1. assegnare a ogni pallina un'etichetta corrispondente alla ciotola in cui è contenuta
# 2. assegnare ad ogni ciotola quante palline contiene, pensando alle ciotole come disposte in una fila (quindi esiste la "prima" ciotola, la "seconda" ciotola, ecc) ma mantenendo la configurazione originale del cerchio (quindi dalla ciotola uno possiamo "andare a sinistra" ed entrare nell'ultima ciotola, per intenderci)
# 3. assegnare ad ogni ciotola quante palline contiene, pensando alle ciotole come disposte nel cerchio, quindi contando le simmetrie delle configurazioni derivate dal metodo del punto 2

# Avendo $n$ ciotole ed $m$ palline, ogni caso prevederebbe una diversa numerosità dello spazio degli stati:
# 1. con questa prima formulazione, avremmo che ogni pallina può andare in ciascuna ciotola, quindi avremmo $n$ opzioni per ogni pallina, da cui $n^m$ stati
# 2. con questa seconda formulazione, avremmo che ogni ciotola, disposta in fila, può accogliere da zero a $m$ palline. Pensando di rappresentare ogni pallina come, beh, una pallina, ed ogni ciotola come una barra "|" (in modo che le palline alla sua destra corrispondano a quelle che lei contiene), segue che gli stati totali sono i modi in cui possiamo anagrammare la stringa formata da $m$ palline e $n-1$ ciotole (meno uno perché fissiamo una certa ciotola essere la prima lettera della stringa). Quindi ci sarebbero $$\frac{(m+n-1)!}{m!(n-1)!}={ m+n-1 \choose m}$$ stati (è il "classico" problema delle stelline e sbarrette)
# 3. con questa terza formulazione, più complicata perché contiamo come una sola configurazione, per via delle simmetrie, configurazioni precedentemente diverse, il numero degli stati diminuisce ulteriormente. Si potrà di certo trovare una formula che conti esattamente gli stati in funzione di $n$ ed $m$, ma la mia natura ingegneristica si è accontentata di aver raggiunto questo stato ottimale ed ha quindi proseguito col ragionamento

# Quest'ultima rappresentazione è quindi quella ottimale perché all'aumentare del numero di ciotole e palline, il terzo metodo permette di limitare la numerosità degli stati, mantenendo quindi il problema più agilmente risolvibile su un computer. Per esempio, con 12 ciotole e 6 palline, il primo metodo prevederebbe $12^6=2985984$ stati, il secondo avrebbe 12376, il terzo 561. E siccome in seguito vedremo che ci sarà da risolvere un sistema, meglio avere sistemi con 561 variabili rispetto a 2985984!

# ### Probabilità iniziali
# Una volta ottenuti gli stati, dobbiamo calcolare le probabilità che la configurazione iniziale delle palline nelle ciotole sia esattamente un certo stato piuttosto che un altro. Questo servirà perché per trovare il tempo medio necessario ad entrare nella classe ricorrente dovremmo espandere (tecnicamente, si può dire anche esplodere o disintegrare!) il calcolo su tutti i possibili stati da cui possiamo partire. Ovvero, moralmente dobbiamo pesare i contributi portati da ciascuno stato per la probabilità di partire in effetti da quello stato: 
# $$ \mathbb{E}(\text{# passi per entrare in $R$}) =  \sum_{i \in S} \mathbb{E}(\text{# passi per entrare in $R$ partendo da $i$}) \cdot \mathbb{P}(\text{partiamo da $i$})$$

# Intuitivamente ha senso: se da uno stato magari ci mettiamo pochi passi per entrare nella classe ricorrente $R$, ma quella configurazione iniziale è molto rara da ottenere, allora è giusto che il suo contributo venga scalato rispetto agli altri.

# Comunque, tornando ai calcoli, per farlo serve invocare la distribuzione Multinomiale, dove diciamo che ${\bf{X}}=(X_1,\ldots,X_n) \sim \text{Mult}(m,(p_1,\ldots,p_n))$ se ${\bf{X}}$ modella lo scenario in cui, ripetendo un certo esperimento aleatorio per $m$ volte, sono risultate $X_i$ occorrenze dell'evento $i$, che aveva probabilità $p_i$ di verificarsi. Quindi, come vincoli, abbiamo che $\sum p_i=1$ (qualcosa deve verificarsi) e $\sum X_i = m$ (il totale delle occorrenze dovrà corrispondere al totale degli esperimenti condotti).


# ### Finalmente un po' di codice
# Le funzioni qui di seguito si occupano quindi di generare gli stati per la catena di Markov, di cui ne propongo alcuni esempietti di esecuzione con l'opzione `verbose` attiva, in modo da facilitarne la comprensione. 

## generate all possible states of where balls can be located in the bowls
function get_all_states(m::Int, n::Int; verbose=false)
	if m == 1
		return [[n]]
	end
	ret = []
	for i in 0:n
		if verbose @show i end
		tmp = get_all_states(m - 1, n - i, verbose=false)
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
		if verbose @show multiStates end
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
states, probs = get_states(5,2,verbose=true);
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
# Finalmente arriviamo alla fase finale della soluzione

######### ACTUAL SOLVER #########
#= Steps:
1. enumerate the states, maybe divide between transient and recurrent/absorbing
2. build the transition matrix by counting the possible moves from each state, and then normalizing
3. solve the system for the absorbing time
4. print the answer
=#

nbowls = 4; nballs = 5
## definiamo gli stati e le probabilità iniziali
states, p₀ = get_states(nbowls, nballs) 
## salviamo l'indice di ogni stato, per accederci con 1, 2, ecc nella matrice P
states_dict = Dict(state => i for (i, state) in enumerate(states))
nstates = length(states)

## definiamo e popoliamo P
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
		P[states_dict[st],states_dict[st]] = 1
	end
end
## normalize the matrix by dividing each value by the sum of its row values
P
#-
for i in 1:size(P)[1]
	P[i,:] = P[i,:]/sum(P[i,:]) 
end
P
#-

## https://docs.juliaplots.org/stable/generated/graph_attributes/#graph_attributes
graphplot(P, 
	names=join.(states),
	nodesize = 0.2,
	curvature_scalar=0.1,
	node_shape=:circle,
	## edge_label = P,
	edgelabel_offset = 0,
	fontsize = 4,
	self_edge_size = 0.12,
	method=:circular,
	axis_buffer=0.2)
savefig(joinpath(@OUTPUT, "mc_graph_.svg")); # hide

# \fig{mc_graph_.svg}

#-
## https://en.wikipedia.org/wiki/Absorbing_Markov_chain
# La struttura di $P$ è $P = [I \,\,0; R\,\, Q]$ dove
# - $I$ è la matrice identità, corrispondente alle transizioni degli stati assorbenti verso sé stessi
# - $0$ è un vettore di zeri perché dagli stati assorbenti non si può spostarsi a quelli transienti
# - $Q$ è la matrice che descrive come da uno stato transiente ci si può spostare in un altro transiente
# - $R$ è la matrice che descrive come da uno stato transiente ci si può spostare in uno assorbente

# Con la logica di questo codice, ovvero con questa rappresentazione minimale degli stati, esisterà un solo stato assorbente, e si troverà in posizione 1. Di conseguenza, gli indici `2:end` definiranno la matrice Q.

# Questa matrice Q serve per risolvere il sistema dei "mean hitting time". L'obiettivo è infatti di trovare $k_i^R=\mathbb{E}_i(H_R)$, ovvero il tempo (o equivalentemente, il numero di passi) medio necessario per entrare nella classe $R$ degli stati ricorrenti, partendo da un qualunque stato $i$. Si può ricavare che
# $$ \begin{cases} k_i^R = 0 & i\in R\\ k_i^R = 1+\sum_{j\notin R}p_{ij}k_j^R & i\notin R \end{cases} $$

# Trascurando gli stati ricorrenti che non danno contributo (essendo che per loro $k_i^R=0$) possiamo considerare la sola seconda equazione e vederla in forma vettoriale ${\bf{k}} = {\bf{1}} + Q\bf{k}$, da cui si ricava il sistema $(I-Q)\bf{k} = \bf{1}$. 
# Questo possiamo risolverlo in modo classico in julia con l'operatore backslash `\\`, altrimenti usando metodi più sofisticati dal pacchetto `IterativeSolvers`.

Q = P[2:end,2:end]
## k = (I(nstates-1)-Q)\ones(nstates-1) # metodo classico
k = bicgstabl(I(nstates-1)-Q, ones(nstates-1))

# e una volta trovato $\bf{k}$ possiamo combinarlo con il vettore $\bf{p_0}$ delle probabilità iniziali per trovare la soluzione finale. Data la formulazione del problema, infatti, possiamo dire che 
# $$\mathbb{E}(\text{#passi per entrare in $R$}) = \sum_i k_i^R \cdot \mathbb{P}(\text{partire da $i$})={\bf{k}}^T{\bf{p_0}}$$

slz = dot(k,p₀[2:end])

# che corrisponde alla soluzione esatta 6875/24:
6875/24