+++
title = "P128"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_127/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_129/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Hexagonal Tile Differences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 29th September 2006, 06:00 pm; Solved by 5591;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=128">Problem 128</a></h3></div>
<div class="problem_content" role="problem">
<p>A hexagonal tile with number $1$ is surrounded by a ring of six hexagonal tiles, starting at "12 o'clock" and numbering the tiles $2$ to $7$ in an anti-clockwise direction.</p>
<p>New rings are added in the same fashion, with the next rings being numbered $8$ to $19$, $20$ to $37$, $38$ to $61$, and so on. The diagram below shows the first three rings.</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0128.png?1678992052" class="dark_img" alt=""></div>
<p>By finding the difference between tile $n$ and each of its six neighbours we shall define $\operatorname{PD}(n)$ to be the number of those differences which are prime.</p>
<p>For example, working clockwise around tile $8$ the differences are $12, 29, 11, 6, 1$, and $13$. So $\operatorname{PD}(8) = 3$.</p>
<p>In the same way, the differences around tile $17$ are $1, 17, 16, 1, 11$, and $10$, hence $\operatorname{PD}(17) = 2$.</p>
<p>It can be shown that the maximum value of $\operatorname{PD}(n)$ is $3$.</p>
<p>If all of the tiles for which $\operatorname{PD}(n) = 3$ are listed in ascending order to form a sequence, the $10$th tile would be $271$.</p>
<p>Find the $2000$th tile in this sequence.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
