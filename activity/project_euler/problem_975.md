+++
title = "P975"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_974/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_976/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Winding Path</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 20th December 2025, 07:00 pm; Solved by 122;<br>Difficulty level: 26</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=975">Problem 975</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given a pair $(a,b)$ of <b>coprime odd positive integers</b>, define the function
$$H_{a,b}(x)=\frac{1}{2}-\frac{1}{2(a+b)}\Bigl(b\cos(a\pi x)+a\cos(b\pi x)\Bigr)
$$It can be seen that $H_{a,b}(0)=0$, $H_{a,b}(1)=1$, and $0 &lt; H_{a,b}(x) &lt; 1$ for all $x$ strictly between $0$ and $1$.
</p><p>
Given two such pairs $(a,b)$ and $(c,d)$, paths of infinitesimal width traverse the unit cube internally through every point $(x,y,z)\in [0,1]^3$ such that $z=H_{a,b}(x)=H_{c,d}(y)$. Remarkably, it can be shown that the point $(0,0,0)$ is always connected to the opposite corner $(1,1,1)$. Furthermore, with the additional condition $\gcd(a+b,c+d)\in\{2,4\}$, it can be shown that there is exactly one path connecting the two points.
</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0975_examples.png?1763356593" alt="0975_examples.png"></div>
<p>
Shown above are two examples, as viewed from above the cube. That is, we see the paths projected onto the $xy$-plane, with corresponding $z$ values indicated with varying colour. In the second example some paths are coloured grey to indicate that, while they exist, they do not form part of the path from $(0,0,0)$ to $(1,1,1)$.
</p>
<p>
Define $F(a, b, c, d)$ to be the sum of the absolute changes in height (or $z$-coordinate) over all uphill and downhill sections of the path from $(0,0,0)$ to $(1,1,1)$. In the first example above, the path climbs $\approx4.00886$ over eleven uphill sections, and descends $\approx3.00886$ over ten downhill sections, giving $F(3,5,3,7)\approx7.01772$. You are also given $F(7,17,9,19)\approx 26.79578$.
</p>
<p>
Let $G(m, n)$ be the sum of $F(p,q,p,2q-p)$ over all pairs $(p,q)$ of primes, $m\leq p &lt; q\leq n$. You are given $G(3, 20)\approx463.80866$.
</p><p>
Find $G(500,1000)$ giving your answer rounded to five digits after the decimal point.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
