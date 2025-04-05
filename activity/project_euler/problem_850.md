+++
title = "P850"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_849/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_851/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fractions of Powers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd July 2023, 08:00 am; Solved by 134;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=850">Problem 850</a></h3></div>
<div class="problem_content" role="problem">
<p>Any positive real number $x$ can be decomposed into integer and fractional parts $\lfloor x \rfloor + \{x\}$, where $\lfloor x \rfloor$ (the floor function) is an integer, and $0\le \{x\} &lt; 1$.</p>

<p>For positive integers $k$ and $n$, define the function
\begin{align}
f_k(n) = \sum_{i=1}^{n}\left\{ \frac{i^k}{n} \right\}
\end{align}
For example, $f_5(10)=4.5$ and $f_7(1234)=616.5$.</p>

<p>Let
\begin{align}
S(N) = \sum_{\substack{k=1 \\ k\text{ odd} } }^{N} \sum_{n=1}^{N}  f_k(n)
\end{align}
You are given that $S(10)=100.5$ and $S(10^3)=123687804$.</p>

<p>Find $\lfloor S(33557799775533) \rfloor$. Give your answer modulo 977676779.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
