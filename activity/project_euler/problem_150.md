+++
title = "Sub-triangle Sums"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_149/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_151/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sub-triangle Sums</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 13th April 2007, 10:00 pm; Solved by 4393;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=150">Problem 150</a></h3></div>
<div class="problem_content" role="problem">
<p>In a triangular array of positive and negative integers, we wish to find a sub-triangle such that the sum of the numbers it contains is the smallest possible.</p>
<p>In the example below, it can be easily verified that the marked triangle satisfies this condition having a sum of −42.</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0150.gif?1678992055" class="dark_img" alt=""></div>
<p>We wish to make such a triangular array with one thousand rows, so we generate 500500 pseudo-random numbers <span style="font-style:italic;">s<sub>k</sub></span> in the range ±2<sup>19</sup>, using a type of random number generator (known as a Linear Congruential Generator) as follows:</p>
<p class="margin_left"><span style="font-style:italic;">t</span> := 0
<br>
for k = 1 up to k = 500500:
<br>
    <span style="font-style:italic;">t</span> := (615949*<span style="font-style:italic;">t</span> + 797807) modulo 2<sup>20</sup><br>
    <span style="font-style:italic;">s<sub>k</sub></span> := <span style="font-style:italic;">t</span>−2<sup>19</sup></p>
<p>Thus: <span style="font-style:italic;">s<sub>1</sub></span> = 273519, <span style="font-style:italic;">s<sub>2</sub></span> = −153582, <span style="font-style:italic;">s<sub>3</sub></span> = 450905 etc</p>
<p>Our triangular array is then formed using the pseudo-random numbers thus:</p>
<div style="text-align:center;font-style:italic;">
s<sub>1</sub><br>
s<sub>2</sub>  s<sub>3</sub><br>
s<sub>4</sub>  s<sub>5</sub>  s<sub>6</sub>  
<br>
s<sub>7</sub>  s<sub>8</sub>  s<sub>9</sub>  s<sub>10</sub><br>
...
</div>
<p>Sub-triangles can start at any element of the array and extend down as far as we like (taking-in the two elements directly below it from the next row, the three elements directly below from the row after that, and so on).
<br>
The "sum of a sub-triangle" is defined as the sum of all the elements it contains.
<br>
Find the smallest possible sub-triangle sum.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
