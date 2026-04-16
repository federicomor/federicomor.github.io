+++
title = "P690"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_689/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="javascript:void(0)" onclick="getRandomProblem()" style="color: black; text-decoration: none;" title="random problem">🎲 </a>
<script>
  function getRandomProblem() {
    fetch('/activity/project_euler/data.txt') 
      .then(response => response.text())
      .then(data => {
        const maxProblems = parseInt(data.trim(), 10);
        const randomProblemNumber = Math.floor(Math.random() * maxProblems) + 1;
        window.location = '/activity/project_euler/problem_' + randomProblemNumber + '/';
      })
      .catch(err => console.error('Error fetching max problems:', err));
  }
</script>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_691/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</div>
~~~

~~~
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_main.1735430422.css">
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_default.1627113674.css">
<script src="https://projecteuler.net/js/mathjax_config.js"></script>
<script src="https://cdnjs.cloudflare.com/polyfill/v3/polyfill.min.js?version=4.8.0&features=es6"></script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
<div id="content">

<div class="center print"><img src="https://projecteuler.net/images/clipart/print_page_logo.png" alt="projecteuler.net"></div>
<h2>Tom and Jerry</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 24th November 2019, 07:00 am; Solved by 241;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=690">Problem 690</a></h3></div>
<div class="problem_content" role="problem">
<p>
Tom (the cat) and Jerry (the mouse) are playing on a simple graph $G$.
</p>
<p>
Every vertex of $G$ is a mousehole, and every edge of $G$ is a tunnel connecting two mouseholes.
</p>
<p>
Originally, Jerry is hiding in one of the mouseholes.<br>
Every morning, Tom can check one (and only one) of the mouseholes. If Jerry happens to be hiding there then Tom catches Jerry and the game is over.<br>
Every evening, if the game continues, Jerry moves to a mousehole which is adjacent (i.e. connected by a tunnel, if there is one available) to his current hiding place. The next morning Tom checks again and the game continues like this.
</p>
<p>
Let us call a graph $G$ a <dfn>Tom graph</dfn>, if our super-smart Tom, who knows the configuration of the graph but does not know the location of Jerry, can <i>guarantee</i> to catch Jerry in finitely many days.
For example consider all graphs on 3 nodes:
</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0690_graphs.jpg?1678992054" alt="Graphs on 3 nodes">
</div>
<p>
For graphs 1 and 2, Tom will catch Jerry in at most three days. For graph 3 Tom can check the middle connection on two consecutive days and hence guarantee to catch Jerry in at most two days. These three graphs are therefore Tom Graphs. However, graph 4 is not a Tom Graph because the game could potentially continue forever.
</p>
<p>
Let $T(n)$ be the number of different Tom graphs with $n$ vertices. Two graphs are considered the same if there is a bijection $f$ between their vertices, such that $(v,w)$ is an edge if and only if $(f(v),f(w))$ is an edge.
</p>
<p>
We have $T(3) = 3$, $T(7) = 37$, $T(10) = 328$ and $T(20) = 1416269$.
</p>
<p>
Find $T(2019)$ giving your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
