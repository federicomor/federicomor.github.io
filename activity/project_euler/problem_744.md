+++
title = "P744"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_743/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_745/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>What? Where? When?</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 24th January 2021, 01:00 am; Solved by 333;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=744">Problem 744</a></h3></div>
<div class="problem_content" role="problem">
<p>"What? Where? When?" is a TV game show in which a team of experts attempt to answer questions. The following is a simplified version of the game.</p>

<p>It begins with $2n+1$ envelopes. $2n$ of them contain a question and one contains a RED card.</p>

<p>In each round one of the remaining envelopes is randomly chosen. If the envelope contains the RED card the game ends. If the envelope contains a question the expert gives their answer. If their answer is correct they earn one point, otherwise the viewers earn one point. The game ends normally when either the expert obtains n points or the viewers obtain n points.</p>

<p>Assuming that the expert provides the correct answer with a fixed probability $p$, let $f(n,p)$ be the probability that the game ends normally (i.e. RED card never turns up).</p>

<p>You are given (rounded to 10 decimal places) that<br />
$f(6,\frac{1}{2})=0.2851562500$,<br />
$f(10,\frac{3}{7})=0.2330040743$,<br />
$f(10^4,0.3)=0.2857499982$.
</p>

<p>Find $f(10^{11},0.4999)$. Give your answer rounded to 10 places behind the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
