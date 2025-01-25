+++
title = "P462"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_461/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_463/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Permutation of 3-smooth Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 8th March 2014, 07:00 pm; Solved by 355;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=462">Problem 462</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <strong>$3$-smooth number</strong> is an integer which has no prime factor larger than $3$. For an integer $N$, we define $S(N)$ as the set of <span style="white-space:nowrap;">$3$-smooth</span> numbers less than or equal to $N$. For example, $S(20) = \{ 1, 2, 3, 4, 6, 8, 9, 12, 16, 18 \}$.
</p>
<p>
We define $F(N)$ as the number of permutations of $S(N)$ in which each element comes after all of its proper divisors.
</p>
<p>
This is one of the possible permutations for $N = 20$.<br>
- $1, 2, 4, 3, 9, 8, 16, 6, 18, 12.$<br>
This is not a valid permutation because $12$ comes before its divisor $6$.<br>
- $1, 2, 4, 3, 9, 8, \boldsymbol{12}, 16, \boldsymbol 6, 18$.
</p>
<p>
We can verify that $F(6) = 5$, $F(8) = 9$, $F(20) = 450$ and $F(1000) \approx 8.8521816557\mathrm e21$.<br>
Find $F(10^{18})$. Give as your answer its scientific notation rounded to ten digits after the decimal point.<br>
When giving your answer, use a lowercase e to separate mantissa and exponent. E.g. if the answer is $112\,233\,445\,566\,778\,899$ then the answer format would be 1.1223344557e17.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
