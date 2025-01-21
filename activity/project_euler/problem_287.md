+++
title = "Quadtree Encoding (a Simple Compression Algorithm)"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_286/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_288/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</p>
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
<h2>Quadtree Encoding (a Simple Compression Algorithm)</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th April 2010, 09:00 am; Solved by 1590;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=287">Problem 287</a></h3></div>
<div class="problem_content" role="problem">
<p>The quadtree encoding allows us to describe a $2^N \times 2^N$  black and white image as a sequence of bits (0 and 1). Those sequences are to be read from left to right like this:
</p><ul><li>the first bit deals with the complete $2^N \times 2^N$ region;</li>
<li>"0" denotes a split:
<br>the current $2^n \times 2^n$ region is divided into $4$ sub-regions of dimension $2^{n - 1} \times 2^{n - 1}$,<br>
the next bits contains the description of the top left, top right, bottom left and bottom right sub-regions - in that order;</li>
<li>"10" indicates that the current region contains only black pixels;</li>
<li>"11" indicates that the current region contains only white pixels.</li></ul><p>Consider the following $4 \times 4$ image (colored marks denote places where a split can occur):</p>

<div class="center"><img src="https://projecteuler.net/resources/images/0287_quadtree.gif?1678992056" class="dark_img" alt="0287_quadtree.gif"></div>

<p>This image can be described by several sequences, for example :
"<span class="red strong">0</span><span class="blue strong">0</span>10101010<span class="green strong">0</span>1011111011<span class="orange strong">0</span>10101010", of length $30$, or<br>
"<span class="red strong">0</span>10<span class="green strong"><b>0</b></span>101111101110", of length $16$, which is the minimal sequence for this image.</p>

<p>For a positive integer $N$, define $D_N$ as the $2^N \times 2^N$ image with the following coloring scheme:
</p><ul><li>the pixel with coordinates $x = 0, y = 0$ corresponds to the bottom left pixel,</li>
<li>if $(x - 2^{N - 1})^2 + (y - 2^{N - 1})^2 \le 2^{2N - 2}$ then the pixel is black,</li>
<li>otherwise the pixel is white.</li></ul><p>What is the length of the minimal sequence describing $D_{24}$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
