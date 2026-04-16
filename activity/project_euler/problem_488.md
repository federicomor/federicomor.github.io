+++
title = "P488"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_487/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_489/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Unbalanced Nim</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th November 2014, 01:00 am; Solved by 273;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=488">Problem 488</a></h3></div>
<div class="problem_content" role="problem">
<p>Alice and Bob have enjoyed playing <strong>Nim</strong> every day. However, they finally got bored of playing ordinary three-heap Nim.<br>
So, they added an extra rule:</p>

<p>- Must not make two heaps of the same size.</p>

<p>The triple $(a, b, c)$ indicates the size of three heaps.<br>
Under this extra rule, $(2,4,5)$ is one of the losing positions for the next player.</p>

<p>To illustrate:<br>
- Alice moves to $(2,4,3)$<br>
- Bob   moves to $(0,4,3)$<br>
- Alice moves to $(0,2,3)$<br>
- Bob   moves to $(0,2,1)$</p>

<p>Unlike ordinary three-heap Nim, $(0,1,2)$ and its permutations are the end states of this game.</p>

<p>For an integer $N$, we define $F(N)$ as the sum of $a + b + c$ for all the losing positions for the next player, with $0 \lt a \lt b \lt c \lt N$.</p>

<p>For example, $F(8) = 42$, because there are $4$ losing positions for the next player, $(1,3,5)$, $(1,4,6)$, $(2,3,6)$ and $(2,4,5)$.<br>
We can also verify that $F(128) = 496062$.</p>

<p>Find the last $9$ digits of $F(10^{18})$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
