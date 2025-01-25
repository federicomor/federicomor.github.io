+++
title = "P828"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_827/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_829/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Numbers Challenge</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th February 2023, 04:00 pm; Solved by 675;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=828">Problem 828</a></h3></div>
<div class="problem_content" role="problem">
<p>It is a common recreational problem to make a target number using a selection of other numbers. In this problem you will be given six numbers and a target number.</p>

<p>For example, given the six numbers $2$, $3$, $4$, $6$, $7$, $25$, and a target of $211$, one possible solution is:</p>
$$211 = (3+6)\times 25 − (4\times7)\div 2$$
<p>This uses all six numbers. However, it is not necessary to do so. Another solution that does not use the $7$ is:</p>
$$211 = (25−2)\times (6+3) + 4$$

<p>Define the <em>score</em> of a solution to be the sum of the numbers used. In the above example problem, the two given solutions have scores $47$ and $40$ respectively. It turns out that this problem has no solutions with score less than $40$.</p>

<p>When combining numbers, the following rules must be observed:</p>
<ul>
<li>Each available number may be used at most once.</li>
<li>Only the four basic arithmetic operations are permitted: $+$, $-$, $\times$, $\div$.</li>
<li>All intermediate values must be positive integers, so for example $(3\div 2)$ is never permitted as a subexpression (even if the final answer is an integer).</li>
</ul>

<p>The attached file <a href="https://projecteuler.net/project/resources/p828_number_challenges.txt">number-challenges.txt</a> contains 200 problems, one per line in the format:</p>
<center><big><tt>211:2,3,4,6,7,25</tt></big></center>
<p>where the number before the colon is the target and the remaining comma-separated numbers are those available to be used.</p>

<p>Numbering the problems 1, 2, ..., 200, we let $s_n$ be the minimum score of the solution to the $n$th problem. For example, $s_1=40$, as the first problem in the file is the example given above. Note that not all problems have a solution; in such cases we take $s_n=0$.</p>

<p>Find $\displaystyle\sum_{n=1}^{200} 3^n s_n$. Give your answer modulo $1005075251$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
