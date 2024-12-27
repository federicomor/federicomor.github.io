+++
title = "Attività"
hascode = true
hasplotly = true
+++

# Attività

\toc
~~~
<button id="toc-button">//</button>
  <div id="toc-container">
    <div id="toc">
~~~
\toc
~~~ 
  </div>   
</div>
~~~

L'idea è che ad ogni articoletto di "divulgazione matematica" dovrebbe essere associato un video che lo racconta/analizza/risolve in dettaglio. Se non c'è è perché devo ancora registrarlo :)


## Problemi

### Ipercubi in N dimensioni
{{ youtube https://youtu.be/NjdqSz4iva0 }}

Finché si lavora con quadrati o cubi è tutto molto easy, possiamo anche disegnarli per studiarli e per capire, ad esempio, quanti vertici, lati e facce abbiano. Salendo di dimensione occorre invece arrivarci per vie traverse, e qui vediamo come ci si può arrivare sfruttando anche un po' di calcolo combinatorio.

Queste sarebbero le conclusioni a cui si arriva: detto $N$ il numero di dimensioni in cui lavoriamo (quindi considerando un $N$-cubo), abbiamo che
$$
\begin{align*}
\#\text{(vertici)} &= 2^{N}\\
\#\text{(lati)} &= \dfrac{\#\text{(vertici)}\cdot N}{2}\\
\#\text{(facce piane)} &= \dfrac{\#\text{(vertici)}\cdot \binom{N}{2}}{2^2}\\
\#\text{(facce di dimensione $k$)} &= \dfrac{\#\text{(vertici)}\cdot \binom{N}{k}}{2^k} \quad k\in\{3,\ldots,N-1\}
\end{align*}
$$
dove $\binom{N}{k}$ è il coefficiente binomiale di $N$ su $k$, quindi $\frac{N!}{k!(N-k)!}$. Le facce piane sono quelle classiche, mentre quelle di dimensioni maggiori hanno senso in dimensioni maggiori. Per esempio, uno può chiedersi da quante facce 5-cubiche è formato un 7-cubo, o domande ancora peggiori.

### Paradosso dei compleanni
{{ youtube https://youtu.be/u9nr7_sGnm4 }}

<!-- % $$
\begin{align*}
\mathbb{P}(\text{in un gruppo di $n$ persone almeno due hanno lo stesso compleanno}) &= 1-\frac{365!}{(365-n)!365^n}\\
\mathbb{P}(\text{in un gruppo di $n$ persone almeno un'altra ha \textit{il tuo} stesso compleanno}) &= 1-\left(\frac{364}{365}\right)^n
\end{align*}
$$
 -->
 
$$
\begin{align*}
\mathbb{P}
\begin{pmatrix}
\text{in un gruppo di $n$ persone almeno }\\\text{due hanno lo stesso compleanno} 
\end{pmatrix}&= 1-\frac{365!}{(365-n)!365^n}\\
\mathbb{P}\begin{pmatrix}
\text{in un gruppo di $n$ persone almeno}\\\text{un'altra ha \textit{il tuo} stesso compleanno}
\end{pmatrix}&= 1-\left(\frac{364}{365}\right)^n
\end{align*}
$$
Questo problema è noto come "paradosso dei compleanni" perché per la prima probabilità si arriva al 50% già con solo 23 persone, che in effetti sembrano molte poche. Nel video è quindi spiegato come ricavare quei valori e anche come interpretarli, per capire perché quel risultato un po' controintuitivo abbia in realtà senso.

Sempre nel caso della prima probabilità si raggiuge davvero l'1 (ovvero la certezza che si realizzi l'evento) ovviamente solo con 366 persone (per il principio della piccionaia, volendo essere precisi, in modo che vengono forzate le date di due persone ad essere uguali). Gli "uno" prima di lui presenti nel plot che ora segue sono quindi solo dovuti ad approssimazioni del grafico (che non riporta tutti i decimali) che diventano poi approssimazioni numeriche (in cui cioè i calcoli saturano la precisione disponibile per la rappresentazione dei numeri decimali in un computer) da 295 persone in poi.

Infatti i valori precisi calcolati dal codice sarebbero:
```
⋮
n=80: 0.9999143319493134946903219036781801337436248827650357978945842589451803561427634
n=81: 0.9999331085083680711965527193103598304573509358576306915067301747928120589059932
n=82: 0.9999479529215795403282766363949101146572264815988140175011270401127633554227453
⋮
n=258: 0.9999999999999999999999999999999999999999999999999999998264153107735258302391866
n=259: 0.9999999999999999999999999999999999999999999999999999999491135294596363392755936
n=260: 0.999999999999999999999999999999999999999999999999999999985222011295127265652638
⋮
n=293: 0.9999999999999999999999999999999999999999999999999999999999999999999999999999309
n=294: 0.9999999999999999999999999999999999999999999999999999999999999999999999999999827
n=295: 1.0
⋮
```
\input{julia}{/assets/scripts/Activity/paradosso_compleanni.jl} 
\fig{/assets/scripts/Activity/output/paradosso_compleanni_1.json}
\fig{/assets/scripts/Activity/output/paradosso_compleanni_2.json}




### Tennis tie-break probability

<!-- {{ calcoli /assets/img/tennis.jpg }} -->
{{ youtube https://youtu.be/ra9LTkehYk4 }}

Vediamo come calcolare la probabilità di vincere un tiebreak a tennis, quindi una super applicazione della matematica (statistica e probabilità) ad un problema reale.

\input{julia}{/assets/scripts/Activity/tennis_tiebreak_prob.jl} 
\fig{/assets/scripts/Activity/output/tennis_surface.json}
\fig{/assets/scripts/Activity/output/tennis_contourf.json}



### Strategia ottimale per appuntamenti

Vediamo ora una delle domande più cruciali nella vita sentimentale: _quante persone dovremmo frequentare prima di scegliere quella con cui stabilizzarci per qualcosa di più serio?_

È una domanda difficile, ma la matematica può aiutarci trovando una risposta: il 37%. In pratica, di tutte le persone con cui possibilmente potremmo fissare un appuntamento, dovremmo conoscere ma scartare a priori le prime 37%, dalla nostra "scelta definitiva", e poi continuare gli appuntamenti fino ad accasarci con la prima persona che incontriamo e che valutiamo migliore di quelle viste prima; o altrimenti aspettare l'ultima persona, se questa scelta migliore non si presenta.

Perché è una buona strategia?[^1] Ovviamente non conviene scegliere la prima persona che incontriamo, per quanto possa sembrare promettente, perché qualcuno di meglio potrebbe apparire più tardi. D'altra parte, non vogliamo nemmeno essere troppo esigenti, perché una volta che rifiutiamo qualcuno molto probabilmente non vorrà tornare da noi qualora ci ripensassimo. Ma quindi perché il 37%? L'idea è solo di massimizzare le probabilità.

\fig{/assets/img/date4_cut.jpeg}

Più precisamente: supponiamo di volerci "sistemare" entro un certo periodo. Definiamo $N$ come il numero di partner che stimiamo di poter incontrare in questo periodo, e che quindi costituiscono i nostri candidati moglie/marito. Supponiamo di poter assegnare a ogni partner un punteggio da 1 a $N$ per definire il nostro grado di compatibilità[^2]. In questo gruppo ci sarà anche la nostra anima gemella, _quella giusta_, che chiamiamo $X$ e che avrà quindi il punteggio massimo. Vorremo ora definire una strategia che massimizzi la probabilità di trovarla.

Dato $N$, quindi, vorremo capire come bilanciare il rischio tra "scegliere un partner iniziale magari non perfetto" e "scartare partner che invece col senno di poi valeva la pena scegliere", e quindi vorremo definire $M$ come la soglia di persone che delimita i gruppi _scarto_ vs _ci penso_. La nostra strategia, come sopra anticipato, consiste allora nell'incontrare -- ma scartare -- le prime $M$ persone, in modo solo da farci un'idea della qualità delle proposte, e poi scegliere, tra i partner degli appuntamenti successivi, la prima che è migliore della persona migliore incontrata nel gruppo scartato; o altrimenti l'ultima se non si presenta nessuna con questo requisito. Calcolando l'$M$ ottimale, in funzione di $N$, risulterà che 
$$
M = \frac{N}{e} \approx 0.37 \cdot N
$$
ovvero $M$ deve essere circa il 37% di $N$.

[^1]: "buona strategia" dal punto di vista del risolvere il problema in modo matematico, ma poi naturalmente nelle relazioni umane non ha troppo senso ragionare solo in questi termini razionali. Se per esempio il primo appuntamento ci colpisce non è che dobbiamo rifiutare quel partner solo perché la matematica dice di farlo.

[^2]: l'assegnazione corretta di questi punteggi esiste ma è a noi ignota, ovviamente, perché il punteggio da assegnare a ogni partner lo sapremo esattamente solo una volta fatti tutti gli appuntamenti. Solo una volta conosciuti tutti potremmo allora dire "lei era la migliore" (punteggio $N$), "quest'altra la seconda migliore" (punteggio $N-1$), ecc. Durante il percorso invece possiamo solo fare confronti del tipo "lei era peggiore di quella vista prima", "quest'altra era migliore di tutte le altre viste finora", ecc, ovvero confronti relativi. 

\input{julia}{/assets/scripts/Activity/date_strategy.jl} 
\fig{/assets/scripts/Activity/output/date_strategy.json}
\output{/assets/scripts/date_strategy.jl}

{{ desmos https://www.desmos.com/calculator/7xjua3xllw }}

> Problema ispirato da [https://plus.maths.org/content/mathematical-dating](https://plus.maths.org/content/mathematical-dating).




### Traffic problem
Si consideri una rete di traffico descritta da un grafo $G = (V, A)$ i cui archi rappresentano le strade di una città e nodi rappresentano gli incroci. I cittadini si spostano ogni giorno da alcune origini verso alcune destinazioni. Sia $d_k$ la quantità di auto che lasciano punto $s_k \in V$ e si spostano verso la destinazione $t_k \in V$. Sia $\text{FFT}_{ij}$ (_free flow time_) il tempo di percorrenza della strada (arco) $(i, j)$ se la strada $(i, j)$ è vuota. Il tempo di viaggio su un arco aumenta però naturalmente con il flusso crescente su quell'arco. Una soglia di congestione $u_{ij}$ viene quindi definita per ogni arco e non deve essere superata dal traffico lungo quella strada.\
Modellare il problema di assegnazione del traffico alle strade in modo da ridurre al minimo il tempo totale di viaggio.

\input{julia}{/assets/scripts/Activity/traffic_problem.jl} 
\fig{/assets/scripts/Activity/traffic_problem.svg}
\output{/assets/scripts/traffic_problem.jl}

> Problema tratto dagli esercizi del corso di Optimization al polimi

### Polygon problem
Dato un numero intero positivo $n$, trovare il poligono con $n$ lati con diametro (ovvero la distanza massima tra due vertici) minore o uguale a 1, e di area massima.

Un suo esempio di applicazione reale sarebbe massimizzare l'area delimitata da un recinto, imponendo che questo possa essere chiuso in sottorecinti a piacere se necessario, usando staccionate unitarie (ovvero la distanza tra ogni coppia di vertice deve essere ≤1).

\input{julia}{/assets/scripts/Activity/polygon_problem.jl} 
<!-- \fig{/assets/scripts/Activity/polygon_3.svg} -->
<!-- \fig{/assets/scripts/Activity/polygon_5.svg} -->
\fig{/assets/scripts/Activity/polygon_10.svg}

> Problema tratto dagli esercizi del corso di Optimization al polimi




### Modi per salire una scala
{{ youtube https://www.youtube.com/watch?v=HWJOsKOcUJk }}

In quanti modi si può salire una scala lunga $n$ gradini, potendo salire al massimo 2 scalini per volta? Chiamando $S(n)$ questo numero di modi in funzione di $n$, risulta che la soluzione è data da
$$
S(n) = S(n-1) + S(n-2)
$$
perché moralmente come primo passo dobbiamo sempre fare un passo lungo 1 o lungo 2, indipendentemente da quanto la scala sia alta, e da quei passi poi possiamo osservare di fronte a noi una scala alta $n-1$ ed $n-2$ scalini, rispettivamente, e quindi riciclare i calcoli già fatti prima per le altre scale.

Mentre generalizzando il calcolo, supponendo cioè di avere un altro parametro $k$ che regola quanti scalini risuciamo a salire al massimo con un solo passo, la soluzione diventa
$$
S(n) = S(n-1) + S(n-2) + \ldots + S(n-k)
$$
dove però ora i vari valori $S(n-i)$ si devono trovare in modi a volte meno ovvi. Per capire tutto, insieme ad una semplice idea per convertire il calcolo in codice eseguibile da un computer vi rimando naturalmente al video.

\input{julia}{/assets/scripts/Activity/salendo_le_scale.jl}
\fig{/assets/scripts/Activity/output/scale.json}
<!-- rimuovere i commenti dai codici javascript, sembrano non farli funzionare-->
~~~

<label for="inputN">n:</label>
<input type="number" id="inputN" min="1">
<label for="inputK">k:</label>
<input type="number" id="inputK" min="1">
<button onclick="calculate()">Calcola</button>
<div id="result"></div>
    
<script>
function S(n, k) {
    let dp = Array.from({ length: n + 1 }, () => Array(k + 1).fill(0));
    for (let j = 1; j <= k; j++) {
        dp[1][j] = 1;
    }
    for (let i = 2; i <= n; i++) {
        for (let j = 1; j <= k; j++) {
            if (i < j) {
                dp[i][j] = dp[i][i];
            } else if (i == j) {
                dp[i][j] = dp[i][j - 1] + 1;
            } else {
                dp[i][j] = 0;
                for (let m = 1; m <= j; m++) {
                    dp[i][j] += dp[i - m][j];
                }
            }
        }
    }
    return dp[n][k];
}

function calculate() {
    let n = parseInt(document.getElementById("inputN").value);
    let k = parseInt(document.getElementById("inputK").value);
    let result = S(n, k);
    document.getElementById("result").innerText = `Risultato: ${result}`;
}
</script>

~~~

> Problema ispirato da [https://plus.maths.org/content/its-long-way-top](https://plus.maths.org/content/its-long-way-top).


### Condivisione equa di diversi contributi
Due amiche, Astrid e Beatrice, hanno organizzato un picnic. Per pigrizia hanno però deciso di cucinare un'unica pietanza, il riso freddo, e si sono anche accordate che ognuna preparasse quante porzioni riuscisse e che poi le avrebbero condivise ed eventualmente sistemato i conti alla fine. 

Astrid ha portato con sé 3 porzioni di riso freddo, mentre Beatrice 5. Sono sul punto di pranzare quando'ecco che appare anche Chiara!, un'altra loro amica, che chiede di unirsi a loro per il picnic, pur non avendo portato niente, ma ovviamente promettendo di saldare il conto alla fine. Astrid e Beatrice accolgono quindi volentieri la nuova arrivata. A questo punto, dividono ogni porzione in tre parti uguali (dove supponiamo che ogni parte valga 1€[^3]), generando quindi 9 porzioncine dalle tre porzioni originali di Astrid e 15 dalle cinque di Beatrice, e se le distribuiscono tra loro. Le tre amiche sono molto affamate, e quindi ognuna finisce interamente il riso che le è stato assegnato.

"Gran bella mangiata!" riassume alla fine Chiara, "ma... quanto vi devo? Vediamo: io ho mangiato 8 porzioncine, dalle vostre 3+5 porzioni originali, per quindi un costo di 8€. Di tutto il riso, tu Astrid ne avevi portato i 3/8, mentre Beatrice 5/8, quindi... dovrei dare 3€ ad Astrid e 5€ a Bea, giusto?". "Mi sembra giusto" conferma Astrid. "No invece!" esclama Beatrice, scioccata dall'incompetenza matematica delle sue amiche.

In effetti Beatrice ha ragione. _Ma perché? E quale sarebbe la divisione più corretta?_ 

Il problema può essere esteso in forma generale avendo un picnic con $k$ amiche iniziali, in cui ognuna porta $n_1, \ldots, n_k$ porzioni di riso, che sono poi raggiunte da altre $m$ amiche che non hanno portato nulla, ma che alla fine devono pagare una certa somma alle altre amiche.

> Problema ispirato da [https://plus.maths.org/content/sharing-cakes](https://plus.maths.org/content/sharing-cakes).

[^3]: questa è solo una semplificazione. Si potrebbe fissare, in modo più verosimile, il costo della porzione inziale (intera), e non della sotto-porzione (divisa), ma questo complicherebbe solo i calcoli. Comunque una volta trovata la soluzione si può convertirla in valori "relativi" e quindi si può ripristinare il valore esatto in base al costo vero della porzione di partenza. 


### Triello probabilistico
Tre signori A, B e C hanno fissato un duello a tre armi -- un triello quindi -- per risolvere una disputa. Erano amici da molto tempo, solo quest'ultima lite ha irrimediabilmente rotto ogni rapporto, quindi tutti conoscono le caratteristiche di tutti: si sa che l'accuratezza, ovvero la probabilità di colpire il bersaglio, di A è 0.3, di C è 0.5, mentre B è infallibile, lo centra sempre.

È stato fissato l'ordine di inizio: A, B, poi C. Ognuno, al proprio turno, deve sparare un colpo decidendo come vuole il suo bersaglio, valutando per esempio quale sia la sua strategia ottimale per sopravvivere. Ovviamente, uno viene ucciso se colpito, e quindi non può eseguire il proprio turno di sparo. Il triello finisce quando un solo uomo rimane vivo.

_Se voi foste il signor A, quale strategia utilizzereste?_

\fig{/assets/img/duello_cut.png}


### Testando la resistenza delle uova
Immaginate di essere un allevatore che, incrociando varie razze di gallina, è riuscito ad ottenerne una che depone delle uova particolarmente forti. Volete quindi testare di preciso quanto siano resistenti queste uova, e per farlo decidete di lanciarle dai vari piani di un edificio di 100 piani con l'obiettivo di trovare il piano più alto da cui un uovo può cadere senza rompersi.

Se aveste un solo uovo sapreste subito come fare: prima lanciate l'uovo dal primo piano, se non si rompe passate al secondo, poi al terzo, e così via. Ci vorrebbero, nel caso peggiore, 100 lanci per trovare la soluzione. 

Ma ora supponiamo che voi abbiate 2 uova. _Quale strategia utilizzereste ora per trovare la risposta in modo da minimizzare il caso peggiore del numero di lanci da effettuare?_

Supponete infine di avere $k$ uova. _Quale strategia utilizzereste, in questo caso (sempre per minimizzare il caso peggiore del numero di lanci da effettuare)?_

\fig{/assets/img/gallina2_cut.png}

> Problema ispirato da [https://plus.maths.org/content/dropping-eggs](https://plus.maths.org/content/dropping-eggs).

La funzione che segue (che è stata complicatuccia da scrivere) simula l'esecuzione del lancio di $k$ uova, usando un _jump\_size_ diverso in funzione del numero di uova rimaste. Per esempio, `strat_vector = [14,1]` corrisponde al caso in cui abbiamo 2 uova, e finché ne abbiamo due saltiamo di 14, poi 13, poi 12 piani, mentre quando ci rimane un solo uovo allora facciamo passi alti sempre 1. Mentre `strat_vector = [18,7,1]` corrisponde alla simulazione in cui abbiamo 3 uova, e se ne finché ne abbiamo tre effettuiamo salti alti 18, poi 17, 16, ecc; quando ne abbbiamo due salti alti 7, poi 6, 5, ecc; e infine quando ne abbbiamo solo uno salti alti 1.

```julia
function the_egg_breaks(testing_floor, critical_floor)
    return testing_floor>critical_floor
end

function print_summary(eggs::Integer, floor::Integer, steps::Integer, jump_size::Integer, solution)
    println("jump size = $(rpad(jump_size,2)), ",
            "🏯=$(rpad(string(floor),3)), ",
            "🥚=$(rpad(string(eggs),2)), ",
            "🪜=$(rpad(string(steps),2))")
end

function foundable(solution::Vector, verbose=false)
    if verbose println(join(map(string, solution))); end
    # 2 was the default value
    # 1 is for floors where the egg breaks
    # 0 is for floors where the egg does not break
    return occursin("01",join(map(string, solution))) || 
           join(map(string, solution)) == repeat('0',100)
end

function stratk(divs_strat::Vector, critical_floor::Integer, verbose::Bool)
    solution = 2 .* ones(Int,100)
    eggs = length(divs_strat)
    steps = 0
    strats = reverse(copy(divs_strat))
    previous_floor = 0
    current_floor = strats[end]
    jump_size = strats[eggs]

    while !foundable(solution,verbose) && steps<=100
        interval_focus = findlast(x->x=='2',join(map(string, solution))) - 
                         findfirst(x->x=='2',join(map(string, solution))) + 1
        eggs<1 && return NaN
        jump_size<1 && return NaN
        current_floor<1 && return NaN

        if isnothing(findlast(x->x=='1',join(map(string,solution))))
            max_index = 100
        else
            max_index = findlast(x->x=='1',join(map(string,solution)))-1
        end
        current_floor=min(current_floor,max_index)
    
        if the_egg_breaks(current_floor, critical_floor)
            eggs -= 1
            steps += 1
            solution[current_floor:end] .= 1
            if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
            current_floor = previous_floor +1
            jump_size = eggs>=1 ? strats[eggs] : 1
        else
            solution[1:current_floor] .= 0
            steps += 1
            if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
            if eggs>1 jump_size -= 1 end
            previous_floor = current_floor
            current_floor += jump_size
        end
    end
    return steps
end
```
```julia
julia> stratk([14,1],58,true)
jump size = 14, 🏯=14 , 🥚=2 , 🪜=1
jump size = 13, 🏯=27 , 🥚=2 , 🪜=2
jump size = 12, 🏯=39 , 🥚=2 , 🪜=3
jump size = 11, 🏯=50 , 🥚=2 , 🪜=4
jump size = 10, 🏯=60 , 🥚=1 , 🪜=5
jump size = 1 , 🏯=51 , 🥚=1 , 🪜=6
jump size = 1 , 🏯=52 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=53 , 🥚=1 , 🪜=8
jump size = 1 , 🏯=54 , 🥚=1 , 🪜=9
jump size = 1 , 🏯=55 , 🥚=1 , 🪜=10
jump size = 1 , 🏯=56 , 🥚=1 , 🪜=11
jump size = 1 , 🏯=57 , 🥚=1 , 🪜=12
jump size = 1 , 🏯=58 , 🥚=1 , 🪜=13
jump size = 1 , 🏯=59 , 🥚=0 , 🪜=14
14

julia> stratk([18,7,1],58,true)
jump size = 18, 🏯=18 , 🥚=3 , 🪜=1
jump size = 17, 🏯=35 , 🥚=3 , 🪜=2
jump size = 16, 🏯=51 , 🥚=3 , 🪜=3
jump size = 15, 🏯=66 , 🥚=2 , 🪜=4
jump size = 7 , 🏯=52 , 🥚=2 , 🪜=5
jump size = 6 , 🏯=58 , 🥚=2 , 🪜=6
jump size = 5 , 🏯=63 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=59 , 🥚=0 , 🪜=8
8
```


<!-- \input{julia}{/assets/scripts/Activity/dropping_eggs.jl} -->
\fig{/assets/scripts/Activity/output/dropping_eggs_all.json}


### Babbo Natale e le dismutazioni
Babbo Natale ha ricevuto $n$ letterine dai bambini di tutto il mondo, ciascuna con la lista di regali desiderati. Dopo aver letto attentamente tutte le letterine, e organizzato le spedizioni dei regali, Babbo Natale decide di rispondere personalmente a ciascun bambino, scrivendo un'altra lettera come risposta.

<!-- e perdono traccia delle buste originali contenenti le lettere dei bambini, smarrendo così gli indirizzi esatti dei vari bambini.  -->
<!-- e non sanno più quali erano le buste originali con le lettere dei bambini.  -->
Tuttavia, nella fretta di preparare tutto per le feste, Babbo Natale e i suoi elfi responsabili della logistica si confondono e così, quando sono sul punto di spedire tutto, finiscono per mettere le lettere di risposta nelle varie buste in modo completamente casuale.

_Qual è la probabilità che nessun bambino riceva la lettera di risposta che era destinata a lui?_

\fig{/assets/img/bnatale1_cut.jpg}

<!-- https://it.wikipedia.org/wiki/Dismutazione_(matematica) -->
<!-- https://en.wikipedia.org/wiki/Inclusion%E2%80%93exclusion_principle#In_probability -->


### In cammino verso l'unità
Dato un numero $n$ qualunque, sottraetegli 1 se è dispari, mentre dividetelo per 2 se è pari. _Quanti passi sono necessari per arrivare a 1?_\

Per capire meglio il problema prendete come riferimento gli esempietti che seguono, oppure sperimentate col box interattivo (sempre qui sotto).
```julia
2 → 1 # steps=1
3 → 2 → 1 # steps=2
4 → 2 → 1 # steps=2
5 → 4 → 2 → 1 # steps=3
10 → 5 → 4 → 2 → 1 # steps=4
20 → 10 → 5 → 4 → 2 → 1 # steps=5
30 → 15 → 14 → 7 → 6 → 3 → 2 → 1 # steps=7
```
~~~
<!--     <style>
        #output, #numberInput {
            white-space: pre-wrap;
            font-family: monospace;
            margin-top: 10px;
        }
    </style> -->
  <label for="numberInput">Scegli tu n:</label>
    <input type="number" id="numberInput" min="1">
    <button onclick="showSteps()">calcola passi</button>
    <div id="outputSteps"></div>
    <!-- <div id="outputTot"></div> -->
    <br>

    <script>
        function showSteps() {
            // Get input value
            const inputBox = document.getElementById("numberInput");
            let n = parseInt(inputBox.value);

            if (isNaN(n) || n < 1) {
                document.getElementById("outputSteps").innerText = "Inserisci un numero :)";
                return;
            }

            let steps = 0;
            let result = `${n} `;

            while (n > 1) {
                if (n % 2 === 0) {
                    n = n / 2; // Divide by 2 if even
                } else {
                    n = n - 1; // Subtract 1 if odd
                }
                steps++;
                result += `→ ${n} `;
            }

            <!-- resultTot = `\nPassi totali: ${steps}`; -->
            result  += `\nPassi totali: ${steps}`;
            document.getElementById("outputSteps").innerText = result;
            <!-- document.getElementById("outputTot").innerText = resultTot; -->
        }
    </script>
~~~

Esiste una "formula" generale che dia il numero di passi necessari? Nel senso, simulare questi passaggi (-1 o /2) può diventare dispendioso per numeri molto alti: vorremo quindi trovare un modo che, dato un numero $n$, ci dia una risposta più immediata, senza cioè effettuare questa procedura.

