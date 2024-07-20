+++
title = "Attività"
hascode = true
hasplotly = true
+++

# Attività
L'idea è che ad ogni articoletto di "divulgazione matematica" dovrebbe essere associato un video che lo racconta/analizza/risolve in dettaglio. Se non c'è ancora è perché devo ancora registrarlo :)

\toc
~~~
  <div id="toc-container">
  <div id="toc">
~~~
\toc
~~~
  </div>
  </div>
  <button id="toc-button">//</button>
  
  <script>
  document.addEventListener('DOMContentLoaded', function() {
  const tocButton = document.getElementById('toc-button');
  const tocContainer = document.getElementById('toc-container');
  
  tocButton.addEventListener('click', () => {
    tocContainer.classList.toggle('visible');
    });
  });
  </script>
~~~

## Esempi

### Ipercubi in N Dimensioni
Finché si lavora con quadrati o cubi è tutto molto easy, possiamo anche disegnarli per studiarli e per capire, ad esempio, quanti vertici, lati e facce abbiano. Salendo di dimensione occorre invece arrivarci per vie traverse, e qui vediamo come ci si può arrivare sfruttando anche un po' di calcolo combinatorio.

{{ youtube https://youtu.be/NjdqSz4iva0 }}

Per chi vuole il riassuntino comodo, queste sarebbero le conclusioni a cui si arriva. Detto $N$ il numero di dimensioni in cui lavoriamo (quindi considerando un $N$-cubo), abbiamo che
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
\input{julia}{/assets/scripts/Activity/paradosso_compleanni.jl} 
\fig{/assets/scripts/Activity/output/paradosso_compleanni_1.json}
\fig{/assets/scripts/Activity/output/paradosso_compleanni_2.json}


### Tennis Tie-Break Probability
{{ youtube https://youtu.be/ra9LTkehYk4 }}
\input{julia}{/assets/scripts/Activity/tennis_tiebreak_prob.jl} 
\fig{/assets/scripts/Activity/output/tennis_surface.json}
\fig{/assets/scripts/Activity/output/tennis_contourf.json}


### Strategia Ottimale per Appuntamenti
\input{julia}{/assets/scripts/Activity/date_strategy.jl} 
\fig{/assets/scripts/Activity/output/date_strategy.json}
\output{/assets/scripts/date_strategy.jl}

{{ desmos https://www.desmos.com/calculator/7xjua3xllw }}

### Traffic Problem
\input{julia}{/assets/scripts/Activity/traffic_problem.jl} 
\fig{/assets/scripts/Activity/traffic_problem.svg}
\output{/assets/scripts/traffic_problem.jl}


### Polygon Problem
\input{julia}{/assets/scripts/Activity/polygon_problem.jl} 
\fig{/assets/scripts/Activity/traffic_3.svg}
\fig{/assets/scripts/Activity/traffic_5.svg}
\fig{/assets/scripts/Activity/traffic_10.svg}
