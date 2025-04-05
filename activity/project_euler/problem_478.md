+++
title = "P478"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_477/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_479/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Mixtures</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 30th August 2014, 07:00 pm; Solved by 220;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=478">Problem 478</a></h3></div>
<div class="problem_content" role="problem">
<p>Let us consider <b>mixtures</b> of three substances: <b>A</b>, <b>B</b> and <b>C</b>. A mixture can be described by a ratio of the amounts of <b>A</b>, <b>B</b>, and <b>C</b> in it, i.e., $(a : b : c)$. For example, a mixture described by the ratio $(2 : 3 : 5)$ contains $20\%$ <b>A</b>, $30\%$ <b>B</b> and $50\%$ <b>C</b>.</p>

<p>For the purposes of this problem, we cannot separate the individual components from a mixture. However, we can combine different amounts of different mixtures to form mixtures with new ratios.</p>

<p>For example, say we have three mixtures with ratios $(3 : 0 : 2)$, $(3: 6 : 11)$ and $(3 : 3 : 4)$. By mixing $10$ units of the first, $20$ units of the second and $30$ units of the third, we get a new mixture with ratio $(6 : 5 : 9)$, since:<br>
$(10 \cdot \tfrac 3 5$ + $20 \cdot \tfrac 3 {20} + 30 \cdot \tfrac 3 {10} : 10 \cdot \tfrac 0 5 + 20 \cdot \tfrac 6 {20} + 30 \cdot \tfrac 3 {10} : 10 \cdot \tfrac 2 5 + 20 \cdot \tfrac {11} {20} + 30 \cdot \tfrac 4 {10})
= (18 : 15 : 27) = (6 : 5 : 9)$
</p>

<p>However, with the same three mixtures, it is impossible to form the ratio $(3 : 2 : 1)$, since the amount of <b>B</b> is always less than the amount of <b>C</b>.</p>

<p>Let $n$ be a positive integer. Suppose that for every triple of integers $(a, b, c)$ with $0 \le a, b, c \le n$ and $\gcd(a, b, c) = 1$, we have a mixture with ratio $(a : b : c)$. Let $M(n)$ be the set of all such mixtures.</p>

<p>For example, $M(2)$ contains the $19$ mixtures with the following ratios:</p>
\begin{align}
\{&amp;(0 : 0 : 1), (0 : 1 : 0), (0 : 1 : 1), (0 : 1 : 2), (0 : 2 : 1),\\
&amp;(1 : 0 : 0), (1 : 0 : 1), (1 : 0 : 2), (1 : 1 : 0), (1 : 1 : 1),\\
&amp;(1 : 1 : 2), (1 : 2 : 0), (1 : 2 : 1), (1 : 2 : 2), (2 : 0 : 1),\\
&amp;(2 : 1 : 0), (2 : 1 : 1), (2 : 1 : 2), (2 : 2 : 1)\}.
\end{align}

<p>Let $E(n)$ be the number of subsets of $M(n)$ which can produce the mixture with ratio $(1 : 1 : 1)$, i.e., the mixture with equal parts <b>A</b>, <b>B</b> and <b>C</b>.<br>
We can verify that $E(1) = 103$, $E(2) = 520447$, $E(10) \bmod 11^8 = 82608406$ and $E(500) \bmod 11^8 = 13801403$.<br>
Find $E(10\,000\,000) \bmod 11^8$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
