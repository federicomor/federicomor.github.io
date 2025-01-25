+++
title = "P917"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_916/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_918/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Minimal Path Using Additive Cost</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th November 2024, 01:00 am; Solved by 202;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=917">Problem 917</a></h3></div>
<div class="problem_content" role="problem">
<p>The sequence $s_n$ is defined by $s_1 = 102022661$ and $s_n = s_{n-1}^2 \bmod {998388889}$ for $n &gt; 1$.</p>

<p>Let $a_n = s_{2n - 1}$ and $b_n = s_{2n}$ for $n=1,2,...$</p>

<p>Define an $N \times N$ matrix whose values are $M_{i,j} = a_i + b_j$.</p>

<p>Let $A(N)$ be the minimal path sum from $M_{1,1}$ (top left) to $M_{N,N}$ (bottom right), where each step is either right or down.</p>

<p>You are given $A(1) = 966774091$, $A(2) = 2388327490$ and $A(10) = 13389278727$.</p>

<p>Find $A(10^7)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
