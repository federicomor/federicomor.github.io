+++
title = "P930"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_929/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_931/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The Gathering</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd February 2025, 10:00 am; Solved by 97</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=930">Problem 930</a></h3></div>
<div class="problem_content" role="problem">
<p>Given $n\ge 2$ bowls arranged in a circle, $m\ge 2$ balls are distributed amongst them.</p>

<p>Initially the balls are distributed randomly: for each ball, a bowl is chosen equiprobably and independently of the other balls. After this is done, we start the following process:</p>
<ol>
<li>Choose one of the $m$ balls equiprobably at random.</li>
<li>Choose a direction to move - either clockwise or anticlockwise - again equiprobably at random.</li>
<li>Move the chosen ball to the neighbouring bowl in the chosen direction.</li>
<li>Return to step 1.</li>
</ol>

<p>This process stops when all the $m$ balls are located in the same bowl. Note that this may be after zero steps, if the balls happen to have been initially distributed all in the same bowl.</p>

<p>Let $F(n, m)$ be the expected number of times we move a ball before the process stops. For example, $F(2, 2) = \frac{1}{2}$, $F(3, 2) = \frac{4}{3}$, $F(2, 3) = \frac{9}{4}$, and $F(4, 5) = \frac{6875}{24}$.</p>

<p>Let $G(N, M) = \sum_{n=2}^N \sum_{m=2}^M F(n, m)$. For example, $G(3, 3) = \frac{137}{12}$ and $G(4, 5) = \frac{6277}{12}$. You are also given that $G(6, 6) \approx 1.681521567954e4$ in scientific format with 12 significant digits after the decimal point.</p>

<p>Find $G(12, 12)$. Give your answer in scientific format with 12 significant digits after the decimal point.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

\literate{/_literate/pe_930.jl}

{{ addcomments }}
