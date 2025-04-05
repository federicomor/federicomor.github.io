+++
title = "P635"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_634/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_636/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Subset Sums</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 25th August 2018, 07:00 pm; Solved by 387;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=635">Problem 635</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $A_q(n)$ be the number of subsets, $B$, of the set $\{1, 2, ..., q \cdot n\}$ that satisfy two conditions:<br>
1) $B$ has exactly $n$ elements;<br>
2) the sum of the elements of $B$ is divisible by $n$.
</p>
<p>
E.g. $A_2(5)=52$ and $A_3(5)=603$.
</p>
Let $S_q(L)$ be $\sum A_q(p)$ where the sum is taken over all primes $p \le L$.<br>
E.g. $S_2(10)=554$, $S_2(100)$ mod $1\,000\,000\,009=100433628$ and<br> $S_3(100)$ mod $1\,000\,000\,009=855618282$.

<p>
Find $S_2(10^8)+S_3(10^8)$. Give your answer modulo $1\,000\,000\,009$.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
