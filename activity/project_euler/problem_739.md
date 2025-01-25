+++
title = "P739"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_738/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_740/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Summation of Summations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 20th December 2020, 10:00 am; Solved by 547;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=739">Problem 739</a></h3></div>
<div class="problem_content" role="problem">
<p>
Take a sequence of length $n$. Discard the first term then make a sequence of the partial summations. Continue to do this over and over until we are left with a single term. We define this to be $f(n)$.
</p>
<p>
Consider the example where we start with a sequence of length 8:
</p>
<p style="text-align:center;">
$
\begin{array}{rrrrrrrr}
1&amp;1&amp;1&amp;1&amp;1&amp;1&amp;1&amp;1\\
 &amp;1&amp;2&amp;3&amp;4&amp;5&amp; 6 &amp;7\\
 &amp; &amp;2&amp;5&amp;9&amp;14&amp;20&amp;27\\
 &amp; &amp; &amp;5&amp;14&amp;28&amp;48&amp;75\\
 &amp; &amp; &amp; &amp;14&amp;42&amp;90&amp;165\\
 &amp; &amp; &amp; &amp; &amp; 42 &amp; 132 &amp; 297\\
 &amp; &amp; &amp; &amp; &amp; &amp; 132 &amp;429\\
 &amp; &amp; &amp; &amp; &amp; &amp; &amp;429\\
\end{array}
$
</p>
<p>
Then the final number is $429$, so $f(8) = 429$.
</p>
<p>
For this problem we start with the sequence $1,3,4,7,11,18,29,47,\ldots$<br />
This is the Lucas sequence where two terms are added to get the next term.<br /> 
Applying the same process as above we get $f(8) = 2663$.<br />
You are also given $f(20) = 742296999 $ modulo $1\,000\,000\,007$
</p>
<p>
Find $f(10^8)$. Give your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
