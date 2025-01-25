+++
title = "P855"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_854/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_856/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Delphi Paper</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 16th September 2023, 08:00 pm; Solved by 144;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=855">Problem 855</a></h3></div>
<div class="problem_content" role="problem">
<p>Given two positive integers $a,b$, Alex and Bianca play a game in $ab$ rounds. They begin with a square piece of paper of side length $1$.</p>

<p>In each round Alex divides the current rectangular piece of paper into $a \times b$ pieces using $a-1$ horizontal cuts and $b-1$ vertical ones. The cuts do not need to be evenly spaced. Moreover, a piece can have zero width/height when a cut coincides with another cut or the edge of the paper. The pieces are then numbered $1, 2, ..., ab$ starting from the left top corner, moving from left to right and starting from the left of the next row when a row is finished.</p>

<p>Then Bianca chooses one of the pieces for the game to continue on. However, Bianca must not choose a piece with a number she has already chosen during the game.</p>

<p>Bianca wants to minimize the area of the final piece of paper while Alex wants to maximize it. Let $S(a,b)$ be the area of the final piece assuming optimal play.</p>

<p>For example, $S(2,2) = 1/36$ and $S(2, 3) = 1/1800 \approx 5.5555555556\mathrm {e}{-4}$.</p>

<p>Find $S(5,8)$. Give your answer in scientific notation rounded to ten significant digits after the decimal point. Use a lowercase e to separate the mantissa and the exponent.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
