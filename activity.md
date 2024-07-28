+++
title = "Attività"
hascode = true
hasplotly = true
+++

# Attività
L'idea è che ad ogni articoletto di "divulgazione matematica" dovrebbe essere associato un video che lo racconta/analizza/risolve in dettaglio. Se non c'è ancora è perché devo ancora registrarlo :)

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

## Esempi

### Ipercubi in N Dimensioni
Finché si lavora con quadrati o cubi è tutto molto easy, possiamo anche disegnarli per studiarli e per capire, ad esempio, quanti vertici, lati e facce abbiano. Salendo di dimensione occorre invece arrivarci per vie traverse, e qui vediamo come ci si può arrivare sfruttando anche un po' di calcolo combinatorio.

{{ youtube https://youtu.be/NjdqSz4iva0 }}

Queste sarebbero le conclusioni a cui si arriva: detto $N$ il numero di dimensioni in cui lavoriamo (quindi considerando un $N$-cubo), abbiamo che
\nonumber{$$
\begin{align*}
\#\text{(vertici)} &= 2^{N}\\
\#\text{(lati)} &= \dfrac{\#\text{(vertici)}\cdot N}{2}\\
\#\text{(facce piane)} &= \dfrac{\#\text{(vertici)}\cdot \binom{N}{2}}{2^2}\\
\#\text{(facce di dimensione $k$)} &= \dfrac{\#\text{(vertici)}\cdot \binom{N}{k}}{2^k} \quad k\in\{3,\ldots,N-1\}
\end{align*}
$$}
dove le facce piane sono quelle classiche, mentre quelle di dimensioni maggiori hanno senso in dimensioni maggiori. Per esempio uno può chiedersi da quante facce cubiche è formato un 7-cubo. Infine $\binom{N}{k}$ è il coefficiente binomiale di $N$ su $k$, quindi $\frac{N!}{k!(N-k)!}$.

### Paradosso dei Compleanni
{{ youtube https://youtu.be/u9nr7_sGnm4 }}

\nonumber{$$
\begin{align*}
\mathbb{P}(\text{in un gruppo di $n$ persone almeno due abbiano lo stesso compleanno}) &= 1-\frac{365!}{(365-n)!365^n}\\
\mathbb{P}(\text{in un gruppo di $n$ persone almeno un'altra ha il tuo stesso compleanno}) &= 1-\left(\frac{364}{365}\right)^n
\end{align*}
$$}
Questo problema è noto come "paradosso dei compleanni" perché per la prima probabilità si arriva al 50% già con solo 23 persone, che in effetti sembrano molte poche. Nel video è quindi spiegato come ricavare quei valori e anche come interpretarli, per capire perché quel risultato un po' controintuitivo abbia in realtà senso.

Sempre nel caso della prima probabilità si raggiuge davvero l'1 (ovvero la certezza che si realizzi l'evento) ovviamente solo con 366 persone (per il principio della piccionaia, volendo essere precisi, in modo che vengono forzate le date di due persone ad essere uguali). Gli "uno" prima di lui presenti nel plot che ora segue sono quindi solo dovuti ad approssimazioni del grafico (che non riporta tutti i decimali) che diventano poi approssimazioni numeriche (in cui cioè i calcoli saturano la precisione disponibile per Julia) da 295 persone in poi.

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




### Tennis Tie-Break Probability
{{ youtube https://youtu.be/ra9LTkehYk4 }}

Vediamo come calcolare la probabilità di vincere un tiebreak a tennis, quindi una super applicazione della matematica (statistica e probabilità) ad un problema reale.

\input{julia}{/assets/scripts/Activity/tennis_tiebreak_prob.jl} 
\fig{/assets/scripts/Activity/output/tennis_surface.json}
\fig{/assets/scripts/Activity/output/tennis_contourf.json}


### Strategia Ottimale per Appuntamenti
\input{julia}{/assets/scripts/Activity/date_strategy.jl} 
\fig{/assets/scripts/Activity/output/date_strategy.json}
\output{/assets/scripts/date_strategy.jl}

{{ desmos https://www.desmos.com/calculator/7xjua3xllw }}

### Traffic Problem
Si consideri una rete di traffico descritta da un grafo $G = (V, A)$ i cui archi rappresentano le strade di una città e nodi rappresentano gli incroci. I cittadini si spostano ogni giorno da alcune origini verso alcune destinazioni. Sia $d_k$ la quantità di auto che lasciano punto $s_k \in V$ e si spostano verso la destinazione $t_k \in V$. Sia $\text{FFT}_{ij}$ (_free flow time_) il tempo di percorrenza della strada (arco) $(i, j)$ se la strada $(i, j)$ è vuota. Il tempo di viaggio su un arco aumenta però con il flusso crescente su quell'arco, come si osserva nelle autostrade ad agosto. Una soglia di congestione $u_{ij}$ viene quindi definita per ogni arco e non deve essere superata dal traffico lungo quella strada.\
Modellare il problema di assegnazione del traffico alle strade in modo da ridurre al minimo il tempo totale di viaggio.

\input{julia}{/assets/scripts/Activity/traffic_problem.jl} 
\fig{/assets/scripts/Activity/traffic_problem.svg}
\output{/assets/scripts/traffic_problem.jl}


### Polygon Problem
Dato un numero intero positivo $n$, trovare il poligono con $n$ lati con diametro (ovvero la distanza massima tra due vertici) minore o uguale a 1, e di area massima. Applicazione reale: massimizzare l'area delimitata da un recinto imponendo che questo possa essere chiuso in sottorecinti a piacere se necessario, usando staccionate unitarie (ovvero la distanza tra ogni coppia di vertice deve essere ≤1).

\input{julia}{/assets/scripts/Activity/polygon_problem.jl} 
\fig{/assets/scripts/Activity/traffic_3.svg}
\fig{/assets/scripts/Activity/traffic_5.svg}
\fig{/assets/scripts/Activity/traffic_10.svg}
