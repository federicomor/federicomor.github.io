+++
title = "P978"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_977/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_979/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Random Walk Skewness</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th January 2026, 04:00 am; Solved by 296</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=978">Problem 978</a></h3></div>
<div class="problem_content" role="problem">
<p>
In this problem we consider a <b>random walk</b> on the integers $\mathbb{Z}$, in which our position at time $t$ is denoted as $X_t$.
</p>
<p>
At time $0$ we start at position $0$. That is, $X_0=0$.<br>
At time $1$ we jump to position $1$. That is, $X_1=1$.<br>
Thereafter, at time $t=2,3,\dots$ we make a jump of size $|X_{t-2}|$ in either the positive or negative direction, with probability $1/2$ each way. If $X_{t-2}=0$ we stay put at time $t$.
</p>
<p>
At $t=5$ we find our position $X_5$ has the following distribution:
$$
X_5=\begin{cases}
-1\quad&amp;\text{with probability }3/8\\
1\quad&amp;\text{with probability }3/8\\
3\quad&amp;\text{with probability }1/8\\
5\quad&amp;\text{with probability }1/8\\
\end{cases}
$$
The <b>standard deviation</b> $\sigma$ of a <b>random variable</b> $X$ with <b>mean</b> $\mu$ is defined as
$$
\sigma=\sqrt{\mathbb{E}[X^2]-\mu^2}
$$
Furthermore the <b>skewness</b> of $X$ is defined as
$$
\text{Skew}(X)=\mathbb{E}\biggl[\Bigl(\frac{X-\mu}{\sigma}\Bigr)^3\biggr]
$$
For $X_5$, which has mean $1$ and standard deviation $2$, we find $\text{Skew}(X_5)=0.75$. You are also given $\text{Skew}(X_{10})\approx2.50997097$.
</p>
<p>
Find $\text{Skew}(X_{50})$. Give your answer rounded to eight digits after the decimal point.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
