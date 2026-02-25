+++
title = "P964"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_963/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_965/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Musical Chairs Revisited</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th October 2025, 02:00 pm; Solved by 162;<br>Difficulty level: 30</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=964">Problem 964</a></h3></div>
<div class="problem_content" role="problem">
<p>A group of $k(k-1) / 2 + 1$ children play a game of $k$ rounds.<br>
At the beginning, they are all seated on chairs arranged in a circle.</p>

<p>During the $i$-th round:</p>
<ol>
<li>The music starts playing and $i$ children are randomly selected, with all combinations being equally likely.  The selected children stand up and dance around.</li>
<li>When the music stops, these $i$ children sit back down randomly in the $i$ available chairs, with all permutations being equally likely.</li>
</ol>


<p>Let $P(k)$ be the probability that every child ends up sitting exactly one chair to the right of their original chair when the game ends (at the end of the $k$-th round).</p>

<p>You are given $P(3) \approx 1.3888888889 \mathrm {e}{-2}$.</p>

<p>Find $P(7)$. Give your answer in scientific notation rounded to ten significant digits after the decimal point. Use a lowercase e to separate the mantissa and the exponent.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
