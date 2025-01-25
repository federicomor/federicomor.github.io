+++
title = "P559"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_558/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_560/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Permuted Matrices</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th May 2016, 04:00 pm; Solved by 208;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=559">Problem 559</a></h3></div>
<div class="problem_content" role="problem">
<p>An <dfn>ascent</dfn> of a column $j$ in a matrix occurs if the value of column $j$ is smaller than the value of column $j + 1$ in all rows.
</p><p>
Let $P(k, r, n)$ be the number of $r \times n$ matrices with the following properties:</p>

<ul><li>The rows are permutations of $\{1, 2, 3, \dots, n\}$.</li>
<li> Numbering the first column as $1$, a column ascent occurs at column $j \lt n$ <b>if and only if</b> $j$ is not a multiple of $k$.</li>

</ul><p>For example, $P(1, 2, 3) = 19$, $P(2, 4, 6) = 65508751$ and $P(7, 5, 30) \bmod 1000000123 = 161858102$.</p>

Let $Q(n) = \displaystyle \sum_{k=1}^n P(k, n, n)$.<br>
For example, $Q(5) = 21879393751$ and $Q(50) \bmod 1000000123 = 819573537$.

<p>Find $Q(50000) \bmod 1000000123$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
