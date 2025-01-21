+++
title = "Laser Beam Reflections "
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_143/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_145/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Laser Beam Reflections </h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 9th March 2007, 05:00 pm; Solved by 6964;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=144">Problem 144</a></h3></div>
<div class="problem_content" role="problem">
<p>In laser physics, a "white cell" is a mirror system that acts as a delay line for the laser beam. The beam enters the cell, bounces around on the mirrors, and eventually works its way back out.</p>
<p>The specific white cell we will be considering is an ellipse with the equation $4x^2 + y^2 = 100$.</p>
<p>The section corresponding to $-0.01 \le x \le +0.01$ at the top is missing, allowing the light to enter and exit through the hole.</p>
<div class="center"><img src="https://projecteuler.net/resources/images/0144_1.png?1678992052" class="dark_img" style="margin:10px 20px;" alt=""><img src="https://projecteuler.net/resources/images/0144_2.gif?1678992055" class="dark_img" style="margin:10px 20px;" alt=""></div>
<p>The light beam in this problem starts at the point $(0.0,10.1)$ just outside the white cell, and the beam first impacts the mirror at $(1.4,-9.6)$.</p>
<p>Each time the laser beam hits the surface of the ellipse, it follows the usual law of reflection "angle of incidence equals angle of reflection." That is, both the incident and reflected beams make the same angle with the normal line at the point of incidence.</p>
<p>In the figure on the left, the red line shows the first two points of contact between the laser beam and the wall of the white cell; the blue line shows the line tangent to the ellipse at the point of incidence of the first bounce.</p>
<p>The slope $m$ of the tangent line at any point $(x,y)$ of the given ellipse is: $m = -4x/y$.</p><p>The normal line is perpendicular to this tangent line at the point of incidence.</p>
<p>The animation on the right shows the first $10$ reflections of the beam.</p>

<p>How many times does the beam hit the internal surface of the white cell before exiting?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
