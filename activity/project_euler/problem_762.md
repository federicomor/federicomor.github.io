+++
title = "P762"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_761/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_763/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Amoebas in a 2D Grid</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th September 2021, 02:00 pm; Solved by 223;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=762">Problem 762</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider a two dimensional grid of squares. The grid has 4 rows but infinitely many columns.</p>
<p>An amoeba in square $(x, y)$ can divide itself into two amoebas to occupy the squares $(x+1,y)$ and $(x+1,(y+1) \bmod 4)$, provided these squares are empty.</p>

<p>The following diagrams show two cases of an amoeba placed in square <b>A</b> of each grid. When it divides, it is replaced with two amoebas, one at each of the squares marked with <b>B</b>:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p762_table_a.png" class="dark_img" alt="" /><img src="https://projecteuler.net/project/images/p762_table_b.png" class="dark_img" alt="" /></div>

<p>Originally there is only one amoeba in the square $(0, 0)$. After $N$ divisions there will be $N+1$ amoebas arranged in the grid. An arrangement may be reached in several different ways but it is only counted once. Let $C(N)$ be the number of different possible arrangements after $N$ divisions.</p>

<p>For example, $C(2) = 2$, $C(10) = 1301$, $C(20)=5895236$ and the last nine digits of $C(100)$ are $125923036$.</p>

<p>Find $C(100\,000)$, enter the last nine digits as your answer.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
