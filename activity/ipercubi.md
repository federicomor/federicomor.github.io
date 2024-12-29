+++
title = "Ipercubi in N dimensioni"
hascode = true
hasplotly = true
+++

### Ipercubi in $N$ dimensioni
{{ youtube https://youtu.be/NjdqSz4iva0 }}

Come si calcolano le caratteristiche geometriche (vertici, lati, facce) degli (iper)cubi in dimensioni $N$ generiche? 

Infatti finché lavoriamo con quadrati (quindi in 2d) o cubi (in 3d) è tutto molto tranquillo, basta disegnarli e osservarli e per capire quanti vertici, lati e facce abbiano. Invece, salendo di dimensione non possiamo più disegnarli, o quantomeno farlo in un modo intuibile e comprensibile, e quindi occorre arrivarci per vie traverse, sfruttando anche un po' di calcolo combinatorio.

### Soluzione
Per i vertici basta sfruttare l'idea che salendo di dimensioni il vecchio cubo viene traslato lungo il nuovo asse, e quindi i suoi vertici raddoppiano (pensate a come si ottenga un cubo traslando un quadrato lungo l'asse $z$). E quindi si ricava che
$$
\#\text{(vertici)} = 2^{N}
$$

Per i lati e le facce l'idea è invece di caratterizzarli per capire poi come contarli. Per esempio: cosa caratterizza un lato? Potremmo pensare a una coppia qualunque di vertici, ma in realtà no, perché un lato collega vertici che siano adiacenti. Pensare ad un lato come un vertice e una direzione invece funziona, e queste scelte possono essere fatte in $\#\text{(vertici)}\cdot N$ modi (perché possiamo scegliere uno qualunque tra i vertici e una direzione tra le $N$ dello spazio $N$-dimensionale in cui siamo). Occorre però filtrare il fatto che in questo modo staremmo contando due volte ogni lato, e quindi occorre mettere un fratto due per arrivare alla formula finale
$$
\#\text{(lati)} = \dfrac{\#\text{(vertici)}\cdot N}{2}
$$

Per le facce piane si procede in modo simile, pensando a caratterizzarle come la scelta di un vertice e due direzioni. Per le facce generiche di dimensione $k$ (perché per esempio uno può chiedersi da quante facce 5-cubiche è formato un 7-cubo, o domande ancora peggiori), si possono caratterizzare come la scelta di un vertice e di $k$ direzioni da esso uscenti. Correggendo per il numero di volte in cui si sta contando più volte ogni faccia, si arriva anche qui a delle formule
$$
\begin{align*}
\#\text{(facce piane)} &= \dfrac{\#\text{(vertici)}\cdot \binom{N}{2}}{2^2}\\
\#\text{(facce di dimensione $k$)} &= \dfrac{\#\text{(vertici)}\cdot \binom{N}{k}}{2^k} \quad k\in\{3,\ldots,N-1\}
\end{align*}
$$
dove $\binom{N}{k}$ è il coefficiente binomiale di $N$ su $k$, quindi $\frac{N!}{k!(N-k)!}$, che indica in quanti modi possiamo scegliere $k$ elementi distinti da un gruppo di $N$ elementi.
