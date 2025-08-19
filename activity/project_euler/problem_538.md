+++
title = "P538"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_537/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="javascript:void(0)" onclick="getRandomProblem()" style="color: black; text-decoration: none;" title="random problem">🎲 </a>
<script>
  function getRandomProblem() {
    fetch('/activity/project_euler/data.txt') 
      .then(response => response.text())
      .then(data => {
        const maxProblems = parseInt(data.trim(), 10);
        const randomProblemNumber = Math.floor(Math.random() * maxProblems) + 1;
        window.location = '/activity/project_euler/problem_' + randomProblemNumber + '/';
      })
      .catch(err => console.error('Error fetching max problems:', err));
  }
</script>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_539/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Maximum Quadrilaterals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 13th December 2015, 01:00 am; Solved by 368;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=538">Problem 538</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider a positive integer sequence $S = (s_1, s_2, \dots, s_n)$.</p>

<p>Let $f(S)$ be the perimeter of the maximum-area quadrilateral whose side lengths are $4$ elements $(s_i, s_j, s_k, s_l)$ of $S$ (all $i, j, k, l$ distinct). If there are many quadrilaterals with the same maximum area, then choose the one with the largest perimeter.</p>

<p>For example, if $S = (8, 9, 14, 9, 27)$, then we can take the elements $(9, 14, 9, 27)$ and form an <strong class="tooltip">isosceles trapezium<span class="tooltiptext">An isosceles trapezium (US: trapezoid) is a quadrilateral where one pair of opposite sides are parallel and of different lengths, and the other pair has the same length.</span></strong> with parallel side lengths $14$ and $27$ and both leg lengths $9$. The area of this quadrilateral is $127.611470879\cdots$ It can be shown that this is the largest area for any quadrilateral that can be formed using side lengths from $S$. Therefore, $f(S) = 9 + 14 + 9 + 27 = 59$.</p>

<p>Let $u_n = 2^{B(3n)} + 3^{B(2n)} + B(n + 1)$, where $B(k)$ is the number of $1$ bits of $k$ in base $2$.<br>
For example, $B(6) = 2$, $B(10) = 2$ and $B(15) = 4$, and $u_5 = 2^4 + 3^2 + 2 = 27$.</p>

<p>Also, let $U_n$ be the sequence $(u_1, u_2, \dots, u_n)$.<br>
For example, $U_{10} = (8, 9, 14, 9, 27, 16, 36, 9, 27, 28)$.</p>

<p>It can be shown that $f(U_5) = 59$, $f(U_{10}) = 118$, $f(U_{150}) = 3223$.<br>
It can also be shown that $\sum f(U_n) = 234761$ for $4 \le n \le 150$.<br>
Find $\sum f(U_n)$ for $4 \le n \le 3\,000\,000$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
