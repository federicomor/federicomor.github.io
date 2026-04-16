+++
title = "P716"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_715/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_717/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Grid Graphs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th May 2020, 11:00 am; Solved by 255;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=716">Problem 716</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider a directed graph made from an orthogonal lattice of $H\times W$ nodes. 
The edges are the horizontal and vertical connections between adjacent nodes.
$W$ vertical directed lines are drawn and all the edges on these lines inherit that direction. Similarly, $H$ horizontal directed lines are drawn and all the edges on these lines inherit that direction.
</p>
<p>
Two nodes, $A$ and $B$ in a directed graph, are <strong>strongly connected</strong> if there is both a path, along the directed edges, from $A$ to $B$ as well as from $B$ to $A$. Note that every node is strongly connected to itself.
</p>
<p>
A <strong>strongly connected component</strong> in a directed graph is a non-empty set $M$ of nodes satisfying the following two properties:
</p>
<ul>
<li>All nodes in $M$ are strongly connected to each other.</li>
<li>$M$ is maximal, in the sense that no node in $M$ is strongly connected to any node outside of $M$.</li>
</ul>
<p>
There are $2^H\times 2^W$ ways of drawing the directed lines. Each way gives a directed graph $\mathcal{G}$. We define $S(\mathcal{G})$ to be the number of strongly connected components in $\mathcal{G}$.
</p>
<p>
The illustration below shows a directed graph with $H=3$ and $W=4$ that consists of four different strongly connected components (indicated by the different colours).
</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0716_gridgraphics.jpg?1678992054" class="dark_img" alt=""></div>
<p>
Define $C(H,W)$ to be the sum of $S(\mathcal{G})$ for all possible graphs on a grid of $H\times W$. You are given $C(3,3) = 408$, $C(3,6) = 4696$ and $C(10,20) \equiv 988971143 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $C(10\,000,20\,000)$ giving your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
