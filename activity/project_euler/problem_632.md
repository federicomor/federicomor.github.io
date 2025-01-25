+++
title = "P632"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_631/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_633/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Square Prime Factors</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 28th July 2018, 01:00 pm; Solved by 535;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=632">Problem 632</a></h3></div>
<div class="problem_content" role="problem">
<p>For an integer $n$, we define the <dfn>square prime factors</dfn> of $n$ to be the primes whose square divides $n$. For example, the square prime factors of $1500=2^2 \times 3 \times 5^3$ are $2$ and $5$.</p>

<p>Let $C_k(N)$ be the number of integers between $1$ and $N$ inclusive with exactly $k$ square prime factors. You are given some values of $C_k(N)$ in the table below.</p>


\[\begin{array}{|c|c|c|c|c|c|c|}
\hline

&amp; k = 0 &amp; k = 1 &amp; k = 2 &amp; k = 3 &amp; k = 4 &amp; k = 5 \\
\hline
N=10 &amp; 7 &amp; 3 &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\
\hline
N=10^2 &amp; 61 &amp; 36 &amp; 3 &amp; 0 &amp; 0 &amp; 0 \\
\hline
N=10^3 &amp; 608 &amp; 343 &amp; 48 &amp; 1 &amp; 0 &amp; 0 \\
\hline
N=10^4 &amp; 6083 &amp; 3363 &amp; 533 &amp; 21 &amp; 0 &amp; 0 \\
\hline
N=10^5 &amp; 60794 &amp; 33562 &amp; 5345 &amp; 297 &amp; 2 &amp; 0 \\
\hline
N=10^6 &amp; 607926 &amp; 335438 &amp; 53358 &amp; 3218 &amp; 60 &amp; 0 \\
\hline
N=10^7 &amp; 6079291 &amp; 3353956 &amp; 533140 &amp; 32777 &amp; 834 &amp; 2 \\
\hline
N=10^8 &amp; 60792694 &amp; 33539196 &amp; 5329747 &amp; 329028 &amp; 9257 &amp; 78 \\
\hline
\end{array}\]


<p>Find the product of all non-zero $C_k(10^{16})$. Give the result reduced modulo $1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
