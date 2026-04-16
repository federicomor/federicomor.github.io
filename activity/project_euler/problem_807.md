+++
title = "P807"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_806/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_808/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Loops of Ropes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th September 2022, 02:00 am; Solved by 144;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=807">Problem 807</a></h3></div>
<div class="problem_content" role="problem">
<p>Given a circle $C$ and an integer $n &gt; 1$, we perform the following operations.</p>

<p>In step $0$, we choose two uniformly random points $R_0$ and $B_0$ on $C$.<br>
In step $i$ ($1 \leq i &lt; n$), we first choose a uniformly random point $R_i$ on $C$ and connect the points $R_{i - 1}$ and $R_i$ with a red rope; then choose a uniformly random point $B_i$ on $C$ and connect the points $B_{i - 1}$ and $B_i$ with a blue rope.<br>
In step $n$, we first connect the points $R_{n - 1}$ and $R_0$ with a red rope; then connect the points $B_{n - 1}$ and $B_0$ with a blue rope.<br>
Each rope is straight between its two end points, and lies above all previous ropes.</p>

<p>After step $n$, we get a loop of red ropes, and a loop of blue ropes.<br>
Sometimes the two loops can be separated, as in the left figure below; sometimes they are "linked", hence cannot be separated, as in the middle and right figures below.</p>

<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0807.jpg?1678992055" class="dark_img" alt="">
</div>

<p>Let $P(n)$ be the probability that the two loops can be separated.<br>
For example, $P(3) = \frac{11}{20}$ and $P(5) \approx 0.4304177690$.</p>

<p>Find $P(80)$, rounded to $10$ digits after decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
