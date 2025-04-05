+++
title = "P893"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_892/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_894/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Matchsticks</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd June 2024, 11:00 am; Solved by 609;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=893">Problem 893</a></h3></div>
<div class="problem_content" role="problem">
<p>
Define $M(n)$ to be the minimum number of matchsticks needed to represent the number $n$.</p>

<p>
A number can be represented in digit form or as an expression involving addition and/or multiplication. Also order of operations must be followed, that is multiplication binding tighter than addition. Any other symbols or operations, such as brackets, subtraction, division or exponentiation, are not allowed.</p>

<p>
The valid digits and symbols are shown below:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0893_DigitDiagram.jpg?1714876316" alt="0893_DigitDiagram.jpg" height="433" width="668"></div>

<p>
For example, $28$ needs $12$ matchsticks to represent it in digit form but representing it as $4\times 7$ would only need $9$ matchsticks and as there is no way using fewer matchsticks $M(28) = 9$.</p>

<p>
Define $\displaystyle T(N) = \sum_{n=1}^N M(n)$. You are given $T(100) = 916$.</p>

<p>
Find $T(10^6)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
