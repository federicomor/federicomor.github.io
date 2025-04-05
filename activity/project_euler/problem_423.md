+++
title = "P423"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_422/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_424/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Consecutive Die Throws</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th April 2013, 10:00 am; Solved by 540;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=423">Problem 423</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $n$ be a positive integer.<br>
A 6-sided die is thrown $n$ times. Let $c$ be the number of pairs of consecutive throws that give the same value.</p>

<p>For example, if $n = 7$ and the values of the die throws are (1,1,5,6,6,6,3), then the following pairs of consecutive throws give the same value:<br>
(<u>1,1</u>,5,6,6,6,3)<br>
(1,1,5,<u>6,6</u>,6,3)<br>
(1,1,5,6,<u>6,6</u>,3)<br>
Therefore, $c = 3$ for (1,1,5,6,6,6,3).</p>

<p>Define $C(n)$ as the number of outcomes of throwing a 6-sided die $n$ times such that $c$ does not exceed $\pi(n)$.<sup>1</sup><br>
For example, $C(3) = 216$, $C(4) = 1290$, $C(11) = 361912500$ and $C(24) = 4727547363281250000$.</p>

<p>Define $S(L)$ as $\sum C(n)$ for $1 \leq n \leq L$.<br>
For example, $S(50) \bmod 1\,000\,000\,007 = 832833871$.</p>

<p>Find $S(50\,000\,000) \bmod 1\,000\,000\,007$.</p>

<p> <span style="font-size:smaller;"><sup>1</sup> $\pi$ denotes the <b>prime-counting function</b>, i.e. $\pi(n)$ is the number of primes $\leq n$.</span></p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
