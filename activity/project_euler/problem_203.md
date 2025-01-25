+++
title = "P203"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_202/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_204/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Squarefree Binomial Coefficients</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th September 2008, 02:00 pm; Solved by 9869;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=203">Problem 203</a></h3></div>
<div class="problem_content" role="problem">
<p>The binomial coefficients $\displaystyle \binom n k$ can be arranged in triangular form, Pascal's triangle, like this:</p>

<div class="center">
<table align="center"><tr><td colspan="7"></td><td>1</td><td colspan="7"></td></tr><tr><td colspan="6"></td><td>1</td><td></td><td>1</td><td colspan="6"></td></tr><tr><td colspan="5"></td><td>1</td><td></td><td>2</td><td></td><td>1</td><td colspan="5"></td></tr><tr><td colspan="4"></td><td>1</td><td></td><td>3</td><td></td><td>3</td><td></td><td>1</td><td colspan="4"></td></tr><tr><td colspan="3"></td><td>1</td><td></td><td>4</td><td></td><td>6</td><td></td><td>4</td><td></td><td>1</td><td colspan="3"></td></tr><tr><td colspan="2"></td><td>1</td><td></td><td>5</td><td></td><td>10</td><td></td><td>10</td><td></td><td>5</td><td></td><td>1</td><td colspan="2"></td></tr><tr><td colspan="1"></td><td>1</td><td></td><td>6</td><td></td><td>15</td><td></td><td>20</td><td></td><td>15</td><td></td><td>6</td><td></td><td>1</td><td colspan="1"></td></tr><tr><td>1</td><td></td><td>7</td><td></td><td>21</td><td></td><td>35</td><td></td><td>35</td><td></td><td>21</td><td></td><td>7</td><td></td><td>1</td></tr></table>
.........
</div>

<p>It can be seen that the first eight rows of Pascal's triangle contain twelve distinct numbers: 1, 2, 3, 4, 5, 6, 7, 10, 15, 20, 21 and 35.</p>

<p>A positive integer <var>n</var> is called squarefree if no square of a prime divides <var>n</var>.
Of the twelve distinct numbers in the first eight rows of Pascal's triangle, all except 4 and 20 are squarefree.
The sum of the distinct squarefree numbers in the first eight rows is 105.</p>

<p>Find the sum of the distinct squarefree numbers in the first 51 rows of Pascal's triangle.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
