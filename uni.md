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
[Here](/assets/figures/visualize.html) there is a dashboard to display all the relevant plots that we produced to better develop our analysis and interpretation. The task was to cluster spatio-temporal data about air pollution in Lombardy, using bayesian models.

{{pdf /assets/Uni/bayesian_report_polimi.pdf }}

### Quality data analysis project
We had to detect defects into 3d printed objects, using control charts, the method we learnt at lectures. In the end our model detected 7 out of the 9 defected objects, on a total of 40 objects.

{{pdf /assets/Uni/qda_report.pdf }}

### Applied statistic project
We had to develop a statistical analysis on a topic at our choice. We studied the PISA dataset, about the evaluations of students in european high school, to derive results about their wealth and well-being.

{{pdf /assets/Uni/A0_poster_Applied_Statistics_CYMK.pdf }}

### Gioco del 15 - generalizato
Al primo anno, quarto laboratorio di informatica, dovevamo implementare il gioco del 15 in C, quello con la griglia 4 per 4, una casella vuota, e i numeri all'interno da riordinare. Però, già che c'ero, l'ho implementato in dimensione generica N per N, e quindi anzichè *gioco del 15* si è esteso in *gioco dell'(N^2-1)*.

Importante notare che la board non può essere inizializzata con numeri in ordine casuale, altrimenti si potrebbe arrivare a configurazioni non risolvibili, per esempio
\nonumber{$$
\begin{bmatrix}
1 & 2 & 3\\
4 & 5 & 6\\
\bf{8} & \bf{7} & \square
 % 8 & 7 & \square
\end{bmatrix}
$$}
<!-- $\{1\,2\,3;\,4\,5\,6;\,8\,7\;\square \}$,  -->
dove l'8 e il 7 non possono essere invertiti. Perciò per inizializzarla, e per regolare la difficoltà del gioco, il codice parte da una board risolta e su quella applica per un po' di volte delle mosse casuali, per disordinare la sequenza preservando la possibilità di risolvere il gioco.
<!-- "risoluzionabilità". -->
<!-- "risolutibilezza".  -->
<!-- "fattibiltà".  -->

Il codice C originale è quello che segue (scritto al primo anno i primi mesi, quindi molto disordinato e poco efficiente), ma [qui](/assets/Uni/15_game.html) potete trovare una versione equivalente (e giocabile!) in html e javascript.

\input{c}{/_assets/scripts/Uni/gioco_15.c}



### Assegnazione non conflittuale di squadre ed arbitri
Il nostro grest (campo estivo) dell'oratorio gestiva i bambini, delle elementari e medie, dividendoli in 8 squadre, definite da delle bandane colorate. Anche i ragazzi più grandi, delle superiori, erano distribuiti all'interno delle squadre, ma lavoravano come animatori. Quindi i bambini giocavano e partecipavano alle varie attività, mentre gli animatori in parte li accompagnavano ed in parte organizzavano proprio quelle varie attività. \
Le squadre erano utili affinché ogni gioco e attività contribuisse ad una classifica generale, per quindi indurre i bambini a impegnarsi e divertirsi con una vera e coinvolgente motivazione.

Nella mia lunga carriera da animatore ho scalato le dure gerarchie di potere fino a diventare Referente, cioè moralmente capo degli arbitri. Il mio lavoro, insieme ai miei compagni, era quindi di organizzare i giochi da fare ogni giorno (come pallabollata, bandierina, ecc, o inventarne di nuovi), definire materialmente i campi, cioè proprio tracciarli in qualche modo per terra, assegnare arbitri ed accompagnatori, decidere quali squadre far scontrare in ogni turno, ecc. \
E qui nasceva un interessante problema.

\fig{/assets/img/giolab_cut2.jpg}

In ogni campo, dove si sfidavano coppie di squadre, c'erano due arbitri, ovvero due animatori, per supervisionare lo svolgimento del gioco in quel campo. Gli animatori però appartenevano anch'essi a delle squadre, e quindi sarebbe stato ingiusto (per la squadra avversaria) far giocare per esempio la squadra rossa in un campo in cui c'era un arbitro dei rossi. Le coppie di squadre da far scontrare in una partita le calcolavo in base all'andamento dei vari round, e in quanto referente era poi mio dovere cercare di organizzare queste assegnazioni ai campi opportuni, in modo da evitare conflitti sulle decisioni arbitrali. In questo modo ho quindi pensato ad un piccolo algoritmo che risolvesse il problema.

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


<!-- ## Corsi e Appunti
Quando sistemerò bene i materiali popolerò anche questa sezione.
 -->
<!--
### Bayesian Statistics (magistrale, anno 2)
Non carico i miei appunti presi sui quaderni ma le "rielaborazioni" che in genere faccio quando studio una materia, dove in pratica condenso insieme varie fonti per rendere gli appunti nella loro versione più chiara, ordinata e studiabile possibile.

{{ pdf /assets/Uni/Appunti_Bayesian.pdf}}

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

La vera chiccca sono anche tutti i commenti in matita, che appunto commentano gli appunti "seri" scritti in penna e permettono di comprendere meglio tutto.
 -->