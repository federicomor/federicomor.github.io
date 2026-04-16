+++
title = "P471"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_470/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_472/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Triangle Inscribed in Ellipse</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th May 2014, 10:00 pm; Solved by 250;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=471">Problem 471</a></h3></div>
<div class="problem_content" role="problem">
<p>The triangle $\triangle ABC$ is inscribed in an ellipse with equation $\frac {x^2} {a^2} + \frac {y^2} {b^2} = 1$, $0 \lt 2b \lt a$, $a$ and $b$ integers.</p>
<p>Let $r(a, b)$ be the radius of the incircle of $\triangle ABC$ when the incircle has center $(2b, 0)$ and $A$ has coordinates $\left( \frac a 2, \frac {\sqrt 3} 2 b\right)$.</p>
<p>For example, $r(3,1)=\frac12$, $r(6,2)=1$, $r(12,3)=2$.</p>
<p align="center"><img src="https://projecteuler.net/resources/images/0471-triangle-inscribed-in-ellipse-1.png?1678992053" alt="0471-triangle-inscribed-in-ellipse-1.png"></p>
<p align="center"><img src="https://projecteuler.net/resources/images/0471-triangle-inscribed-in-ellipse-2.png?1678992053" alt="0471-triangle-inscribed-in-ellipse-2.png"></p>
<p>Let $G(n) = \sum_{a=3}^n \sum_{b=1}^{\lfloor \frac {a - 1} 2 \rfloor} r(a, b)$</p>
<p>You are given $G(10) = 20.59722222$, $G(100) = 19223.60980$ (rounded to $10$ significant digits).</p>
<p>Find $G(10^{11})$.</p>
<p>Give your answer in scientific notation rounded to $10$ significant digits. Use a lowercase e to separate mantissa and exponent.</p>
<p>For $G(10)$ the answer would have been 2.059722222e1.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
