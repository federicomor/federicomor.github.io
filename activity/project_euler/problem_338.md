+++
title = "P338"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_337/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_339/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cutting Rectangular Grid Paper</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 15th May 2011, 01:00 am; Solved by 362;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=338">Problem 338</a></h3></div>
<div class="problem_content" role="problem">
<p>A rectangular sheet of grid paper with integer dimensions $w \times h$ is given. Its grid spacing is $1$.<br>
When we cut the sheet along the grid lines into two pieces and rearrange those pieces without overlap, we can make new rectangles with different dimensions.</p>
<p>For example, from a sheet with dimensions $9 \times 4$, we can make rectangles with dimensions $18 \times 2$, $12 \times 3$ and $6 \times 6$ by cutting and rearranging as below:</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0338_gridpaper.gif?1678992056" alt="0338_gridpaper.gif"><br></div>

<p>Similarly, from a sheet with dimensions $9 \times 8$, we can make rectangles with dimensions $18 \times 4$ and $12 \times 6$.</p>

<p>For a pair $w$ and $h$, let $F(w, h)$ be the number of distinct rectangles that can be made from a sheet with dimensions $w \times h$.<br>
For example, $F(2,1) = 0$, $F(2,2) = 1$, $F(9,4) = 3$ and $F(9,8) = 2$. <br>
Note that rectangles congruent to the initial one are not counted in $F(w, h)$.<br>
Note also that rectangles with dimensions $w \times h$ and dimensions $h \times w$ are not considered distinct.</p>

<p>For an integer $N$, let $G(N)$ be the sum of $F(w, h)$ for all pairs $w$ and $h$ which satisfy $0 \lt h \le w \le N$.<br>
We can verify that $G(10) = 55$, $G(10^3) = 971745$ and $G(10^5) = 9992617687$.</p>

<p>Find $G(10^{12})$. Give your answer modulo $10^8$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
