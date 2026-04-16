+++
title = "P955"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_954/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_956/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Finding Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 20th July 2025, 11:00 am; Solved by 594;<br>Difficulty level: 11</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=955">Problem 955</a></h3></div>
<div class="problem_content" role="problem">
<p>
A sequence $(a_n)_{n \ge 0}$ starts with $a_0 = 3$ and for each $n \ge 0$,</p>
<ul>
<li>if $a_n$ is a <strong class="tooltip">triangle number<span class="tooltiptext">A triangle number is a number of the form $m(m + 1)/2$ for some integer $m$.</span></strong>, then $a_{n + 1} = a_n + 1$;</li>
<li>otherwise, $a_{n + 1} = 2a_n - a_{n - 1} + 1$.</li></ul>

<p>
The sequence begins:
$${\color{red}3}, 4, {\color{red}6}, 7, 9, 12, 16, {\color{red}21}, 22, 24, 27, 31, {\color{red}36}, 37, 39, 42, \dots$$
where triangle numbers are marked red.</p>

<p>
The $10$th triangle number in the sequence is $a_{2964} = 1439056$.<br>
Find the index $n$ such that $a_n$ is the $70$th triangle number in the sequence.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
