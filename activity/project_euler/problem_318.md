+++
title = "P318"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_317/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_319/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>2011 Nines</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 1st January 2011, 04:00 pm; Solved by 1034;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=318">Problem 318</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider the real number $\sqrt 2 + \sqrt 3$.<br>
When we calculate the even powers of $\sqrt 2 + \sqrt 3$
we get:<br>
$(\sqrt 2 + \sqrt 3)^2 = 9.898979485566356 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^4 = 97.98979485566356 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^6 = 969.998969071069263 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^8 = 9601.99989585502907 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^{10} = 95049.999989479221 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^{12} = 940897.9999989371855 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^{14} = 9313929.99999989263 \cdots $<br>
$(\sqrt 2 + \sqrt 3)^{16} = 92198401.99999998915 \cdots $<br></p>
<p>
It looks as if the number of consecutive nines at the beginning of the fractional part of these powers is non-decreasing.<br>
In fact it can be proven that the fractional part of $(\sqrt 2 + \sqrt 3)^{2 n}$ approaches $1$ for large $n$.
</p>
<p>
Consider all real numbers of the form $\sqrt p + \sqrt q$ with $p$ and $q$ positive integers and $p &lt; q$, such that the fractional part 
of $(\sqrt p + \sqrt q)^{ 2 n}$ approaches $1$ for large $n$.
</p>
<p>
Let $C(p,q,n)$ be the number of consecutive nines at the beginning of the fractional part of $(\sqrt p + \sqrt q)^{ 2 n}$.
</p>
<p>
Let $N(p,q)$ be the minimal value of $n$ such that $C(p,q,n) \ge 2011$.
</p>
<p>
Find $\displaystyle \sum N(p,q) \,\, \text{ for } p+q \le 2011$.
</p>

















 


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
