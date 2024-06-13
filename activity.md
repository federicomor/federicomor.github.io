+++
title = "Attività"
hascode = true
hasplotly = true
+++

@def hasplotly = true

# Attività
\toc

## Esempi
<!-- ### Julia and Pluto notebook
[here](/assets/notebooks_int.html) Some work did in Julia and interactively displayed using Pluto and plotly.\\
 -->

~~~
<div id="tester" style="width:600px;height:350px;"></div>

<script>
    TESTER = document.getElementById('tester');
    Plotly.newPlot( TESTER, [{
    x: [1, 2, 3, 4, 5],
    y: [1, 2, 4, 8, 16] }], {
    margin: { t: 0 } } );
</script>
~~~

### Paradosso dei Compleanni
\input{julia}{/_assets/scripts/Activity/paradosso_compleanni.jl} 
\fig{/_assets/scripts/Activity/figs/paradosso_compleanni_1.json}
\fig{/_assets/scripts/Activity/figs/paradosso_compleanni_2.json}


### Tennis Tie-Break Probability
\input{julia}{/_assets/scripts/Activity/tennis_tiebreak_prob.jl} 
\fig{/_assets/scripts/Activity/figs/tennis_surface.json}
\fig{/_assets/scripts/Activity/figs/tennis_contourf.json}


### Strategia Ottimale per Appuntamenti
\input{julia}{/_assets/scripts/Activity/date_strategy.jl} 
\fig{/_assets/scripts/Activity/figs/date_strategy.json}
\output{/_assets/scripts/date_strategy.jl}


### Traffic Problem
\input{julia}{/_assets/scripts/Activity/traffic_problem.jl} 
\fig{/_assets/scripts/Activity/traffic_problem.svg}
\output{/_assets/scripts/traffic_problem.jl}

<!-- ~~~
<div id="tester" style="width:600px;height:350px;"></div>

<script>
    TESTER = document.getElementById('tester');
    Plotly.newPlot( TESTER, [{
    x: [1, 2, 3, 4, 5],
    y: [1, 2, 4, 8, 16] }], {
    margin: { t: 0 } } );
</script>
~~~ -->
