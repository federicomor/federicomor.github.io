+++
title = "P361"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_360/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_362/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Subsequence of Thue-Morse Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 4th December 2011, 04:00 am; Solved by 350;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=361">Problem 361</a></h3></div>
<div class="problem_content" role="problem">
<p>The <strong>Thue-Morse sequence</strong> $\{T_n\}$ is a binary sequence satisfying:</p>
<ul><li>$T_0 = 0$</li>
<li>$T_{2n} = T_n$</li>
<li>$T_{2n + 1} = 1 - T_n$</li>
</ul><p>
The first several terms of $\{T_n\}$ are given as follows:<br>
$01101001{\color{red}10010}1101001011001101001\cdots$
</p>

<p>
We define $\{A_n\}$ as the sorted sequence of integers such that the binary expression of each element appears as a subsequence in $\{T_n\}$.<br>
For example, the decimal number $18$ is expressed as $10010$ in binary. $10010$ appears in $\{T_n\}$ ($T_8$ to $T_{12}$), so $18$ is an element of $\{A_n\}$.<br>
The decimal number $14$ is expressed as $1110$ in binary. $1110$ never appears in $\{T_n\}$, so $14$ is not an element of $\{A_n\}$.
</p>

<p>
The first several terms of $\{A_n\}$ are given as follows:</p>

<table align="center"><tr>
<td align="center" width="30">$n$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$2$</td>
<td align="right" width="30">$3$</td>
<td align="right" width="30">$4$</td>
<td align="right" width="30">$5$</td>
<td align="right" width="30">$6$</td>
<td align="right" width="30">$7$</td>
<td align="right" width="30">$8$</td>
<td align="right" width="30">$9$</td>
<td align="right" width="30">$10$</td>
<td align="right" width="30">$11$</td>
<td align="right" width="30">$12$</td>
<td align="right" width="30">$\cdots$</td>
</tr><tr>
<td align="center" width="30">$A_n$</td>
<td align="right" width="30">$0$</td>
<td align="right" width="30">$1$</td>
<td align="right" width="30">$2$</td>
<td align="right" width="30">$3$</td>
<td align="right" width="30">$4$</td>
<td align="right" width="30">$5$</td>
<td align="right" width="30">$6$</td>
<td align="right" width="30">$9$</td>
<td align="right" width="30">$10$</td>
<td align="right" width="30">$11$</td>
<td align="right" width="30">$12$</td>
<td align="right" width="30">$13$</td>
<td align="right" width="30">$18$</td>
<td align="right" width="30">$\cdots$</td>
</tr></table>

<p>
We can also verify that $A_{100} = 3251$ and $A_{1000} = 80852364498$.
</p>

<p>
Find the last $9$ digits of $\sum \limits_{k = 1}^{18} A_{10^k}$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
