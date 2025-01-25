+++
title = "P148"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_147/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_149/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Exploring Pascal's Triangle</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th April 2007, 02:00 am; Solved by 5720;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=148">Problem 148</a></h3></div>
<div class="problem_content" role="problem">
<p>We can easily verify that none of the entries in the first seven rows of Pascal's triangle are divisible by $7$:</p>

<table align="center"><tr>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
</tr><tr>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
</tr><tr>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$2$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
</tr><tr>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$3$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$3$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
</tr><tr>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$4$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$6$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$4$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15"></td>
</tr><tr>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$5$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$10$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$10$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$5$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
</tr><tr>
<td align="center" width="15">$1$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$6$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$15$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$20$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$15$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$6$</td>
<td align="center" width="15"></td>
<td align="center" width="15">$1$</td>
</tr></table>


<p>However, if we check the first one hundred rows, we will find that only $2361$ of the $5050$ entries are <i>not</i> divisible by $7$.</p>

<p>Find the number of entries which are <i>not</i> divisible by $7$ in the first one billion ($10^9$) rows of Pascal's triangle.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
