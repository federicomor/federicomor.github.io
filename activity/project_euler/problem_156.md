+++
title = "P156"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_155/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_157/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Counting Digits</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 25th May 2007, 10:00 pm; Solved by 2735;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=156">Problem 156</a></h3></div>
<div class="problem_content" role="problem">
<p>Starting from zero the natural numbers are written down in base $10$ like this:
<br>
$0\,1\,2\,3\,4\,5\,6\,7\,8\,9\,10\,11\,12\cdots$
</p>
<p>Consider the digit $d=1$. After we write down each number $n$, we will update the number of ones that have occurred and call this number $f(n,1)$. The first values for $f(n,1)$, then, are as follows:</p>
\begin{array}{cc}
n &amp; f(n, 1)\\
\hline
0 &amp; 0\\
1 &amp; 1\\
2 &amp; 1\\
3 &amp; 1\\
4 &amp; 1\\
5 &amp; 1\\
6 &amp; 1\\
7 &amp; 1\\
8 &amp; 1\\
9 &amp; 1\\
10 &amp; 2\\
11 &amp; 4\\
12 &amp; 5
\end{array}

<p>Note that $f(n,1)$ never equals $3$.
<br>
So the first two solutions of the equation $f(n,1)=n$ are $n=0$ and $n=1$. The next solution is $n=199981$.</p>
<p>In the same manner the function $f(n,d)$ gives the total number of digits $d$ that have been written down after the number $n$ has been written.
<br>
In fact, for every digit $d \ne 0$, $0$ is the first solution of the equation $f(n,d)=n$.</p>
<p>Let $s(d)$ be the sum of all the solutions for which $f(n,d)=n$.
<br>
You are given that $s(1)=22786974071$.</p>
<p>Find  $\sum s(d)$ for $1 \le d \le 9$.</p>
<p>Note: if, for some $n$, $f(n,d)=n$ for more than one value of $d$ this value of $n$ is counted again for every value of $d$ for which $f(n,d)=n$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
