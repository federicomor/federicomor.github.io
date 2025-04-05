+++
title = "P879"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_878/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_880/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Touch-screen Password</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 24th February 2024, 04:00 pm; Solved by 439;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=879">Problem 879</a></h3></div>
<div class="problem_content" role="problem">
<p>A touch-screen device can be unlocked with a "password" consisting of a sequence of two or more distinct spots that the user selects from a rectangular grid of spots on the screen. The user enters their sequence by touching the first spot, then tracing a straight line segment to the next spot, and so on until the end of the sequence. The user's finger remains in contact with the screen throughout, and may only move in straight line segments from spot to spot.</p>

<p>If the finger traces a straight line that passes over an intermediate spot, then that is treated as two line segments with the intermediate spot included in the password sequence. For example, on a $3\times 3$ grid labelled with digits $1$ to $9$ (shown below), tracing $1-9$ is interpreted as $1-5-9$.</p>

<p>Once a spot has been selected it disappears from the screen. Thereafter, the spot may not be used as an endpoint of future line segments, and it is ignored by any future line segments which happen to pass through it. For example, tracing $1-9-3-7$ (which crosses the $5$ spot twice) will give the password $1-5-9-6-3-7$.</p>
<img src="https://projecteuler.net/resources/images/0879_touchscreen_159637.png?1707555645" alt="1-5-9-6-3-7 example">

<p>There are $389488$ different passwords that can be formed on a $3 \times 3$ grid.</p>

<p>Find the number of different passwords that can be formed on a $4 \times 4$ grid.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
