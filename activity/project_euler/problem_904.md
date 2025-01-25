+++
title = "P904"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_903/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_905/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pythagorean Angle</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 24th August 2024, 02:00 pm; Solved by 208;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=904">Problem 904</a></h3></div>
<div class="problem_content" role="problem">
<p>Given a right-angled triangle with integer sides, the smaller angle formed by the two medians drawn on the the two perpendicular sides is denoted by $\theta$.
</p>
<div style="text-align:center;"><img src="https://projecteuler.net/resources/images/0904_pythagorean_angle.png?1723895050" alt="0904_Pythagorean_angle.jpg"></div>
<p>Let $f(\alpha, L)$ denote the sum of the sides of the right-angled triangle minimizing the absolute difference between $\theta$ and $\alpha$ among all right-angled triangles with integer sides and hypotenuse not exceeding $L$.<br>If more than one triangle attains the minimum value, the triangle with the maximum area is chosen. All angles in this problem are measured in degrees.
</p>
<p>
For example, $f(30,10^2)=198$ and $f(10,10^6)= 1600158$.
</p>
<p>
Define $F(N,L)=\sum_{n=1}^{N}f\left(\sqrt[3]{n},L\right)$.<br>You are given $F(10,10^6)= 16684370$.</p>
<p>
Find $F(45000, 10^{10})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
