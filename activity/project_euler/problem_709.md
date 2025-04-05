+++
title = "P709"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_708/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_710/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Even Stevens</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th April 2020, 05:00 pm; Solved by 989;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=709">Problem 709</a></h3></div>
<div class="problem_content" role="problem">
<p>Every day for the past $n$ days Even Stevens brings home his groceries in a plastic bag. He stores these plastic bags in a cupboard. He either puts the plastic bag into the cupboard with the rest, or else he takes an <b>even</b> number of the existing bags (which may either be empty or previously filled with other bags themselves) and places these into the current bag.</p>

<p>After 4 days there are 5 possible packings and if the bags are numbered 1 (oldest), 2, 3, 4, they are:</p>
<ul><li>Four empty bags,</li>
<li>1 and 2 inside 3, 4 empty,</li>
<li>1 and 3 inside 4, 2 empty,</li>
<li>1 and 2 inside 4, 3 empty,</li>
<li>2 and 3 inside 4, 1 empty.</li>
</ul><p>Note that 1, 2, 3 inside 4 is invalid because every bag must contain an even number of bags.</p>

<p>Define $f(n)$ to be the number of possible packings of $n$ bags. Hence $f(4)=5$. You are also given $f(8)=1\,385$.</p>

<p>Find $f(24\,680)$ giving your answer modulo $1\,020\,202\,009$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
