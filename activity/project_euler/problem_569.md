+++
title = "P569"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_568/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_570/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Prime Mountain Range</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th September 2016, 07:00 pm; Solved by 435;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=569">Problem 569</a></h3></div>
<div class="problem_content" role="problem">
<p>A <dfn>mountain range</dfn> consists of a line of mountains with slopes of exactly $45^\circ$, and heights governed by the prime numbers, $p_n$. The up-slope of the $k$<sup>th</sup> mountain is of height $p_{2k - 1}$, and the downslope is $p_{2k}$. The first few foot-hills of this range are illustrated below.</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0569-prime-mountain-range.gif?1678992057" alt="0569-prime-mountain-range.gif">
</div>

<p>Tenzing sets out to climb each one in turn, starting from the lowest. At the top of each peak, he looks back and counts how many of the previous peaks he can see. In the example above, the eye-line from the third mountain is drawn in red, showing that he can only see the peak of the second mountain from this viewpoint. Similarly, from the $9$<sup>th</sup> mountain, he can see three peaks, those of the $5$<sup>th</sup>, $7$<sup>th</sup> and $8$<sup>th</sup> mountain.</p>

<p>Let $P(k)$ be the number of peaks that are visible looking back from the $k$<sup>th</sup> mountain.  Hence $P(3)=1$ and $P(9)=3$.<br>
Also $\displaystyle \sum_{k=1}^{100} P(k) = 227$.</p>

<p>Find $\displaystyle \sum_{k=1}^{2500000} P(k)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
