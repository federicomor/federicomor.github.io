+++
title = "P163"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_162/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_164/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cross-hatched Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 13th October 2007, 02:00 am; Solved by 2079;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=163">Problem 163</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider an equilateral triangle in which straight lines are drawn from each vertex to the middle of the opposite side, such as in the <i>size $1$</i> triangle in the sketch below.</p>
<div class="center"><img src="https://projecteuler.net/resources/images/0163.gif?1678992055" class="dark_img" alt=""></div>
<p>Sixteen triangles of either different shape or size or orientation or location can now be observed in that triangle. Using <i>size $1$</i> triangles as building blocks, larger triangles can be formed, such as the <i>size $2$</i> triangle in the above sketch. One-hundred and four triangles of either different shape or size or orientation or location can now be observed in that <i>size $2$</i> triangle.</p>
<p>It can be observed that the <i>size $2$</i> triangle contains $4$ <i>size $1$</i> triangle building blocks. A <i>size $3$</i> triangle would contain $9$ <i>size $1$</i> triangle building blocks and a <i>size $n$</i> triangle would thus contain $n^2$ <i>size $1$</i> triangle building blocks.</p>
<p>If we denote $T(n)$ as the number of triangles present in a triangle of <i>size $n$</i>, then</p>
\begin{align}
T(1) &amp;= 16\\
T(2) &amp;= 104
\end{align}
<p>Find $T(36)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
