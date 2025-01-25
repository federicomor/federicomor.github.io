+++
title = "P894"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_893/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_895/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Spiral of Circles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 8th June 2024, 02:00 pm; Solved by 315;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=894">Problem 894</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider a <strong class="tooltip">unit circle<span class="tooltiptext">circle with radius 1</span></strong> $C_0$ on the plane that does not enclose the origin. For $k\ge 1$, a circle $C_k$ is created by scaling and rotating $C_{k - 1}$ <b>with respect to the origin</b>. That is, both the radius and the distance to the origin are scaled by the same factor, and the centre of rotation is the origin. The scaling factor is positive and strictly less than one. Both it and the rotation angle remain constant for each $k$.</p>

<p>It is given that $C_0$ is externally tangent to $C_1$, $C_7$ and $C_8$, as shown in the diagram below, and no two circles overlap.</p>
<div style="text-align:center;"><img src="https://projecteuler.net/resources/images/0894_circle_spiral.jpg?1714305246" alt="0894_circle_spiral.jpg"></div>

<p>Find the total area of all the <strong class="tooltip">circular triangles<span class="tooltiptext">A circular triangle is a triangle with circular arc edges</span></strong> in the diagram, i.e. the area painted green above.<br>
Give your answer rounded to $10$ places after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
