+++
title = "P238"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_237/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_239/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Infinite String Tour</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 29th March 2009, 03:00 pm; Solved by 1110;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=238">Problem 238</a></h3></div>
<div class="problem_content" role="problem">
<p>Create a sequence of numbers using the "Blum Blum Shub" pseudo-random number generator:</p>

$$\begin{align}
s_0 &amp;= 14025256\\
s_{n + 1} &amp;= s_n^2 \bmod 20300713
\end{align}$$

<p>Concatenate these numbers $s_0s_1s_2\cdots$ to create a string $w$ of infinite length.<br>
Then, $w = {\color{blue}14025256741014958470038053646\cdots}$</p>

<p>For a positive integer $k$, if no substring of $w$ exists with a sum of digits equal to $k$, $p(k)$ is defined to be zero. If at least one substring of $w$ exists with a sum of digits equal to $k$, we define $p(k) = z$, where $z$ is the starting position of the earliest such substring.</p>

<p>For instance:</p>

<p>The substrings $\color{blue}1, 14, 1402, \dots$<br>
with respective sums of digits equal to $1, 5, 7, \dots$<br>
start at position $\mathbf 1$, hence $p(1) = p(5) = p(7) = \cdots = \mathbf 1$.</p>

<p>The substrings $\color{blue}4, 402, 4025, \dots$<br>
with respective sums of digits equal to $4, 6, 11, \dots$<br>
start at position $\mathbf 2$, hence $p(4) = p(6) = p(11) = \cdots = \mathbf 2$.</p>

<p>The substrings $\color{blue}02, 0252, \dots$<br>
with respective sums of digits equal to $2, 9, \dots$<br>
start at position $\mathbf 3$, hence $p(2) = p(9) = \cdots = \mathbf 3$.</p>

<p>Note that substring $\color{blue}025$ starting at position $\mathbf 3$, has a sum of digits equal to $7$, but there was an earlier substring (starting at position $\mathbf 1$) with a sum of digits equal to $7$, so $p(7) = 1$, <i>not</i> $3$.</p>

<p>We can verify that, for $0 \lt k \le 10^3$, $\sum p(k) = 4742$.</p>

<p>Find $\sum p(k)$, for $0 \lt k \le 2 \times 10^{15}$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
