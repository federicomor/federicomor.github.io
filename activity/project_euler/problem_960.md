+++
title = "P960"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_959/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_961/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Stone Game Solitaire</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th September 2025, 02:00 am; Solved by 163;<br>Difficulty level: 19</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=960">Problem 960</a></h3></div>
<div class="problem_content" role="problem">
<p>
There are $n$ distinct piles of stones, each of size $n-1$. Starting with an initial score of $0$, the following procedure is repeated:</p>
<ol>
<li>Choose any two piles and remove exactly $n$ stones in total from the two piles.</li>
<li>If the number of stones removed from the two piles were $a$ and $b$, add $\min(a,b)$ to the score.</li></ol>

<p>
If all piles are eventually emptied, the current score is confirmed as final. However, if one gets "stuck" and cannot empty all piles, the current score is discarded, resulting in a final score of $0$.</p>

<p>
Three example sequences of turns are illustrated below for $n=4$, with each tuple representing pile sizes as one proceeds, and with additions to the score indicated above the arrows.
$$
\begin{align}
&amp;(3,3,3,3)\xrightarrow{+1}(0,3,2,3)\xrightarrow{+1}(0,3,1,0)\xrightarrow{+1}(0,0,0,0)&amp;:\quad\text{final score }=3\\
&amp;(3,3,3,3)\xrightarrow{+1}(3,0,3,2)\xrightarrow{+2}(1,0,3,0)\xrightarrow{+1}(0,0,0,0)&amp;:\quad\text{final score }=4\\
&amp;(3,3,3,3)\xrightarrow{+2}(1,3,1,3)\xrightarrow{+1}(1,2,1,0)\rightarrow\text{stuck!}&amp;:\quad\text{final score }=0
\end{align}
$$</p>

<p>
Define $F(n)$ to be the sum of the final scores achieved for every sequence of turns which successfully empty all piles.</p>

<p>
You are given $F(3)=12$, $F(4)=360$, and $F(8)=16785941760$.</p>

<p>
Find $F(100)$. Give your answer modulo $10^9+7$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
