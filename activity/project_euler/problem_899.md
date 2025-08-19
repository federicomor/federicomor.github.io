+++
title = "P899"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_898/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_900/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>DistribuNim I</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th July 2024, 05:00 am; Solved by 559;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=899">Problem 899</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players play a game with two piles of stones. The players alternately take stones from one or both piles, subject to:</p>

<ol>
<li>the total number of stones taken is equal to the size of the smallest pile before the move;</li>

<li>the move cannot take all the stones from a pile.</li>
</ol>

<p>
The player that is unable to move loses.</p>

<p>
For example, if the piles are of sizes 3 and 5 then there are three possible moves.
$$(3,5) \xrightarrow{(2,1)} (1,4)\qquad\qquad (3,5) \xrightarrow{(1,2)} (2,3)\qquad\qquad (3,5) \xrightarrow{(0,3)} (3,2)$$</p>

<p>
Let $L(n)$ be the number of ordered pairs $(a,b)$ with $1 \leq a,b \leq n$ such that the initial game position with piles of sizes $a$ and $b$ is losing for the first player assuming optimal play.</p>

<p>
You are given $L(7) = 21$ and $L(7^2) = 221$.</p>

<p>
Find $L(7^{17})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
