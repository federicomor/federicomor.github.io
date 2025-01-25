+++
title = "P419"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_418/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_420/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Look and Say Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 16th March 2013, 10:00 pm; Solved by 538;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=419">Problem 419</a></h3></div>
<div class="problem_content" role="problem">
<p>
The <strong>look and say</strong> sequence goes 1, 11, 21, 1211, 111221, 312211, 13112221, 1113213211, ...<br>
The sequence starts with 1 and all other members are obtained by describing the previous member in terms of consecutive digits.<br>
It helps to do this out loud:<br>
1 is 'one one' → 11<br>
11 is 'two ones' → 21<br>
21 is 'one two and one one' → 1211 <br>
1211 is 'one one, one two and two ones' → 111221<br>
111221 is 'three ones, two twos and one one' → 312211<br>
...
</p>
<p>
Define $A(n)$, $B(n)$ and $C(n)$ as the number of ones, twos and threes in the $n$'th element of the sequence respectively.<br>
One can verify that $A(40) = 31254$, $B(40) = 20259$ and $C(40) = 11625$.
</p>
<p>
Find $A(n)$, $B(n)$ and $C(n)$ for $n = 10^{12}$.<br>
Give your answer modulo $2^{30}$ and separate your values for $A$, $B$ and $C$ by a comma.<br>
E.g. for $n = 40$ the answer would be 31254,20259,11625
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
