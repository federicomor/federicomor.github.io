+++
title = "P780"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_779/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_781/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Toriangulations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 8th January 2022, 04:00 pm; Solved by 149;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=780">Problem 780</a></h3></div>
<div class="problem_content" role="problem">
<p>For positive real numbers $a,b$, an $a\times b$ <strong>torus</strong> is a rectangle of width $a$ and height $b$, with left and right sides identified, as well as top and bottom sides identified. In other words, when tracing a path on the rectangle, reaching an edge results in "wrapping round" to the corresponding point on the opposite edge.</p>

<p>A <i>tiling</i> of a torus is a way to dissect it into equilateral triangles of edge length 1. For example, the following three diagrams illustrate respectively a $1\times \frac{\sqrt{3} }{2}$ torus with two triangles, a $\sqrt{3}\times 1$ torus with four triangles, and an approximately $2.8432\times 2.1322$ torus with fourteen triangles:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0780_sample-small-1.png?1678992054" class="dark_img" alt="" height="160">
<img src="https://projecteuler.net/resources/images/0780_sample-small-2.png?1678992054" class="dark_img" alt="" height="160">
<img src="https://projecteuler.net/resources/images/0780_sample-small-3.png?1678992054" class="dark_img" alt="" height="160">
</div>

<p>Two tilings of an $a\times b$ torus are called <dfn>equivalent</dfn> if it is possible to obtain one from the other by continuously moving all triangles so that no gaps appear and no triangles overlap at any stage during the movement. For example, the animation below shows an equivalence between two tilings:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0780_animation.gif?1678992057" class="dark_img" alt="" height="160">
</div>

<p>Let $F(n)$ be the total number of non-equivalent tilings of all possible tori with exactly $n$ triangles. For example, $F(6)=8$, with the eight non-equivalent tilings with six triangles listed below:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0780_t6-all.png?1678992054" class="dark_img" alt="" height="300">
</div>

<p>Let $G(N)=\sum_{n=1}^N F(n)$. You are given that $G(6)=14$, $G(100)=8090$, and $G(10^5)\equiv 645124048 \pmod{1\,000\,000\,007}$.</p>

<p>Find $G(10^9)$. Give your answer modulo $1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
