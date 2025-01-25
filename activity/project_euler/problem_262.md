+++
title = "P262"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_261/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_263/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Mountain Range</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 30th October 2009, 09:00 pm; Solved by 804;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=262">Problem 262</a></h3></div>
<div class="problem_content" role="problem">
<p>The following equation represents the <i>continuous</i> topography of a mountainous region, giving the <strong class="tooltip">elevation<span class="tooltiptext">height above sea level</span></strong> $h$ at any point $(x, y)$:
$$h = \left(5000 - \frac{x^2 + y^2 + xy}{200} + \frac{25(x + y)}2\right) \cdot e^{-\left|\frac{x^2 + y^2}{1000000} - \frac{3(x + y)}{2000} + \frac 7 {10}\right|}.$$
</p>

<p>A mosquito intends to fly from $A(200,200)$ to $B(1400,1400)$, without leaving the area given by $0 \le x, y \le 1600$.</p>

<p>Because of the intervening mountains, it first rises straight up to a point $A^\prime$, having elevation $f$. Then, while remaining at the same elevation $f$, it flies around any obstacles until it arrives at a point $B^\prime$ directly above $B$.</p>

<p>First, determine $f_{\mathrm{min}}$ which is the minimum constant elevation allowing such a trip from $A$ to $B$, while remaining in the specified area.<br>
Then, find the length of the shortest path between $A^\prime$ and $B^\prime$, while flying at that constant elevation $f_{\mathrm{min}}$.</p>

<p>Give that length as your answer, rounded to three decimal places.</p>

<p><font><u>Note</u>: For convenience, the elevation function shown above is repeated below, in a form suitable for most programming languages:<br>
h=( 5000-0.005*(x*x+y*y+x*y)+12.5*(x+y) ) * exp( -abs(0.000001*(x*x+y*y)-0.0015*(x+y)+0.7) )</font></p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
