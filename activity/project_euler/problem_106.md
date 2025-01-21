+++
title = "Special Subset Sums: Meta-testing"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_105/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_107/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Special Subset Sums: Meta-testing</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 7th October 2005, 06:00 pm; Solved by 7223;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=106">Problem 106</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $S(A)$ represent the sum of elements in set $A$ of size $n$. We shall call it a special sum set if for any two non-empty disjoint subsets, $B$ and $C$, the following properties are true:</p>
<ol><li>$S(B) \ne S(C)$; that is, sums of subsets cannot be equal.</li>
<li>If $B$ contains more elements than $C$ then $S(B) \gt S(C)$.</li>
</ol><p>For this problem we shall assume that a given set contains $n$ strictly increasing elements and it already satisfies the second rule.</p>
<p>Surprisingly, out of the $25$ possible subset pairs that can be obtained from a set for which $n = 4$, only $1$ of these pairs need to be tested for equality (first rule). Similarly, when $n = 7$, only $70$ out of the $966$ subset pairs need to be tested.</p>
<p>For $n = 12$, how many of the $261625$ subset pairs that can be obtained need to be tested for equality?</p>
<p class="smaller">NOTE: This problem is related to <a href="https://projecteuler.net/problem=103">Problem 103</a> and <a href="https://projecteuler.net/problem=105">Problem 105</a>.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
