+++
title = "P316"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_315/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_317/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Numbers in Decimal Expansions</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 25th December 2010, 01:00 pm; Solved by 745;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=316">Problem 316</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $p = p_1 p_2 p_3 \cdots$ be an infinite sequence of random digits, selected from $\{0,1,2,3,4,5,6,7,8,9\}$ with equal probability.<br>
It can be seen that $p$ corresponds to the real number $0.p_1 p_2 p_3 \cdots$ <br>
It can also be seen that choosing a random real number from the interval $[0,1)$ is equivalent to choosing an infinite sequence of random digits selected from $\{0,1,2,3,4,5,6,7,8,9\}$ with equal probability.</p>

<p>For any positive integer $n$ with $d$ decimal digits, let $k$ be the smallest index such that $p_k, p_{k + 1}, \dots, p_{k + d - 1}$ are the decimal digits of $n$, in the same order.<br>
Also, let $g(n)$ be the expected value of $k$; it can be proven that $g(n)$ is always finite and, interestingly, always an integer number.</p>

<p>For example, if $n = 535$, then<br>
for $p = 31415926\mathbf{535}897\cdots$, we get $k = 9$<br>
for $p = 35528714365004956000049084876408468\mathbf{535}4\cdots$, we get $k = 36$<br>
etc and we find that $g(535) = 1008$.</p>

<p>Given that $\displaystyle\sum_{n = 2}^{999} g \left(\left\lfloor\frac{10^6} n \right\rfloor\right) = 27280188$, find $\displaystyle\sum_{n = 2}^{999999} g \left(\left\lfloor\frac{10^{16} } n \right\rfloor\right)$.</p>

<u><i>Note</i></u>: $\lfloor x \rfloor$ represents the floor function.
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
