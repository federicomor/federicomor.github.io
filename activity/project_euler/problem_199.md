+++
title = "Iterative Circle Packing"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_198/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_200/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Iterative Circle Packing</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st June 2008, 06:00 am; Solved by 2172;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=199">Problem 199</a></h3></div>
<div class="problem_content" role="problem">
<p>Three circles of equal radius are placed inside a larger circle such that each pair of circles is tangent to one another and the inner circles do not overlap. There are four uncovered "gaps" which are to be filled iteratively with more tangent circles.</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0199_circles_in_circles.gif?1678992055" class="dark_img" alt=""></div>
<p>
At each iteration, a maximally sized circle is placed in each gap, which creates more gaps for the next iteration. After $3$ iterations (pictured), there are $108$ gaps and the fraction of the area which is not covered by circles is $0.06790342$, rounded to eight decimal places.
</p>
<p>
What fraction of the area is not covered by circles after $10$ iterations?<br>
Give your answer rounded to eight decimal places using the format x.xxxxxxxx .
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
