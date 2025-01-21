+++
title = "Tri-colouring a Triangular Grid"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_188/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_190/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Tri-colouring a Triangular Grid</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 11th April 2008, 05:00 pm; Solved by 2303;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=189">Problem 189</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the following configuration of $64$ triangles:</p>

<div class="center"><img src="https://projecteuler.net/resources/images/0189_grid.gif?1678992055" class="dark_img" alt=""></div>

<p>We wish to colour the interior of each triangle with one of three colours: red, green or blue, so that no two neighbouring triangles have the same colour. Such a colouring shall be called valid. Here, two triangles are said to be neighbouring if they share an edge.<br>
Note: if they only share a vertex, then they are not neighbours.</p> 

<p>For example, here is a valid colouring of the above grid:</p>
<div class="center"><img src="https://projecteuler.net/resources/images/0189_colours.gif?1678992055" class="dark_img" alt=""></div>

<p>A colouring $C^\prime$ which is obtained from a colouring $C$ by rotation or reflection is considered <i>distinct</i> from $C$ unless the two are identical.</p>

<p>How many distinct valid colourings are there for the above configuration?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
