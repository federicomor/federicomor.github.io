+++
title = "Uni"
+++

# Uni
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


## Progetti

### Bayesian project
✨[Here](/assets/figures/visualize.html)✨ there is a dashboard to display all the relevant plots that we produced to better develop our analysis and interpretation. The task was to cluster spatio-temporal data about air pollution in Lombardy, using Bayesian models.

✨[Qui](/assets/figures/visualize.html)✨ c'è la dashboard che abbiamo creato per mostrare tutti i plot rilevanti che abbiamo prodotto nella nostra analisi e che meglio permettono di interpretarne i risultati. L'obiettivo del progetto era di clusterizzare dati spazio-temporali riguardo all'inquinamento dell'aria in Lombardia, usando modelli bayesiani.

{{pdf /assets/Uni/bayesian_report_polimi.pdf }}

### Quality data analysis project
In this projoect we had to detect defects into 3d printed objects, using control charts, the method we learnt at lectures. We also had a big part of image analysis to develop the meaningful variables to then monitor in order to detect defects. In the end our model detected 7 out of the 9 defected objects, on a total of 40 objects.

In questo progetto abbiamo dovuto rilevare difetti in oggetti stampati in 3d, utilizzando grafici di controllo, ovvero il metodo imparato a lezione. Una considerevole parte del progetto è stata anche quella di analisi delle immagini, per estrarre le variabili più rilevanti da monitorare per rilevare i difetti. Alla fine, il nostro modello ha rilevato 7 tra i 9 oggetti che presentavano difetti, da un campione totale di 40 oggetti. 

{{pdf /assets/Uni/qda_report.pdf }}

### Applied statistic project
In this project we had to develop a statistical analysis on a topic at our choice. We studied the PISA dataset, which contains measurements about students in european high school, with the goal of inferring results about their wealth and well-being.

In questo progetto abbiamo sviluppato un'analisi statistica su un tema a nostra scelta. Abbiamo studiato il PISA dataset, che comprende dati riguardo agli studenti delle scuole medie in Europa, con l'obiettivo di indagare il loro benessere fisico e psicologico.

{{pdf /assets/Uni/A0_poster_Applied_Statistics_CYMK.pdf }}

### Gioco del 15 generalizato
Al primo anno, quarto laboratorio di informatica, dovevamo implementare il gioco del 15 in C, quello con la griglia 4 per 4, una casella vuota, e i numeri all'interno da riordinare. Però, già che c'ero, l'ho implementato in dimensione generica N per N, e quindi anzichè "gioco del 15" si è esteso in "gioco dell'$(N^2-1)$", di cui segue il codice. Tale codice è scritto in C quando ero al primo anno e ai primi mesi, quindi è molto disordinato e poco efficiente, ma ✨[qui](/assets/Uni/15_game.html)✨ potete trovare una versione equivalente (e giocabile!) in html e javascript.


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



### Assegnazione non conflittuale di squadre ed arbitri
Il nostro grest, o campo estivo, dell'oratorio gestiva i bambini delle elementari e medie dividendoli in 8 squadre, definite da delle bandane colorate. Anche i ragazzi più grandi, delle superiori, erano distribuiti all'interno delle squadre, ma lavoravano come animatori. Quindi i bambini giocavano e partecipavano alle varie attività, mentre gli animatori in parte li accompagnavano ed in parte organizzavano proprio quelle varie attività. 
<!-- Ovviamente le squadre erano utili affinché ogni gioco e attività contribuisse ad una classifica generale, per quindi indurre i bambini a impegnarsi e divertirsi con una vera e coinvolgente motivazione. -->

Nella mia lunga carriera da animatore ho scalato le dure gerarchie di potere fino a diventare Referente, cioè moralmente capo degli arbitri. Il mio lavoro, insieme ai miei compagni, era quindi di organizzare i giochi da fare ogni giorno (come pallabollata, bandierina, ecc, o inventarne di nuovi), definire materialmente i campi, cioè proprio tracciarli in qualche modo per terra, assegnare arbitri ed accompagnatori, decidere quali squadre far scontrare in ogni turno, ecc. \
E qui nasceva un interessante problema.

\fig{/assets/img/giolab_cut2.jpg}

In ogni campo, dove si sfidavano coppie di squadre, c'erano due arbitri, ovvero due animatori, per supervisionare lo svolgimento del gioco in quel campo. Gli animatori però appartenevano anch'essi a delle squadre, e quindi sarebbe stato ingiusto far giocare, per esempio, la squadra rossa in un campo in cui c'era un arbitro dei rossi. Le coppie di squadre da far scontrare in una partita le calcolavo in base alla classifica generale e all'andamento dei vari round, e in quanto referente era poi mio dovere cercare di organizzare queste assegnazioni ai campi opportuni, in modo da evitare conflitti sulle decisioni arbitrali. In questo modo ho quindi pensato ad un piccolo algoritmo che risolvesse il problema.

La sua esecuzione si faceva tranquillamente sul foglio di carta che avevo per tenere traccia del gioco, ma [qui](/assets/Uni/campi_grest.html) c'è una versione interattiva che ne dimostra l'esecuzione. L'idea era di ricavare le disponibilità nei campi ("Disponibilità (debug table)" nella pagina linkata), e poi trovare un percorso di assegnazione che li coprisse tutti.


### Quoridor
[Quoridor](https://it.wikipedia.org/wiki/Quoridor) è un giochino che ho trovato molto interessante, ma purtroppo non ancora molto diffuso. La sua piacevolezza secondo me sta nell'essere un gioco dalle regole molto semplici, ma che si complica molto nella scelta delle strategie. Un po' tipo scacchi ma senza le troppe complicazioni dell'avere molti pezzi in gioco e del perdere quasi sempre se non ha un minimo studiato (per esempio le aperture). 

L'idea è che ogni giocatore ha una pedina che deve arrivare dall'altro lato della scacchiera di gioco, e può posizionare lungo il cammino dei separatori, dei muri, che possono o agevolare il suo percorso o ostacolare quello dell'avversario (oviamente lasciandogli sempre però una via per arrivare al suo obiettivo, ovvero l'avversario non può essere "intrappolato"). Quindi occorre valutare bene quando muoversi, quando posizionare invece un muro, e dove posizionarlo, se nel frattempo metterne altri che saranno utili a lungo termine per mosse future, ecc.

Ebbene, io e il mio caro amico Ettore, anche lui abbastanza smanettone, ci siamo messi a crearlo con l'obiettivo poi di implementare magari anche delle AI (intelligenze artificiali) da sfidare. Per ora è un work in progress. Lui ha preferito scrivere il gioco in C++ mentre io in Julia, naturalmente. Le regole sono state implementate, quindi il gioco è giocabile, ma implementare delle AI sembra molto complicato perché oltre a scegliere come muovere la pedina c'è anche la scelta di dove piazzare un muro, e in che orientamento, quindi ci sono molte varianti di decisioni a cui pensare. Quindi per ora c'è solo `rand_AI` che gioca mosse casuali, e `target_AI` che invece si muove verso il lato della vittoria nel modo più veloce possibile (quindi moralmente è un metodo greedy).

\fig{/assets/Uni/quoridor.png}

Per esempio nella posizione che segue sarà sicuramente il giocatore 2 a vincere, perché si è creato moralmente un corridoio verso la vittoria, costringendo nel frattempo il giocatore 1 ad un giro più largo per arrivare invece alla sua vittoria (dato che sul lato destro ha la strada sbarrata). Da notare che carino anche il plot con la heatmap delle celle e della lunghezza del cammino minimo per arrivarci.

\fig{/assets/Uni/quoridor_game.png}

Il giocatore 1 ostacola strenuamente gli ultimi passi dell'avversario, ma alla fine non può fare altro che soccombere al suo destino.

\fig{/assets/Uni/quoridor_end.png}


## Corsi e Appunti
Quando sistemerò (o anche solo scansionerò) tutti i miei appunti popolerò meglio anche questa sezione. 

A seconda dei casi, e dei corsi, non carico qui i miei appunti effettivi, quelli presi sui quaderni durante le lezioni, ma piuttosto le loro "rielaborazioni" che in genere faccio quando studio una materia. Moralmente queste rielaborazioni condensano insieme varie fonti: gli appunti effettivi visti a lezione, metodi ed esempi visti ad esercitazione, qualcosa tratto da libri o trovato online, ecc; il tutto per arrivare a una forma nella versione più chiara, ordinata e studiabile possibile.\
Se carico invece gli appunti effettivi dei quaderni è perché o per quel corso non ho avuto voglia di riordinare e integrare il materiale, o semplicemente perché per i miei gusti di studio erano già usciti perfettamente nel formato quaderno (per esempio quelli del corso di ARF).


#### BS - Bayesian Statistics
{{ pdf /assets/Uni/Appunti_Bayesian.pdf}}

### OPT - Optimization
<!-- {{ pdf /assets/Uni/Opt_slides.pdf}} -->
{{ pdf /assets/Uni/Opt_riassunti.pdf }}
{{ pdf /assets/Uni/Discrete_Opt.pdf }}
{{ pdf /assets/Uni/Nonlinear_Opt.pdf }}

<!-- 
### SDE (magistrale, anno 1)
(ovvero Stochastic Differential Equations). Esame andato non troppo bene, ma malgrado questo il corso in sé era anche abbastanza interessante, se non fosse per la troppa teoria e dimostrazioni in cui era immerso: praticamente abbiamo visto le equazioni differenziali stocastiche, in teoria il focus del corso, solo l'ultima settimana. All'esame era ammesso portarsi un foglio A4 con scritto quanto ognuno ritenesse utile, e come si può non cogliere l'occasione di ottimizzare tutto quello spazio? Raccoglie nella prima facciata il classico formulario di Probabilità, mentre nella seconda c'è la parte dedicata invece alle nuove cose del calcolo stocastico. 

{{ pdf /assets/Uni/foglio_sde.pdf}}

Qualora poi l'attività di divulgazione matematica diventasse florida la prima idea di prodotto per il merchandising sarà senz'altro un telo mare con sopra stampato questo formulario. 

### Elettronica (triennale, anno 3)

Il formulario per l'esame di Elettronica. Con vari easter egg all'interno.

{{ pdf /assets/Uni/formulario_elettronica_intero.pdf }}

### EDP (triennale, anno 3)

I miei appunti per il corso di Metodi Analitici e Numerici delle EDP (Equazioni Differenziali alle Derivate Parziali). Corso tostissimo, forse il più difficile che abbia affrontato nei vari anni. Ma gli appunti mi sono usciti benissimo, era nel periodo in cui mi sono accorto che scrivere a quadretti alternati era una mera forzatura e convenzione imposta dagli ordini inferiori di educazione scolastica, quindi qui ho iniziato la mia conversione alla scrittura su ogni quadretto (ma ovviamente mantenendo sempre l'ordine, ad esempio limitando a tre il numero di righe consecutive scrivibili prima di una riga vuota di spaziatura).

{{ pdf /assets/Uni/Appunti_EDP.pdf }}

La vera chiccca sono anche tutti i commenti in matita, che appunto commentano gli appunti "seri" scritti in penna e permettono di comprendere meglio tutto. -->
 