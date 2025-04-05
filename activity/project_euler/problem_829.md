+++
title = "P829"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_828/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_830/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Integral Fusion</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th February 2023, 07:00 pm; Solved by 220;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=829">Problem 829</a></h3></div>
<div class="problem_content" role="problem">
<p>Given any integer $n \gt 1$ a <dfn>binary factor tree</dfn> $T(n)$ is defined to be:</p>
<ul>
<li>A tree with the single node $n$ when $n$ is prime.</li>
<li>A binary tree that has root node $n$, left subtree $T(a)$ and right subtree $T(b)$, when $n$ is not prime. Here $a$ and $b$ are positive integers such that $n = ab$, $a\le b$ and $b-a$ is the smallest.</li>
</ul>
<p>For example $T(20)$:</p>
<img src="https://projecteuler.net/resources/images/0829_example1.jpg?1678992055" alt="0829_example1.jpg">

<p>We define $M(n)$ to be the smallest number that has a factor tree identical in shape to the factor tree for $n!!$, the <b>double factorial</b> of $n$.</p>

<p>For example, consider $9!! = 9\times 7\times 5\times 3\times 1 = 945$. The factor tree for $945$ is shown below together with the factor tree for $72$ which is the smallest number that has a factor tree of the same shape. Hence $M(9) = 72$.</p>
<img src="https://projecteuler.net/resources/images/0829_example2.jpg?1678992055" alt="0829_example2.jpg">

<p>Find $\displaystyle\sum_{n=2}^{31} M(n)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
