+++
title = "P414"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_413/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_415/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Kaprekar Constant</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 10th February 2013, 07:00 am; Solved by 313;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=414">Problem 414</a></h3></div>
<div class="problem_content" role="problem">
<p>
$6174$ is a remarkable number; if we sort its digits in increasing order and subtract that number from the number you get when you sort the digits in decreasing order, we get $7641-1467=6174$.<br>
Even more remarkable is that if we start from any $4$ digit number and repeat this process of sorting and subtracting, we'll eventually end up with $6174$ or immediately with $0$ if all digits are equal.<br> 
This also works with numbers that have less than $4$ digits if we pad the number with leading zeroes until we have $4$ digits.<br>
E.g. let's start with the number $0837$:<br>
$8730-0378=8352$<br>
$8532-2358=6174$
</p>
<p>
$6174$ is called the <strong>Kaprekar constant</strong>. The process of sorting and subtracting and repeating this until either $0$ or the Kaprekar constant is reached is called the <strong>Kaprekar routine</strong>.
</p>
<p>
We can consider the Kaprekar routine for other bases and number of digits.<br> 
Unfortunately, it is not guaranteed a Kaprekar constant exists in all cases; either the routine can end up in a cycle for some input numbers or the constant the routine arrives at can be different for different input numbers.<br>
However, it can be shown that for $5$ digits and a base $b = 6t+3\neq 9$, a Kaprekar constant exists.<br>
E.g. base $15$: $(10,4,14,9,5)_{15}$<br>
base $21$: $(14,6,20,13,7)_{21}$</p>
<p>
Define $C_b$ to be the Kaprekar constant in base $b$ for $5$ digits.
Define the function $sb(i)$ to be
</p><ul><li>$0$ if $i = C_b$ or if $i$ written in base $b$ consists of $5$ identical digits
</li><li>the number of iterations it takes the Kaprekar routine in base $b$ to arrive at $C_b$, otherwise
</li></ul>
Note that we can define $sb(i)$ for all integers $i \lt b^5$. If $i$ written in base $b$ takes less than $5$ digits, the number is padded with leading zero digits until we have $5$ digits before applying the Kaprekar routine.

<p>
Define $S(b)$ as the sum of $sb(i)$ for $0 \lt i \lt b^5$.<br>
E.g. $S(15) = 5274369$<br>
$S(111) = 400668930299$
</p>
<p>
Find the sum of $S(6k+3)$ for $2 \leq k \leq 300$.<br>
Give the last $18$ digits as your answer.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
