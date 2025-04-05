+++
title = "P392"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_391/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_393/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Enmeshed Unit Circle</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 1st September 2012, 02:00 pm; Solved by 878;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=392">Problem 392</a></h3></div>
<div class="problem_content" role="problem">
<p>
A rectilinear grid is an orthogonal grid where the spacing between the gridlines does not have to be equidistant.<br>
An example of such grid is logarithmic graph paper.
</p>
<p>
Consider rectilinear grids in the Cartesian coordinate system with the following properties:<br></p><ul><li>The gridlines are parallel to the axes of the Cartesian coordinate system.</li><li>There are $N+2$ vertical and $N+2$ horizontal gridlines. Hence there are $(N+1) \times (N+1)$ rectangular cells.</li><li>The equations of the two outer vertical gridlines are $x = -1$ and $x = 1$.</li><li>The equations of the two outer horizontal gridlines are $y = -1$ and $y = 1$.</li><li>The grid cells are colored red if they overlap with the <strong class="tooltip">unit circle<span class="tooltiptext">The unit circle is the circle that has radius $1$ and is centered at the origin</span></strong>, black otherwise.</li></ul>For this problem we would like you to find the positions of the remaining $N$ inner horizontal and $N$ inner vertical gridlines so that the area occupied by the red cells is minimized.

<p>
E.g. here is a picture of the solution for $N = 10$:
</p><p align="center">
<img src="https://projecteuler.net/resources/images/0392_gridlines.png?1678992053" alt="0392_gridlines.png"></p>


The area occupied by the red cells for $N = 10$ rounded to $10$ digits behind the decimal point is $3.3469640797$.

<p>
Find the positions for $N = 400$.<br> 
Give as your answer the area occupied by the red cells rounded to $10$ digits behind the decimal point.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
