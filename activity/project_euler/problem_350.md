+++
title = "P350"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_349/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_351/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Constraining the Least Greatest and the Greatest Least</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th September 2011, 07:00 pm; Solved by 546;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=350">Problem 350</a></h3></div>
<div class="problem_content" role="problem">
<p>A <dfn>list of size $n$</dfn> is a sequence of $n$ natural numbers.<br> Examples are $(2,4,6)$, $(2,6,4)$, $(10,6,15,6)$, and $(11)$.
</p><p>
The <strong>greatest common divisor</strong>, or $\gcd$, of a list is the largest natural number that divides all entries of the list. <br>Examples: $\gcd(2,6,4) = 2$, $\gcd(10,6,15,6) = 1$ and $\gcd(11) = 11$.
</p><p>
The <strong>least common multiple</strong>, or $\operatorname{lcm}$, of a list is the smallest natural number divisible by each entry of the list. <br>Examples: $\operatorname{lcm}(2,6,4) = 12$, $\operatorname{lcm}(10,6,15,6) = 30$ and $\operatorname{lcm}(11) = 11$.
</p><p>
Let $f(G, L, N)$ be the number of lists of size $N$ with $\gcd \ge G$ and $\operatorname{lcm} \le L$. For example:
</p><p>
$f(10, 100, 1) = 91$.<br>
$f(10, 100, 2) = 327$.<br>
$f(10, 100, 3) = 1135$.<br>
$f(10, 100, 1000) \bmod 101^4 = 3286053$.
</p><p>
Find $f(10^6, 10^{12}, 10^{18}) \bmod 101^4$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
