+++
title = "P229"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_228/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_230/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Four Representations Using Squares</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 24th January 2009, 09:00 am; Solved by 1628;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=229">Problem 229</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the number $3600$. It is very special, because</p>
\begin{alignat}{2}
3600 &amp;= 48^2 + &amp;&amp;36^2\\
3600 &amp;= 20^2 + 2 \times &amp;&amp;40^2\\
3600 &amp;= 30^2 + 3 \times &amp;&amp;30^2\\
3600 &amp;= 45^2 + 7 \times &amp;&amp;15^2
\end{alignat}

<p>Similarly, we find that $88201 = 99^2 + 280^2 = 287^2 + 2 \times 54^2 = 283^2 + 3 \times 52^2 = 197^2 + 7 \times 84^2$.</p>

<p>In 1747, Euler proved which numbers are representable as a sum of two squares.
We are interested in the numbers $n$ which admit representations of all of the following four types:</p>
\begin{alignat}{2}
n &amp;= a_1^2 + &amp;&amp; b_1^2\\
n &amp;= a_2^2 + 2 &amp;&amp; b_2^2\\
n &amp;= a_3^2 + 3 &amp;&amp; b_3^2\\
n &amp;= a_7^2 + 7 &amp;&amp; b_7^2,
\end{alignat}
<p>where the $a_k$ and $b_k$ are positive integers.</p>

<p>There are $75373$ such numbers that do not exceed $10^7$.<br>

How many such numbers are there that do not exceed $2 \times 10^9$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
