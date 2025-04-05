+++
title = "P147"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_146/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_148/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Rectangles in Cross-hatched Grids</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 31st March 2007, 06:00 am; Solved by 3429;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=147">Problem 147</a></h3></div>
<div class="problem_content" role="problem">
<p>In a $3 \times 2$ cross-hatched grid, a total of $37$ different rectangles could be situated within that grid as indicated in the sketch.</p>
<div class="center"><img src="https://projecteuler.net/resources/images/0147.png?1678992052" class="dark_img" alt=""></div>
<p>There are $5$ grids smaller than $3 \times 2$, vertical and horizontal dimensions being important, i.e. $1 \times 1$, $2 \times 1$, $3 \times 1$, $1 \times 2$ and $2 \times 2$. If each of them is cross-hatched, the following number of different rectangles could be situated within those smaller grids:</p>
<table class="grid" style="margin:0 auto;">
<tr><td style="width:50px;" align="center">$1 \times 1$</td><td style="width:50px;" align="right">$1$</td></tr>
<tr><td align="center">$2 \times 1$</td><td align="right">$4$</td></tr>
<tr><td align="center">$3 \times 1$</td><td align="right">$8$</td></tr>
<tr><td align="center">$1 \times 2$</td><td align="right">$4$</td></tr>
<tr><td align="center">$2 \times 2$</td><td align="right">$18$</td></tr>
</table>

<p>Adding those to the $37$ of the $3 \times 2$ grid, a total of $72$ different rectangles could be situated within $3 \times 2$ and smaller grids.</p>

<p>How many different rectangles could be situated within $47 \times 43$ and smaller grids?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
