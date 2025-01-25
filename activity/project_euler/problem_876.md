+++
title = "P876"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_875/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_877/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Triplet Tricks</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th February 2024, 10:00 am; Solved by 107;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=876">Problem 876</a></h3></div>
<div class="problem_content" role="problem">
<p>
Starting with three numbers $a, b, c$, at each step do one of the three operations:</p>
<ul>
<li>change $a$ to $2(b + c) - a$;
</li><li>change $b$ to $2(c + a) - b$;
</li><li>change $c$ to $2(a + b) - c$;
</li></ul>

<p>
Define $f(a, b, c)$ to be the minimum number of steps required for one number to become zero. If this is not possible then $f(a, b, c)=0$.</p>

<p>
For example, $f(6,10,35)=3$:
$$(6,10,35) \to (6,10,-3) \to (8,10,-3) \to (8,0,-3).$$
However, $f(6,10,36)=0$ as no series of operations leads to a zero number.</p>

<p>
Also define $F(a, b)=\sum_{c=1}^\infty f(a,b,c)$.
You are given $F(6,10)=17$ and $F(36,100)=179$.</p>

<p>
Find $\displaystyle\sum_{k=1}^{18}F(6^k,10^k)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
