+++
title = "Ipercubi in N dimensioni"
hascode = true
hasplotly = true
+++

### Ipercubi in $N$ dimensioni
{{ youtube https://youtu.be/NjdqSz4iva0 }}

Come si calcolano le caratteristiche geometriche, ovvero vertici, lati, e facce, degli (iper)cubi in dimensioni $N$ generiche? 

Infatti finché lavoriamo con quadrati (quindi in 2d) o cubi (in 3d) è tutto molto tranquillo, basta disegnarli e osservarli e per capire quanti vertici, lati e facce abbiano. Invece, salendo di dimensione non possiamo più disegnarli, o quantomeno farlo in un modo intuibile e comprensibile, e quindi occorre arrivarci per vie traverse, sfruttando anche un po' di calcolo combinatorio.

### Soluzione
Per i vertici basta sfruttare l'idea che salendo di dimensioni il vecchio cubo viene traslato lungo il nuovo asse, e quindi i suoi vertici raddoppiano (pensate a come si ottenga un cubo traslando un quadrato lungo l'asse $z$). E quindi studiando un po' il pattern si ricava che
$$
\#\text{(vertici)} = 2^{N}
$$
Ora che ci penso, questo  risultato può anche essere trovato pensando a dove posizione i vertici dell'ipercubo nello spazio cartesiano. Per esempio, il cubo in 3d ha vertici nei punti $(0,0,0)$, $(1,0,0)$, $(1,1,0)$, $(1,0,1)$, ecc, quindi tutti i vertici devono riempire le tre coordinate $x$, $y$, $z$ dello spazio in cui ci troviamo. Per farlo, abbiamo tanti modi (e quindi tanti vertici) quanti i modi in cui ogni coordinata può essere impostata a 0 oppure a 1. In $N=3$ dimensioni abbiamo quindi 3 slot $\_\; \_\; \_$ ciascuno dei quali ha 2 scelte possibili (metterci 0 o 1), e quindi avremo $\text{2 scelte}\cdot \text{2 scelte}\cdot \text{2 scelte}$. In generale, $2^N$ scelte e quindi $2^N$ vertici.

Per i lati e le facce l'idea è invece di caratterizzarli per capire poi come contarli. Per esempio: cosa caratterizza un lato? Potremmo pensare che un lato è univocamente determinato da una coppia di vertici, ma in realtà non proprio, perché un lato collega solo i vertici che siano adiacenti, non vertici qualunque. Pensare ad un lato come un vertice e una direzione invece funziona, e queste scelte possono essere fatte in $2^N\cdot N$ modi (perché possiamo scegliere uno qualunque tra i $2^N$ vertici presenti e una direzione tra le $N$ dello spazio $N$-dimensionale in cui siamo). Occorre però filtrare il fatto che in questo modo staremmo contando due volte ogni lato, e quindi occorre mettere un fratto due per arrivare alla formula finale
$$
\#\text{(lati)} = \dfrac{2^N N}{2}
$$

Per le facce piane si procede in modo simile, pensando a caratterizzarle come la scelta di un vertice e due direzioni. Per le facce generiche di dimensione $k$ (perché per esempio uno può chiedersi da quante facce 5-cubiche è formato un 7-cubo, o domande ancora peggiori), si possono caratterizzare come la scelta di un vertice e di $k$ direzioni da esso uscenti. Correggendo per il numero di volte in cui si sta contando più volte ogni faccia, si arriva anche qui a delle formule
$$
\begin{align*}
\#\text{(facce piane)} &= \dfrac{2^N \binom{N}{2}}{2^2} = 2^{N-2} \binom{N}{2}\\
% \#\text{(facce di dimensione $k$)} &= \dfrac{2^N \binom{N}{k}}{2^k}=2^{N-k} \binom{N}{k} \quad k\in\{3,\ldots,N-1\}\\
\#\begin{pmatrix}
\text{facce di dimensione $k$}\\\text{per $k\in\{3,\ldots,N-1\}$} 
\end{pmatrix} &= \dfrac{2^N \binom{N}{k}}{2^k}=2^{N-k} \binom{N}{k}
\end{align*}
$$
dove $\binom{N}{k}=\frac{N!}{k!(N-k)!}$ è il coefficiente binomiale di $N$ su $k$, che indica in quanti modi possiamo scegliere $k$ elementi distinti da un gruppo di $N$ elementi.

{{ addcomments }}