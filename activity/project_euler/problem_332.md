+++
title = "P332"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_331/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_333/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Spherical Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 10th April 2011, 10:00 am; Solved by 683;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=332">Problem 332</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>spherical triangle</strong> is a figure formed on the surface of a sphere by three <strong>great circular arcs</strong> intersecting pairwise in three vertices.</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0332_spherical.jpg?1678992054" class="dark_img" alt="0332_spherical.jpg"></div>


<p>Let $C(r)$ be the sphere with the centre $(0,0,0)$ and radius $r$.<br>
Let $Z(r)$ be the set of points on the surface of $C(r)$ with integer coordinates.<br>
Let $T(r)$ be the set of spherical triangles with vertices in $Z(r)$.
Degenerate spherical triangles, formed by three points on the same great arc, are <u>not</u> included in $T(r)$.<br>
Let $A(r)$ be the area of the smallest spherical triangle in $T(r)$.</p>

<p>For example $A(14)$ is $3.294040$ rounded to six decimal places.</p>

<p>Find $\sum \limits_{r = 1}^{50} A(r)$. Give your answer rounded to six decimal places.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
