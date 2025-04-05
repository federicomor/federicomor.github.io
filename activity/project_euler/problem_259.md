+++
title = "P259"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_258/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_260/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Reachable Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th October 2009, 01:00 pm; Solved by 1680;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=259">Problem 259</a></h3></div>
<div class="problem_content" role="problem">
<p>A positive integer will be called <dfn>reachable</dfn> if it can result from an arithmetic expression obeying the following rules:</p>

<ul><li>Uses the digits $1$ through $9$, in that order and exactly once each.</li>
<li>Any successive digits can be concatenated (for example, using the digits $2$, $3$ and $4$ we obtain the number $234$).</li>
<li>Only the four usual binary arithmetic operations (addition, subtraction, multiplication and division) are allowed.</li>
<li>Each operation can be used any number of times, or not at all.</li>
<li><strong class="tooltip">Unary minus<span class="tooltiptext">A minus sign applied to a single operand (as opposed to a subtraction operator between two operands)</span></strong> is not allowed.</li>
<li>Any number of (possibly nested) parentheses may be used to define the order of operations.</li>
</ul><p>For example, $42$ is reachable, since $(1 / 23) \times ((4 \times 5) - 6) \times (78 - 9) = 42$.</p>

<p>What is the sum of all positive reachable integers?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
