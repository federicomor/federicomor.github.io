+++
title = "P799"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_798/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_800/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pentagonal Puzzle</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd May 2022, 02:00 am; Solved by 248;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=799">Problem 799</a></h3></div>
<div class="problem_content" role="problem">
<p>
Pentagonal numbers are generated by the formula: $P_n = \tfrac 12n(3n-1)$ giving the sequence:
</p>
$$1,5,12,22,35, 51,70,92,\ldots $$
<p>
Some pentagonal numbers can be expressed as the sum of two other pentagonal numbers.<br />
For example:
</p>
$$P_8 = 92 = 22 + 70 = P_4 + P_7$$
<p>
3577 is the smallest pentagonal number that can be expressed as the sum of two pentagonal numbers in two different ways
</p>
$$
\begin{align}
P_{49} = 3577 &amp; = 3432 + 145 = P_{48} + P_{10} \\
 &amp; = 3290 + 287 = P_{47}+P_{14}
\end{align}
$$
<p>
107602 is the smallest pentagonal number that can be expressed as the sum of two pentagonal numbers in three different ways.
</p>
<p>
Find the smallest pentagonal number that can be expressed as the sum of two pentagonal numbers in over 100 different ways.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
