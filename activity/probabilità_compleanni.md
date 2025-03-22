+++
title = "Paradosso dei compleanni"
hascode = true
hasplotly = true
+++

## Paradosso dei compleanni
Considerate un gruppo di $n$ persone. Qual è la probabilità che ce ne siamo almeno due che abbiano lo stesso compleanno? E la probabilità che ce ne sia almeno una che abbia _il vostro_ stesso compleanno?

{{ youtube https://youtu.be/u9nr7_sGnm4 }}

## Soluzione

<!-- % $$
\begin{align*}
\mathbb{P}(\text{in un gruppo di $n$ persone almeno due hanno lo stesso compleanno}) &= 1-\frac{365!}{(365-n)!365^n}\\
\mathbb{P}(\text{in un gruppo di $n$ persone almeno un'altra ha \textit{il tuo} stesso compleanno}) &= 1-\left(\frac{364}{365}\right)^n
\end{align*}
$$
 -->

La richiesta è di studiare le probabilità di due eventi differenti, che corrispondono ai seguenti risultati:
$$
\label{prob-compl}
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
Questo problema è noto come "paradosso dei compleanni" perché per la prima probabilità si arriva al 50% già con solo 23 persone, che in effetti sembrano molte poche. L'idea, qui riassunta ma ampiamente trattata nel video, è quindi di capire intanto come si ricavano quei valori, e poi come come interpretarli, per sciogliere il dubbio della loro apparente controintuitività (se esiste come termine).

Riguardo al primo, studiare l'evento "almeno due persone condividano il compleanno" è complicato, perché il chiedere "almeno due" comprende molti casi: esattamente due, esattamente tre, esattamente quattro, ecc. Per semplificare il calcolo, l'idea è di passare a studiare l'evento complementare di quello indicato, ovvero ricavare la probabilità che a noi interessa come 1 meno la probabilità che nessuna persona condivida il compleanno con nessun'altra. Questo secondo evento corrisponde al caso di avere $n$ persone che abbiano tutte il compleanno in giorni diversi. La probabilità che questo accada la si può trovare col metodo che si impara fin dalle elementari di casi favorevoli diviso casi totali, dove 

- i casi totali sono i modi in cui $n$ persone possono compiere i loro anni: ogni persona può essere nata un giorno qualunque dei 365 dell'anno, e quindi abbiamo 365 scelte possibili da ripetere per $n$ persone, quindi $365^n$;
- i casi favorevoli sono i modi in cui gli $n$ compleanni si dispongono tutti su giorni diversi: la prima persona ha "scelta libera", e quindi 365 possibili giorni; la seconda vogliamo che compia il compleanno in un giorno diverso dalla prima, e quindi le avanzano 364 scelte; alla terza persona avanzerebbero 363 scelte per evitare di sovrapporre il suo compleanno con quello delle altre due, e così via. Il pattern che risulta è $365\cdot 364\cdots (365-n+1)$.

Possiamo quindi assemblare ora tutto e, sistemando un attimo i calcoli, si arriva alla forma riportata in \eqref{prob-compl}.

La seconda probabilità si calcola con un ragionamento simile, e in questo caso con il passaggio al complementare dobbiamo calcolare 1 meno la probabilità che "nessuna persona abbia il mio stesso compleanno". Questo equivale a trovare la probabilità che tutte le persone abbiano un compleanno diverso dal mio, quindi avremo che
- i casi totali sono ancora i modi in cui tutti gli $n$ compleanni possono disporsi, e quindi $365^n$;
- i casi favorevoli ora diventano $364^n$, perché fissato il nostro compleanno in un giorno $x$, vogliamo che tutte le altre $n$ persone compiano gli anni in un giorno diverso, e affinché ciò accada ogni persona deve compiere gli anni in uno giorno qualunque dei 364 rimanenti (ovvero 365 meno il nostro giorno $x$).

E quindi ancora, assemblando tutto, si arriva a $1-(364/365)^n$.

---

Nel caso della prima probabilità si raggiunge davvero l'1, ovvero la certezza che si realizzi l'evento, solo con 366 persone, naturalmente, per il [principio della piccionaia](https://it.wikipedia.org/wiki/Principio_dei_cassetti). Solo in questo modo, infatti, avremo che di sicuro le date di compleanno di almeno due persone andranno a coincidere. I valori di "uno" prima del caso $n=366$, presenti nel plot che ora segue, sono quindi solo dovuti ad approssimazioni del grafico (che non riporta tutti i decimali) che diventano poi approssimazioni numeriche (in cui cioè i calcoli saturano la precisione disponibile per la rappresentazione dei numeri decimali in un computer) da 295 persone in poi. 

Uno scorcio dei valori precisi calcolati dal codice sarebbe quindi il seguente:
```
⋮
# qui il grafico smette di riportare sufficienti decimali
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
# qui proprio il codice satura la precisione numerica disponibile
n=295: 1.0
⋮
```
Riporto infine il codice che genera i plot finali dell'andamento delle due probabilità.

\input{julia}{/assets/scripts/paradosso_compleanni.jl} 
\fig{/assets/scripts/output/paradosso_compleanni_1.json}
\fig{/assets/scripts/output/paradosso_compleanni_2.json}


{{ addcomments }}