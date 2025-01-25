+++
title = "P857"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_856/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_858/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Beautiful Graphs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 1st October 2023, 02:00 am; Solved by 181;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=857">Problem 857</a></h3></div>
<div class="problem_content" role="problem">
<p>
A graph is made up of vertices and coloured edges. 
Between every two distinct vertices there must be exactly one of the following:</p>

<ul>
<li>A red directed edge one way, and a blue directed edge the other way</li>
<li>A green undirected edge</li>
<li>A brown undirected edge</li>
</ul>

Such a graph is called <i>beautiful</i> if 

<ul>
<li>A cycle of edges contains a red edge <b>if and only if</b> it also contains a blue edge</li>
<li>No triangle of edges is made up of entirely green or entirely brown edges</li>
</ul>

<p>
Below are four distinct examples of beautiful graphs on three vertices:
</p>
<img src="https://projecteuler.net/resources/images/0857_GoodGraphs.jpg?1692412187" alt="0857_GoodGraphs.jpg">

<p>
Below are four examples of graphs that are not beautiful:</p>
<img src="https://projecteuler.net/resources/images/0857_BadGraphs.jpg?1692412205" alt="0857_BadGraphs.jpg">

<p>
Let $G(n)$ be the number of beautiful graphs on the labelled vertices: $1,2,\ldots,n$.
You are given $G(3)=24$, $G(4)=186$ and $G(15)=12472315010483328$.</p>

<p>
Find $G(10^7)$. Give your answer modulo $10^9+7$.</p>



</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
