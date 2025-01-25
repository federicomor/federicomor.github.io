+++
title = "P230"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_229/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_231/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fibonacci Words</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 31st January 2009, 01:00 pm; Solved by 3106;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=230">Problem 230</a></h3></div>
<div class="problem_content" role="problem">
<p>For any two strings of digits, $A$ and $B$, we define $F_{A, B}$ to be the sequence $(A,B,AB,BAB,ABBAB,\dots)$ in which each term is the concatenation of the previous two.</p>

<p>Further, we define $D_{A, B}(n)$ to be the $n$<sup>th</sup> digit in the first term of $F_{A, B}$ that contains at least $n$ digits.</p>

<p>Example:</p>

<p>Let $A=1415926535$, $B=8979323846$. We wish to find $D_{A, B}(35)$, say.</p>

<p>The first few terms of $F_{A, B}$ are:<br>
$1415926535$<br>
$8979323846$<br>
$14159265358979323846$<br>
$897932384614159265358979323846$<br>
$1415926535897932384689793238461415{\color{red}\mathbf 9}265358979323846$<br></p>

<p>Then $D_{A, B}(35)$ is the $35$<sup>th</sup> digit in the fifth term, which is $9$.</p>

<p>Now we use for $A$ the first $100$ digits of $\pi$ behind the decimal point:</p>
<p>$14159265358979323846264338327950288419716939937510$<br>
$58209749445923078164062862089986280348253421170679$</p>

<p>and for $B$ the next hundred digits:</p>

<p>$82148086513282306647093844609550582231725359408128$<br>
$48111745028410270193852110555964462294895493038196$.</p>

<p>Find $\sum_{n = 0}^{17} 10^n \times D_{A,B}((127+19n) \times 7^n)$.</p>



 

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
