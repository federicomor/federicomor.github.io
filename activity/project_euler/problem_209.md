+++
title = "P209"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_208/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_210/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Circular Logic</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 19th September 2008, 06:00 pm; Solved by 2745;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=209">Problem 209</a></h3></div>
<div class="problem_content" role="problem">
<p>A $k$-input <strong>binary truth table</strong> is a map from $k$ input bits (binary digits, $0$ [false] or $1$ [true]) to $1$ output bit. For example, the $2$-input binary truth tables for the logical $\mathbin{\text{AND}}$ and $\mathbin{\text{XOR}}$ functions are:</p>
<div style="float:left;margin:10px 50px;text-align:center;">
<table class="grid"><tr><th style="width:50px;">$x$</th>
<th style="width:50px;">$y$</th>
<th>$x \mathbin{\text{AND}} y$</th></tr>
<tr><td align="center">$0$</td><td align="center">$0$</td><td align="center">$0$</td></tr><tr><td align="center">$0$</td><td align="center">$1$</td><td align="center">$0$</td></tr><tr><td align="center">$1$</td><td align="center">$0$</td><td align="center">$0$</td></tr><tr><td align="center">$1$</td><td align="center">$1$</td><td align="center">$1$</td></tr></table>
</div>
<div style="float:left;margin:10px 50px;text-align:center;">
<table class="grid"><tr><th style="width:50px;">$x$</th>
<th style="width:50px;">$y$</th>
<th>$x\mathbin{\text{XOR}}y$</th></tr>
<tr><td align="center">$0$</td><td align="center">$0$</td><td align="center">$0$</td></tr><tr><td align="center">$0$</td><td align="center">$1$</td><td align="center">$1$</td></tr><tr><td align="center">$1$</td><td align="center">$0$</td><td align="center">$1$</td></tr><tr><td align="center">$1$</td><td align="center">$1$</td><td align="center">$0$</td></tr></table>
</div>
<br clear="all">
<p>How many $6$-input binary truth tables, $\tau$, satisfy the formula
$$\tau(a, b, c, d, e, f) \mathbin{\text{AND}} \tau(b, c, d, e, f, a \mathbin{\text{XOR}} (b \mathbin{\text{AND}} c)) = 0$$
for all $6$-bit inputs $(a, b, c, d, e, f)$?
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
