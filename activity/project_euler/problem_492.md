+++
title = "P492"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_491/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_493/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Exploding Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th December 2014, 01:00 pm; Solved by 399;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=492">Problem 492</a></h3></div>
<div class="problem_content" role="problem">
<p>Define the sequence $a_1, a_2, a_3, \dots$ as:</p>
<ul><li>$a_1 = 1$</li>
<li>$a_{n+1} = 6a_n^2 + 10a_n + 3$ for $n \ge 1$.</li>
</ul><p>
Examples:<br>
$a_3 = 2359$<br>
$a_6 = 269221280981320216750489044576319$<br>
$a_6 \bmod 1\,000\,000\,007 = 203064689$<br>
$a_{100} \bmod 1\,000\,000\,007 = 456482974$
</p>

<p>
Define $B(x,y,n)$ as $\sum (a_n \bmod p)$ for every prime $p$ such that $x \le p \le x+y$.
</p>

<p>
Examples:<br>
$B(10^9, 10^3, 10^3) = 23674718882$<br>
$B(10^9, 10^3, 10^{15}) = 20731563854$
</p>

<p>Find $B(10^9, 10^7, 10^{15})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
