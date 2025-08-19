+++
title = "P557"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_556/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_558/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cutting Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 24th April 2016, 10:00 am; Solved by 324;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=557">Problem 557</a></h3></div>
<div class="problem_content" role="problem">
<p>
A triangle is cut into four pieces by two straight lines, each starting at one vertex and ending on the opposite edge. This results in forming three smaller triangular pieces, and one quadrilateral.  If the original triangle has an integral area, it is often possible to choose cuts such that all of the four pieces also have integral area.  For example, the diagram below shows a triangle of area $55$ that has been cut in this way.
</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0557-triangle.gif?1678992057" alt="0557-triangle.gif"></div>
<p>
Representing the areas as $a, b, c$ and $d$, in the example above, the individual areas are $a = 22$, $b = 8$, $c = 11$ and $d = 14$.  It is also possible to cut a triangle of area $55$ such that $a = 20$, $b = 2$, $c = 24$, $d = 9$.</p>
<p>
Define a triangle cutting quadruple $(a, b, c, d)$ as a valid integral division of a triangle, where $a$ is the area of the triangle between the two cut vertices, $d$ is the area of the quadrilateral and $b$ and $c$ are the areas of the two other triangles, with the restriction that $b \le c$.  The two solutions described above are $(22,8,11,14)$ and $(20,2,24,9)$.  These are the only two possible quadruples that have a total area of $55$.
</p>
<p>
Define $S(n)$ as the sum of the area of the uncut triangles represented by all valid quadruples with $a+b+c+d \le n$.<br> For example, $S(20) = 259$.  
</p>
<p>
Find $S(10000)$.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
