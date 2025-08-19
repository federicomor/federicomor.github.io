+++
title = "P220"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_219/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_221/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Heighway Dragon</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th December 2008, 09:00 am; Solved by 2409;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=220">Problem 220</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $D_0$ be the two-letter string "Fa".  For $n\ge 1$, derive $D_n$ from $D_{n-1}$ by the string-rewriting rules:</p>

<p style="margin-left:40px;">"a" → "aRbFR"<br>
"b" → "LFaLb"</p>

<p>Thus, $D_0 = $ "Fa", $D_1 = $ "FaRbFR", $D_2 = $ "FaRbFRRLFaLbFR", and so on.</p>

<p>These strings can be interpreted as instructions to a computer graphics program, with "F" meaning "draw forward one unit", "L" meaning "turn left $90$ degrees", "R" meaning "turn right $90$ degrees", and "a" and "b" being ignored.  The initial position of the computer cursor is $(0,0)$, pointing up towards $(0,1)$.</p>

<p>Then $D_n$ is an exotic drawing known as the <strong>Heighway Dragon</strong> of order $n$.  For example, $D_{10}$ is shown below; counting each "F" as one step, the highlighted spot at $(18,16)$ is the position reached after $500$ steps.</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0220.gif?1678992055" class="dark_img" alt=""></div>

<p>What is the position of the cursor after $10^{12}$ steps in $D_{50}$?<br>
Give your answer in the form <i>x</i>,<i>y</i> with no spaces.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
