+++
title = "Progetti"
hasmath = true
+++

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


# Progetti
Ecco una presentazione dei progetti svolti durante gli anni dell'università (tranne uno per ora, quello sull'ottimizzazione dell'assegnazione dei campi del grest, che forse andrebbe spostato nella sezione [Attività](/activity)). \
Per una loro esposzione più elegante magari passate anche dalla pagina [Portfolio](/portfolio/).



## Bayesian project
<!-- ✨[Here](/assets/figures/visualize.html)✨ there is a dashboard to display all the relevant plots that we produced to better develop our analysis and interpretation. The task was to cluster spatio-temporal data about air pollution in Lombardy, using Bayesian models. -->

✨[Qui](/assets/figures/visualize.html)✨ c'è la dashboard che abbiamo creato per mostrare tutti i plot rilevanti che abbiamo prodotto nella nostra analisi e che meglio permettono di interpretarne i risultati. L'obiettivo del progetto era di clusterizzare dati spazio-temporali riguardo all'inquinamento dell'aria in Lombardia, usando modelli bayesiani.

{{pdf /assets/uni/bayesian_report_polimi.pdf }}

## Quality data analysis project
<!-- In this projoect we had to detect defects into 3d printed objects, using control charts, the method we learnt at lectures. We also had a big part of image analysis to develop the meaningful variables to then monitor in order to detect defects. In the end our model detected 7 out of the 9 defected objects, on a total of 40 objects. -->

In questo progetto abbiamo dovuto rilevare difetti in oggetti stampati in 3d, utilizzando grafici di controllo, ovvero il metodo imparato a lezione. Una considerevole parte del progetto è stata anche quella di analisi delle immagini, per estrarre le variabili più rilevanti da monitorare per rilevare i difetti. Alla fine, il nostro modello ha rilevato 7 tra i 9 oggetti che presentavano difetti, da un campione totale di 40 oggetti. 

{{pdf /assets/uni/qda_report.pdf }}

## Applied statistic project
<!-- In this project we had to develop a statistical analysis on a topic at our choice. We studied the PISA dataset, which contains measurements about students in european high school, with the goal of inferring results about their wealth and well-being. -->

In questo progetto abbiamo sviluppato un'analisi statistica su un tema a nostra scelta. Abbiamo studiato il PISA dataset, che comprende dati riguardo agli studenti delle scuole medie in Europa, con l'obiettivo di indagare il loro benessere fisico e psicologico.

{{pdf /assets/uni/A0_poster_Applied_Statistics_CYMK.pdf }}

## Prime pagine laureati
In occasione delle feste di laurea avute finora mi sono divertito a scrivere queste finte prime pagine di giornale che annunciassero la lieta novella. Il tutto è creato in modo simpatico e possibilmente divertente, come si può leggere nei vari articoletti, ma comunque verosimile se consideriamo la scelta di un giornale locale, i rimandi alle pagine successive, la pubblicità accanto al titolo, la data e il prezzo, ecc. L'idea era poi di stampare e incorniciare questa prima pagina e consegnarla al laureato in modo che la conservasse come si farebbe con un vero e prezioso ritaglio di giornale.

{{ pdf /assets/lavoro/Finte_prime_pagine_laurea.pdf }}

## Gioco del 15 generalizato
Al primo anno, quarto laboratorio di informatica, dovevamo implementare il gioco del 15 in C, quello con la griglia 4 per 4, una casella vuota, e i numeri all'interno da riordinare. Però, già che c'ero, l'ho implementato in dimensione generica N per N, e quindi anzichè "gioco del 15" si è esteso in "gioco dell'$(N^2-1)$", di cui segue il codice. Tale codice è scritto in C quando ero al primo anno e ai primi mesi, quindi è molto disordinato e poco efficiente, ma ✨[qui](/assets/uni/15_game.html)✨ potete trovare una versione equivalente (e giocabile!) in html e javascript.


Importante notare che la board non può essere inizializzata con numeri in ordine casuale, altrimenti si potrebbe arrivare a configurazioni non risolvibili, per esempio questa
\nonumber{$$
\begin{bmatrix}
1 & 2 & 3\\
4 & 5 & 6\\
\bf{8} & \bf{7} & \square
 % 8 & 7 & \square
\end{bmatrix}
$$}
<!-- $\{1\,2\,3;\,4\,5\,6;\,8\,7\;\square \}$,  -->
dove l'8 e il 7 non possono essere invertiti. Perciò, per inizializzarla, e per regolare la difficoltà del gioco, il codice parte da una board risolta e su quella applica per un po' di volte delle mosse casuali, per disordinare la sequenza di numeri preservando la possibilità di risolvere il gioco.
<!-- "risoluzionabilità". -->
<!-- "risolutibilezza".  -->
<!-- "fattibiltà".  -->


\input{c}{/_assets/scripts/gioco_15.c}



## Assegnazione non conflittuale di squadre ed arbitri
Il nostro grest, o campo estivo, dell'oratorio gestiva i bambini delle elementari e medie dividendoli in 8 squadre, definite da delle bandane colorate. Anche i ragazzi più grandi, delle superiori, erano distribuiti all'interno delle squadre, ma lavoravano come animatori. Quindi i bambini giocavano e partecipavano alle varie attività, mentre gli animatori in parte li accompagnavano ed in parte organizzavano proprio quelle varie attività. 
<!-- Ovviamente le squadre erano utili affinché ogni gioco e attività contribuisse ad una classifica generale, per quindi indurre i bambini a impegnarsi e divertirsi con una vera e coinvolgente motivazione. -->

Nella mia lunga carriera da animatore ho scalato le dure gerarchie di potere fino a diventare Referente, cioè moralmente capo degli arbitri. Il mio lavoro, insieme ai miei compagni, era quindi di organizzare i giochi da fare ogni giorno (come pallabollata, bandierina, ecc, o inventarne di nuovi), definire materialmente i campi, cioè proprio tracciarli in qualche modo per terra, assegnare arbitri ed accompagnatori, decidere quali squadre far scontrare in ogni turno, ecc. \
E qui nasceva un interessante problema.

\fig{/assets/img/giolab_cut2.jpg}

In ogni campo, dove si sfidavano coppie di squadre, c'erano due arbitri, ovvero due animatori, per supervisionare lo svolgimento del gioco in quel campo. Gli animatori però appartenevano anch'essi a delle squadre, e quindi sarebbe stato ingiusto far giocare, per esempio, la squadra rossa in un campo in cui c'era un arbitro dei rossi. Le coppie di squadre da far scontrare in una partita le calcolavo in base alla classifica generale e all'andamento dei vari round, e in quanto referente era poi mio dovere cercare di organizzare queste assegnazioni ai campi opportuni, in modo da evitare conflitti sulle decisioni arbitrali. In questo modo ho quindi pensato ad un piccolo algoritmo che risolvesse il problema.

La sua esecuzione si faceva tranquillamente sul foglio di carta che avevo per tenere traccia del gioco, ma [qui](/assets/uni/campi_grest.html) c'è una versione interattiva che ne dimostra l'esecuzione. L'idea era di ricavare le disponibilità nei campi ("Disponibilità (debug table)" nella pagina linkata), e poi trovare un percorso di assegnazione che li coprisse tutti.


## Quoridor
[Quoridor](https://it.wikipedia.org/wiki/Quoridor) è un giochino che ho trovato molto interessante, ma purtroppo non ancora molto diffuso. La sua piacevolezza secondo me sta nell'essere un gioco dalle regole molto semplici, ma che si complica molto nella scelta delle strategie. Un po' tipo scacchi ma senza le troppe complicazioni dell'avere molti pezzi in gioco e del perdere quasi sempre se non ha un minimo studiato (per esempio le aperture). 

L'idea è che ogni giocatore ha una pedina che deve arrivare dall'altro lato della scacchiera di gioco, e può posizionare lungo il cammino dei separatori, dei muri, che possono o agevolare il suo percorso o ostacolare quello dell'avversario (oviamente lasciandogli sempre però una via per arrivare al suo obiettivo, ovvero l'avversario non può essere "intrappolato"). Quindi occorre valutare bene quando muoversi, quando posizionare invece un muro, e dove posizionarlo, se nel frattempo metterne altri che saranno utili a lungo termine per mosse future, ecc.

Ebbene, io e il mio caro amico Ettore, anche lui abbastanza smanettone, ci siamo messi a crearlo con l'obiettivo poi di implementare magari anche delle AI (intelligenze artificiali) da sfidare. Per ora è un work in progress, e [qui](https://github.com/ettoremodina/Quoridor-competition) trovate tutto il codice. Lui ha preferito scrivere il gioco in C++ mentre io in Julia, naturalmente. Le regole sono state implementate, quindi il gioco è giocabile, ma implementare delle AI sembra molto complicato perché oltre a scegliere come muovere la pedina c'è anche la scelta di dove piazzare un muro, e in che orientamento, quindi ci sono molte varianti di decisioni a cui pensare. Quindi per ora c'è solo `rand_AI` che gioca mosse casuali, e `target_AI` che invece si muove verso il lato della vittoria nel modo più veloce possibile (quindi moralmente è un metodo greedy).

<!-- \fig{/assets/uni/quoridor.png} -->

<!-- Per esempio nella posizione che segue sarà sicuramente il giocatore 2 a vincere, perché si è creato moralmente un corridoio verso la vittoria, costringendo nel frattempo il giocatore 1 ad un giro più largo per arrivare invece alla sua vittoria (dato che sul lato destro ha la strada sbarrata). Da notare che carino anche il plot con la heatmap delle celle e della lunghezza del cammino minimo per arrivarci. -->

Questo è un piccolo esempio di come appare il gioco nella mia versione in Julia, c'è la scacchiera di gioco, in cui ci si muove con i tasti intorno ad S (per esempio W vuol dire andare verso nord, C verso sud-est, ecc), con indicate le coordinate delle righe e colonne per scegliere dove piazzare i muri. Sotto c'è una piccola heatmap della distanza di un giocatore dalla riga di vittoria, che servirà presumibilmente per sviluppare le varie AI.

\fig{/assets/uni/quoridor_game.png}

<!-- Il giocatore 1 ostacola strenuamente gli ultimi passi dell'avversario, ma alla fine non può fare altro che soccombere al suo destino. -->

<!-- \fig{/assets/uni/quoridor_end.png} -->

{{ addcomments }}