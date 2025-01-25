+++
title = "P311"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_310/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_312/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Biclinic Integral Quadrilaterals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 20th November 2010, 10:00 pm; Solved by 475;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=311">Problem 311</a></h3></div>
<div class="problem_content" role="problem">
<p>$ABCD$ is a convex, integer sided quadrilateral with $1 \le AB \lt BC \lt CD \lt AD$.<br>
$BD$ has integer length. $O$ is the midpoint of $BD$. $AO$ has integer length.<br>
We'll call $ABCD$ a <dfn>biclinic integral quadrilateral</dfn> if $AO = CO \le BO = DO$.<br></p>

<p>For example, the following quadrilateral is a biclinic integral quadrilateral:<br>
$AB = 19$, $BC = 29$, $CD = 37$, $AD = 43$, $BD = 48$ and $AO = CO = 23$.
</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0311_biclinic.gif?1678992056" class="dark_img" alt="0311_biclinic.gif"></div>

<p>Let $B(N)$ be the number of distinct biclinic integral quadrilaterals $ABCD$ that satisfy $AB^2+BC^2+CD^2+AD^2 \le N$.<br>
We can verify that $B(10\,000) = 49$ and $B(1\,000\,000) = 38239$.
</p>

<p>Find $B(10\,000\,000\,000)$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
