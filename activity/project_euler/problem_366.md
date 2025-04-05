+++
title = "P366"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_365/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_367/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Stone Game III</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th January 2012, 07:00 pm; Solved by 761;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=366">Problem 366</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players, Anton and Bernhard, are playing the following game.<br>
There is one pile of $n$ stones.<br>
The first player may remove any positive number of stones, but not the whole pile.<br>
Thereafter, each player may remove at most twice the number of stones his opponent took on the previous move.<br>
The player who removes the last stone wins.
</p>
<p>
E.g. $n=5$.<br>
If the first player takes anything more than one stone the next player will be able to take all remaining stones.<br>
If the first player takes one stone, leaving four, his opponent will take also one stone, leaving three stones.<br>
The first player cannot take all three because he may take at most $2 \times 1=2$ stones. So let's say he takes also one stone, leaving $2$. The second player can take the two remaining stones and wins.<br>
So $5$ is a losing position for the first player.<br>
For some winning positions there is more than one possible move for the first player.<br>
E.g. when $n=17$ the first player can remove one or four stones.
</p>
<p>
Let $M(n)$ be the maximum number of stones the first player can take from a winning position <i>at his first turn</i> and $M(n)=0$ for any other position.
</p>
<p>
$\sum M(n)$ for $n \le 100$ is $728$.
</p>
<p>
Find $\sum M(n)$ for $n \le 10^{18}$.
Give your answer modulo $10^8$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
