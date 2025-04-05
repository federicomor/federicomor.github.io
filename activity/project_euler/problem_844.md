+++
title = "P844"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_843/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_845/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>$k$-Markov Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 20th May 2023, 02:00 pm; Solved by 219;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=844">Problem 844</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider positive integer solutions to</p>
<center>$a^2+b^2+c^2 = 3abc$</center>
<p>For example, $(1,5,13)$ is a solution. We define a 3-Markov number to be any part of a solution, so $1$, $5$ and $13$ are all 3-Markov numbers. Adding distinct 3-Markov numbers $\le 10^3$ would give $2797$.</p>

<p>Now we define a $k$-Markov number to be a positive integer that is part of a solution to:</p>
<center>$\displaystyle \sum_{i=1}^{k}x_i^2=k\prod_{i=1}^{k}x_i,\quad x_i\text{ are positive integers}$</center>

<p>Let $M_k(N)$ be the sum of $k$-Markov numbers $\le N$. Hence $M_3(10^{3})=2797$, also $M_8(10^8) = 131493335$.</p>

<p>Define $\displaystyle S(K,N)=\sum_{k=3}^{K}M_k(N)$. You are given $S(4, 10^2)=229$ and $S(10, 10^8)=2383369980$.</p>

<p>Find $S(10^{18}, 10^{18})$. Give your answer modulo $1\,405\,695\,061$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
