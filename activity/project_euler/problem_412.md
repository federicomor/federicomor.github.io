+++
title = "P412"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_411/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_413/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Gnomon Numbering</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 27th January 2013, 01:00 am; Solved by 556;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=412">Problem 412</a></h3></div>
<div class="problem_content" role="problem">
<p>For integers $m, n$ ($0 \leq n \lt m$), let $L(m, n)$ be an $m \times m$ grid with the top-right $n \times n$ grid removed.</p>

<p>For example, $L(5, 3)$ looks like this:</p>

<p class="center"><img src="https://projecteuler.net/resources/images/0412_table53.png?1678992053" alt="0412_table53.png"></p>

<p>We want to number each cell of $L(m, n)$ with consecutive integers $1, 2, 3, \dots$ such that the number in every cell is smaller than the number below it and to the left of it.</p>

<p>For example, here are two valid numberings of $L(5, 3)$:</p>
<p class="center"><img src="https://projecteuler.net/resources/images/0412_tablenums.png?1678992053" alt="0412_tablenums.png"></p>

<p>Let $\operatorname{LC}(m, n)$ be the number of valid numberings of $L(m, n)$.<br>
It can be verified that $\operatorname{LC}(3, 0) = 42$, $\operatorname{LC}(5, 3) = 250250$, $\operatorname{LC}(6, 3) = 406029023400$ and $\operatorname{LC}(10, 5) \bmod 76543217 = 61251715$.</p>

<p>Find $\operatorname{LC}(10000, 5000) \bmod 76543217$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
