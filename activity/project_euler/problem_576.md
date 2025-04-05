+++
title = "P576"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_575/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_577/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Irrational Jumps</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 29th October 2016, 04:00 pm; Solved by 255;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=576">Problem 576</a></h3></div>
<div class="problem_content" role="problem">
<p>
A bouncing point moves counterclockwise along a circle with circumference $1$ with jumps of constant length $l \lt 1$, until it hits a gap of length $g \lt 1$, that is placed in a distance $d$ counterclockwise from the starting point. The gap does not include the starting point, that is $g+d \lt 1$.</p>

<p>Let $S(l,g,d)$ be the sum of the length of all jumps, until the point falls into the gap. It can be shown that $S(l,g,d)$ is finite for any irrational jump size $l$, regardless of the values of $g$ and $d$.<br>
Examples: <br>
$S(\sqrt{\frac 1 2}, 0.06, 0.7)=0.7071 \cdots$, $S(\sqrt{\frac 1 2}, 0.06, 0.3543)=1.4142 \cdots$ and <br> $S(\sqrt{\frac 1 2}, 0.06, 0.2427)=16.2634 \cdots$.</p>
<p>
Let $M(n, g)$ be the maximum of $ \sum S(\sqrt{\frac 1 p}, g, d)$ for all primes $p \le n$ and any valid value of $d$.<br>
Examples:<br>
$M(3, 0.06) =29.5425 \cdots$, since $S(\sqrt{\frac 1 2}, 0.06, 0.2427)+S(\sqrt{\frac 1 3}, 0.06, 0.2427)=29.5425 \cdots$ is the maximal reachable sum for $g=0.06$. <br>
$M(10, 0.01)=266.9010 \cdots$ </p>

<p>Find $M(100, 0.00002)$, rounded to $4$ decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
