+++
title = "Paradosso dei compleanni"
hascode = true
hasplotly = true
+++

### Paradosso dei compleanni
{{ youtube https://youtu.be/u9nr7_sGnm4 }}

Considerate un gruppo di $n$ persone. Qual è la probabilità che ce ne siamo almeno due che abbiano lo stesso compleanno? E la probabilità che ce ne sia almeno una che abbia _il vostro_ stesso compleanno?

### Soluzione

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
\input{julia}{/assets/scripts/paradosso_compleanni.jl} 
\fig{/assets/scripts/output/paradosso_compleanni_1.json}
\fig{/assets/scripts/output/paradosso_compleanni_2.json}


{{ addcomments }}