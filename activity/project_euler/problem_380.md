+++
title = "P380"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_379/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_381/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Amazing Mazes!</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th April 2012, 02:00 pm; Solved by 587;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=380">Problem 380</a></h3></div>
<div class="problem_content" role="problem">
<p>
An $m \times n$ maze is an $m \times n$ rectangular grid with walls placed between grid cells such that there is exactly one path from the top-left square to any other square. <br>The following are examples of a $9 \times 12$ maze and a $15 \times 20$ maze:
</p>
<p class="center">
<img src="https://projecteuler.net/resources/images/0380_mazes.gif?1678992056" class="dark_img" alt="0380_mazes.gif"></p>
<p>
Let $C(m,n)$ be the number of distinct $m \times n$ mazes. Mazes which can be formed by rotation and reflection from another maze are considered distinct.
</p>
<p>
It can be verified that $C(1,1) = 1$, $C(2,2) = 4$, $C(3,4) = 2415$, and $C(9,12) = 2.5720\mathrm e46$ (in scientific notation rounded to $5$ significant digits).<br>
Find $C(100,500)$ and write your answer in scientific notation rounded to $5$ significant digits.
</p>
<p>
When giving your answer, use a lowercase e to separate mantissa and exponent.
E.g. if the answer is $1234567891011$ then the answer format would be 1.2346e12.

</p> 




</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
