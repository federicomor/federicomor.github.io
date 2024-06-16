+++
title = "Uni"
+++


# Uni
\toc

## Progetti


### Bayesian Project
[Here](/assets/figures/visualize.html) there are all the relevant plots we produced to better develop our analysis and interpretation. The task was to cluster spatio-temporal data about air pollution in Lombardy, using bayesian models.

{{pdf /assets/Uni/bayesian_report_polimi.pdf }}


### Quality Data Analysis Project
We had to detect defects into 3d printed objects, using control charts, the method we learnt at lectures. In the end our model detected 7 out of the 9 defected objects, on a total of 40 objects.

{{pdf /assets/Uni/qda_report.pdf }}

### Applied Statistic Project
We had to develop a statistical analysis on a topic at our choice. We studied the PISA dataset, about the evaluations of students in european high school, to derive results about their wealth and well-being.

{{pdf /assets/Uni/A0_poster_Applied_Statistics_CYMK.pdf }}

### Gioco del 15 - Generalizato
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


