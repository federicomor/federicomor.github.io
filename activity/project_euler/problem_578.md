+++
title = "P578"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_577/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_579/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Integers with Decreasing Prime Powers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th November 2016, 10:00 pm; Solved by 276;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=578">Problem 578</a></h3></div>
<div class="problem_content" role="problem">
<p>Any positive integer can be written as a product of prime powers: $p_1^{a_1} \times p_2^{a_2} \times \cdots \times p_k^{a_k}$,<br>
where $p_i$ are distinct prime integers, $a_i \gt 0$ and $p_i \lt p_j$ if $i \lt j$.</p>

<p>A <dfn>decreasing prime power</dfn> positive integer is one for which $a_i \ge a_j$ if $i \lt j$.<br>
For example, $1$, $2$, $15=3 \times 5$, $360=2^3 \times 3^2 \times 5$ and $1000=2^3 \times 5^3$ are decreasing prime power integers.</p>

<p>Let $C(n)$ be the count of decreasing prime power positive integers not exceeding $n$.<br>
$C(100) = 94$ since all positive integers not exceeding $100$ have decreasing prime powers except $18$, $50$, $54$, $75$, $90$ and $98$.<br>
You are given $C(10^6) = 922052$.</p>

<p>Find $C(10^{13})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
