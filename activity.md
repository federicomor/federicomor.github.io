+++
title = "Attività"
hascode = true
hasplotly = true
+++

<!-- @def hasplotly = true -->
@def showall = true

# Attività
\toc

## Esempi
<!-- ### Julia and Pluto notebook
[here](/assets/notebooks_int.html) Some work did in Julia and interactively displayed using Pluto and plotly.\\
 -->

### Paradosso dei Compleanni
\input{julia}{/assets/scripts/Activity/paradosso_compleanni.jl} 
\fig{/assets/scripts/Activity/output/paradosso_compleanni_1.json}
\fig{/assets/scripts/Activity/output/paradosso_compleanni_2.json}
\fig{test_code}
<!-- \fig{test_output} -->
<!-- \fig{test_activity} -->

<!-- manually: -->
<!-- ~~~
<div id="paradosso_compleanni_1" style=""></div>
<script>
graphDiv = document.getElementById("paradosso_compleanni_1");
plotlyPromise = PlotlyJS_json(graphDiv, '/assets/scripts/Activity/output/paradosso_compleanni_1.json');
</script>
~~~

~~~
<div id="paradosso_compleanni_2" style=""></div>
<script>
graphDiv = document.getElementById("paradosso_compleanni_2");
plotlyPromise = PlotlyJS_json(graphDiv, '/assets/scripts/Activity/output/paradosso_compleanni_2.json');
</script>
~~~ -->

### Tennis Tie-Break Probability
\input{julia}{/assets/scripts/Activity/tennis_tiebreak_prob.jl} 
\fig{/assets/scripts/Activity/output/tennis_surface.json}
\fig{/assets/scripts/Activity/output/tennis_contourf.json}


### Strategia Ottimale per Appuntamenti
\input{julia}{/assets/scripts/Activity/date_strategy.jl} 
\fig{/assets/scripts/Activity/output/date_strategy.json}
\output{/assets/scripts/date_strategy.jl}


### Traffic Problem
\input{julia}{/assets/scripts/Activity/traffic_problem.jl} 
\fig{/assets/scripts/Activity/traffic_problem.svg}
\output{/assets/scripts/traffic_problem.jl}


