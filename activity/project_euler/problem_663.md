+++
title = "P663"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_662/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_664/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sums of Subarrays</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 31st March 2019, 04:00 am; Solved by 404;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=663">Problem 663</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $t_k$ be the <b>tribonacci numbers</b> defined as: <br>
$\quad t_0 = t_1 = 0$;<br>
$\quad t_2 = 1$; <br>
$\quad t_k = t_{k-1} + t_{k-2} + t_{k-3} \quad \text{   for   }  k \ge 3$.</p>

<p>For a given integer $n$, let $A_n$ be an array of length $n$ (indexed from $0$ to $n-1$), that is initially filled with zeros.<br>
The array is changed iteratively by replacing $A_n[(t_{2 i-2} \bmod n)]$ with $A_n[(t_{2 i-2} \bmod n)]+2 (t_{2 i-1} \bmod n)-n+1$ in each step $i$.<br> 
After each step $i$, define $M_n(i)$ to be $\displaystyle \max\{\sum_{j=p}^q A_n[j]: 0\le p\le q \lt n\}$, the maximal sum of any contiguous subarray of $A_n$. </p>

<p>The first 6 steps for $n=5$ are illustrated below:<br>
Initial state: $\, A_5=\{0,0,0,0,0\}$<br>
Step 1: $\quad \Rightarrow A_5=\{-4,0,0,0,0\}$, $M_5(1)=0$<br>
Step 2: $\quad \Rightarrow A_5=\{-4, -2, 0, 0, 0\}$, $M_5(2)=0$<br>
Step 3: $\quad \Rightarrow A_5=\{-4, -2, 4, 0, 0\}$, $M_5(3)=4$<br>
Step 4: $\quad \Rightarrow A_5=\{-4, -2, 6, 0, 0\}$, $M_5(4)=6$<br>
Step 5: $\quad \Rightarrow A_5=\{-4, -2, 6, 0, 4\}$, $M_5(5)=10$<br>
Step 6: $\quad \Rightarrow A_5=\{-4, 2, 6, 0, 4\}$, $M_5(6)=12$<br>
</p>

<p>Let $\displaystyle S(n,l)=\sum_{i=1}^l M_n(i)$. Thus $S(5,6)=32$.<br>
You are given $S(5,100)=2416$, $S(14,100)=3881$ and $S(107,1000)=1618572$.</p>

<p>Find $S(10\,000\,003,10\,200\,000)-S(10\,000\,003,10\,000\,000)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
