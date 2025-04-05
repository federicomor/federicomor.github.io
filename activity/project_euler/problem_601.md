+++
title = "P601"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_600/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_602/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Divisibility Streaks</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 29th April 2017, 07:00 pm; Solved by 2284;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=601">Problem 601</a></h3></div>
<div class="problem_content" role="problem">
<p>
For every positive number $n$ we define the function $\mathop{streak}(n)=k$ as the smallest positive integer $k$ such that $n+k$ is not divisible by $k+1$.<br>
E.g:<br>
$13$ is divisible by $1$<br>
$14$ is divisible by $2$<br>
$15$ is divisible by $3$<br>
$16$ is divisible by $4$<br>
$17$ is NOT divisible by $5$<br>
So $\mathop{streak}(13) = 4$. <br> 
Similarly:<br>
$120$ is divisible by $1$<br>
$121$ is NOT divisible by $2$<br>
So $\mathop{streak}(120) = 1$.</p>
<p>

Define $P(s, N)$ to be the number of integers $n$, $1 \lt n \lt N$, for which $\mathop{streak}(n) = s$.<br>
So $P(3, 14) = 1$ and $P(6, 10^6) = 14286$.
</p>
<p>
Find the sum, as $i$ ranges from $1$ to $31$, of $P(i, 4^i)$.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
