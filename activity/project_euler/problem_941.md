+++
title = "P941"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_940/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_942/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>de Bruijn's Combination Lock</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th April 2025, 08:00 pm; Solved by 127;<br>Difficulty level: 32</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=941">Problem 941</a></h3></div>
<div class="problem_content" role="problem">
<p>
de Bruijn has a digital combination lock with $k$ buttons numbered $0$ to $k-1$ where $k \le 10$.<br>
The lock opens when the last $n$ buttons pressed match the preset combination.</p>

<p>
Unfortunately he has forgotten the combination. He creates a sequence of these digits which contains every possible combination of length $n$. Then by pressing the buttons in this order he is sure to open the lock.</p>

<p>
Consider all sequences of shortest possible length that contains every possible combination of the digits.<br>
Denote by $C(k, n)$ the lexicographically smallest of these.</p>

<p>
For example, $C(3, 2) = $ 0010211220.</p>

<p>
Define the sequence $a_n$ by $a_0=0$ and<br>
$$a_n=(920461 a_{n-1}+800217387569)\bmod 10^{12} \text{ for }\  n &gt; 0$$
Interpret each $a_n$ as a $12$-digit combination, adding leading zeros for any $a_n$ with less than $12$ digits.</p>

<p>
Given a positive integer $N$, we are interested in the order the combinations $a_1,\dots,a_N$ appear in $C(10,12)$.<br>
 Denote by $p_n$ the <i>place</i>, numbered $1,\dots,N$, in which $a_n$ appears out of $a_1,\dots,a_N$. Define $\displaystyle F(N)=\sum_{n=1}^Np_na_n$.</p>

<p>
For example, the combination $a_1=800217387569$ is entered before $a_2=696996536878$. Therefore:
$$F(2)=1\cdot800217387569 + 2\cdot696996536878 = 2194210461325$$
You are also given $F(10)=32698850376317$.</p>

<p>
Find $F(10^7)$. Give your answer modulo $1234567891$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
