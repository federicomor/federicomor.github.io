+++
title = "P872"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_871/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_873/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Recursive Tree</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 13th January 2024, 10:00 pm; Solved by 1156;<br>Difficulty rating: 5%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=872">Problem 872</a></h3></div>
<div class="problem_content" role="problem">
<p>A sequence of rooted trees $T_n$ is constructed such that $T_n$ has $n$ nodes numbered $1$ to $n$.</p>

<p>The sequence starts at $T_1$, a tree with a single node as a root with the number $1$.</p>

<p>For $n &gt; 1$, $T_n$ is constructed from $T_{n-1}$ using the following procedure:
</p><ol>
<li>Trace a path from the root of $T_{n-1}$ to a leaf by following the largest-numbered child at each node.</li>
<li>Remove all edges along the traced path, disconnecting all nodes along it from their parents.</li>
<li>Connect all orphaned nodes directly to a new node numbered $n$, which becomes the root of $T_n$.</li>
</ol>


<p>For example, the following figure shows $T_6$ and $T_7$. The path traced through $T_6$ during the construction of $T_7$ is coloured red.</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0872_tree.png?1703839264" alt="0872_tree.png"></div>


<p>Let $f(n, k)$ be the sum of the node numbers along the path connecting the root of $T_n$ to the node $k$, including the root and the node $k$. For example, $f(6, 1) = 6 + 5 + 1 = 12$ and $f(10, 3) = 29$.</p>

<p>Find $f(10^{17}, 9^{17})$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
