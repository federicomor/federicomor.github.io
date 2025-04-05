+++
title = "P234"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_233/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_235/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Semidivisible Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 28th February 2009, 01:00 am; Solved by 3540;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=234">Problem 234</a></h3></div>
<div class="problem_content" role="problem">
<p>For an integer $n \ge 4$, we define the <dfn>lower prime square root</dfn> of $n$, denoted by $\operatorname{lps}(n)$, as the largest prime $\le \sqrt n$ and the <dfn>upper prime square root</dfn> of $n$, $\operatorname{ups}(n)$, as the smallest prime $\ge \sqrt n$.</p>
<p>So, for example, $\operatorname{lps}(4) = 2 = \operatorname{ups}(4)$, $\operatorname{lps}(1000) = 31$, $\operatorname{ups}(1000) = 37$.<br>
Let us call an integer $n \ge 4$ <dfn>semidivisible</dfn>, if one of $\operatorname{lps}(n)$ and $\operatorname{ups}(n)$ divides $n$, but not both.</p>

<p>The sum of the semidivisible numbers not exceeding $15$ is $30$, the numbers are $8$, $10$ and $12$.<br> $15$ is not semidivisible because it is a multiple of both $\operatorname{lps}(15) = 3$ and $\operatorname{ups}(15) = 5$.<br>
As a further example, the sum of the $92$ semidivisible numbers up to $1000$ is $34825$.</p>

<p>What is the sum of all semidivisible numbers not exceeding $999966663333$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
