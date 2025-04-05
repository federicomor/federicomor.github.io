+++
title = "P771"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_770/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_772/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pseudo Geometric Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th November 2021, 01:00 pm; Solved by 135;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=771">Problem 771</a></h3></div>
<div class="problem_content" role="problem">
<p>
We define a <dfn>pseudo-geometric sequence</dfn> to be a finite sequence $a_0, a_1, \dotsc, a_n$ of positive integers, satisfying the following conditions:
</p><ul>
<li>$n \geq 4$, i.e. the sequence has at least $5$ terms.</li>
<li>$0 \lt a_0 \lt a_1 \lt \cdots \lt a_n$, i.e. the sequence is strictly increasing.</li>
<li>$| a_i^2 - a_{i - 1}a_{i + 1} | \le 2$ for $1 \le i \le n-1$.</li>
</ul>
<p>
Let $G(N)$ be the number of different pseudo-geometric sequences whose terms do not exceed $N$.<br>
For example, $G(6) = 4$, as the following $4$ sequences give a complete list:
</p><center>$1, 2, 3, 4, 5 \qquad 1, 2, 3, 4, 6 \qquad 2, 3, 4, 5, 6 \qquad 1, 2, 3, 4, 5, 6$ </center>
<p>
Also, $G(10) = 26$, $G(100) = 4710$ and $G(1000) = 496805$.</p>
<p>
Find $G(10^{18})$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
