+++
title = "Binary Circles"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_264/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_266/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Binary Circles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st November 2009, 09:00 am; Solved by 4542;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=265">Problem 265</a></h3></div>
<div class="problem_content" role="problem">
<p>$2^N$ binary digits can be placed in a circle so that all the $N$-digit clockwise subsequences are distinct.</p>

<p>For $N=3$, two such circular arrangements are possible, ignoring rotations:</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0265_BinaryCircles.gif?1678992056" class="dark_img" alt="0265_BinaryCircles.gif"></div>

<p>For the first arrangement, the $3$-digit subsequences, in clockwise order, are:<br>$000$, $001$, $010$, $101$, $011$, $111$, $110$ and $100$.</p>

<p>Each circular arrangement can be encoded as a number by concatenating the binary digits starting with the subsequence of all zeros as the most significant bits and proceeding clockwise. The two arrangements for $N=3$ are thus represented as $23$ and $29$:
</p>
\begin{align}
00010111_2 &amp;= 23\\
00011101_2 &amp;= 29
\end{align}

<p>Calling $S(N)$ the sum of the unique numeric representations, we can see that $S(3) = 23 + 29 = 52$.</p>

<p>Find $S(5)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
