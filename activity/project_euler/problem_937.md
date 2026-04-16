+++
title = "P937"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_936/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_938/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Equiproduct Partition</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 23rd March 2025, 07:00 am; Solved by 167;<br>Difficulty level: 23</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=937">Problem 937</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $\theta=\sqrt{-2}$.</p>

<p>Define $T$ to be the set of numbers of the form $a+b\theta$, where $a$ and $b$ are integers and either $a\gt 0$, or $a=0$ and $b\gt 0$. For a set $S \subseteq T$ and element $z \in T$, define $p(S,z)$ to be the number of ways of choosing two distinct elements from $S$ with product either $z$ or $-z$.</p>

<p>For example if $S=\{1,2,4\}$ and $z=4$, there is only one valid pair of elements with product $\pm4$, namely $1$ and $4$. Thus, in this case $p(S,z)=1$.</p>

<p>For another example, if $S=\{1,\theta,1+\theta,2-\theta\}$ and $z=2-\theta$, we have $1\cdot(2-\theta)=z$ and $\theta\cdot(1+\theta)=-z$, giving $p(S,z)=2$.</p>

<p>Let $A$ and $B$ be two sets satisfying the following conditions:</p>
<ul>
<li>$1 \in A$</li>
<li>$A \cap B = \emptyset$</li>
<li>$A \cup B = T$</li>
<li>$p(A,z) = p(B,z)$ for all $z\in T$</li>
</ul>
<p>Remarkably, these four conditions uniquely determine the sets $A$ and $B$.</p>

<p>Let $F_n$ be the set of the first $n$ factorials: $F_n=\{1!,2!,\dots,n!\}$, and define $G(n)$ to be the sum of all elements of $F_n\cap A$.</p>

<p>You are given $G(4) = 25$, $G(7) = 745$, and $G(100) \equiv 709772949 \pmod{10^9+7}$.</p>

<p>Find $G(10^8)$ and give your answer modulo $10^9+7$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
