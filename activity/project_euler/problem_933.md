+++
title = "P933"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_932/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_934/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Paper Cutting</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 22nd February 2025, 07:00 pm; Solved by 120</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=933">Problem 933</a></h3></div>
<div class="problem_content" role="problem">
<p>
Starting with one piece of integer-sized rectangle paper, two players make moves in turn.<br>
A valid move consists of choosing one piece of paper and cutting it <b>both</b> horizontally and vertically, so that it becomes four pieces of smaller rectangle papers, all of which are integer-sized.<br>
The player that does not have a valid move loses the game.</p>

<p>
Let $C(w, h)$ be the number of winning moves for the first player, when the original paper has size $w \times h$. For example, $C(5,3)=4$, with the four winning moves shown below.</p>
<center><img src="https://projecteuler.net/resources/images/0933_PaperCutting3.jpg?1738704656" alt="0933_PaperCutting2.jpg"></center>
<p>
Also write $\displaystyle D(W, H) = \sum_{w = 2}^W\sum_{h = 2}^H C(w, h)$. You are given that $D(12, 123) = 327398$.</p>

<p>
Find $D(123, 1234567)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
