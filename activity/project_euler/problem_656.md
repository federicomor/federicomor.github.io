+++
title = "P656"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_655/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_657/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Palindromic Sequences</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th February 2019, 10:00 am; Solved by 269;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=656">Problem 656</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given an irrational number $\alpha$, let $S_\alpha(n)$ be the sequence $S_\alpha(n)=\lfloor {\alpha \cdot n} \rfloor - \lfloor {\alpha \cdot (n-1)} \rfloor$ for $n \ge 1$.<br> 
($\lfloor \cdots \rfloor$ is the floor-function.)
</p>
<p>
It can be proven that for any irrational $\alpha$ there exist infinitely many values of $n$ such that the subsequence $ \{S_\alpha(1),S_\alpha(2)...S_\alpha(n) \} $ is palindromic.</p>
<p>
The first $20$ values of $n$ that give a palindromic subsequence for $\alpha = \sqrt{31}$ are:
$1$, $3$, $5$, $7$, $44$, $81$, $118$, $273$, $3158$, $9201$, $15244$, $21287$, $133765$, $246243$, $358721$, $829920$, $9600319$, $27971037$, $46341755$, $64712473$.</p>
<p>
Let $H_g(\alpha)$ be the sum of the first $g$ values of $n$  for which the corresponding subsequence is palindromic.<br>
So $H_{20}(\sqrt{31})=150243655$.
</p><p>
Let $T=\{2,3,5,6,7,8,10,\dots,1000\}$ be the set of positive integers, not exceeding $1000$, excluding perfect squares.<br>
Calculate the sum of $H_{100}(\sqrt \beta)$ for  $\beta \in T$. Give the last $15$ digits of your answer.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
