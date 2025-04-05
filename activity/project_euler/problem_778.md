+++
title = "P778"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_777/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_779/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Freshman's Product</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 26th December 2021, 10:00 am; Solved by 451;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=778">Problem 778</a></h3></div>
<div class="problem_content" role="problem">
<p>
If $a,b$ are two nonnegative integers with decimal representations $a=(\dots a_2a_1a_0)$ and $b=(\dots b_2b_1b_0)$ respectively, then the <i>freshman's product</i> of $a$ and $b$, denoted $a\boxtimes b$, is the integer $c$ with decimal representation $c=(\dots c_2c_1c_0)$ such that $c_i$ is the last digit of $a_i\cdot b_i$.<br>
For example, $234 \boxtimes 765 = 480$.
</p>
<p>
Let $F(R,M)$ be the sum of $x_1 \boxtimes \dots \boxtimes x_R$ for all sequences of integers $(x_1,\dots,x_R)$ with $0\leq x_i \leq M$.<br>
For example, $F(2, 7) = 204$, and $F(23, 76) \equiv 5870548 \pmod{ 1\,000\,000\,009}$.
</p>
<p>
Find $F(234567,765432)$, give your answer modulo $1\,000\,000\,009$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
