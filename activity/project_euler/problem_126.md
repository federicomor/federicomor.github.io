+++
title = "Cuboid Layers"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_125/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_127/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cuboid Layers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 18th August 2006, 06:00 pm; Solved by 5320;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=126">Problem 126</a></h3></div>
<div class="problem_content" role="problem">
<p>The minimum number of cubes to cover every visible face on a cuboid measuring $3 \times 2 \times 1$ is twenty-two.</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0126.png?1678992052" class="dark_img" alt=""><br></div>
<p>If we then add a second layer to this solid it would require forty-six cubes to cover every visible face, the third layer would require seventy-eight cubes, and the fourth layer would require one-hundred and eighteen cubes to cover every visible face.</p>
<p>However, the first layer on a cuboid measuring $5 \times 1 \times 1$ also requires twenty-two cubes; similarly the first layer on cuboids measuring $5 \times 3 \times 1$, $7 \times 2 \times 1$, and $11 \times 1 \times 1$ all contain forty-six cubes.</p>
<p>We shall define $C(n)$ to represent the number of cuboids that contain $n$ cubes in one of its layers. So $C(22) = 2$, $C(46) = 4$, $C(78) = 5$, and $C(118) = 8$.</p>
<p>It turns out that $154$ is the least value of $n$ for which $C(n) = 10$.</p>
<p>Find the least value of $n$ for which $C(n) = 1000$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
