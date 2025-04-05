+++
title = "P579"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_578/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_580/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Lattice Points in Lattice Cubes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 27th November 2016, 01:00 am; Solved by 189;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=579">Problem 579</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>lattice cube</strong> is a cube in which all vertices have integer coordinates. Let $C(n)$ be the number of different lattice cubes in which the coordinates of all vertices range between (and including) $0$ and $n$. Two cubes are hereby considered different if any of their vertices have different coordinates.<br>
For example, $C(1)=1$, $C(2)=9$, $C(4)=100$, $C(5)=229$, $C(10)=4469$ and $C(50)=8154671$.
</p>
<p>Different cubes may contain different numbers of lattice points.</p>
<p>
For example, the cube with the vertices<br>
$(0, 0, 0)$, $(3, 0, 0)$, $(0, 3, 0)$, $(0, 0, 3)$, $(0, 3, 3)$, $(3, 0, 3)$, $(3, 3, 0)$, $(3, 3, 3)$ contains $64$ lattice points ($56$ lattice points on the surface including the $8$ vertices and $8$ points within the cube). </p>
<p>In contrast, the cube with the vertices<br>
$(0, 2, 2)$, $(1, 4, 4)$, $(2, 0, 3)$, $(2, 3, 0)$, $(3, 2, 5)$, $(3, 5, 2)$, $(4, 1, 1)$, $(5, 3, 3)$ contains only $40$ lattice points ($20$ points on the surface and $20$ points within the cube), although both cubes have the same side length $3$.
</p>
<p>
Let $S(n)$ be the sum of the lattice points contained in the different lattice cubes in which the coordinates of all vertices range between (and including) $0$ and $n$.</p>

<p>For example, $S(1)=8$, $S(2)=91$, $S(4)=1878$, $S(5)=5832$, $S(10)=387003$ and $S(50)=29948928129$.</p>

<p>Find $S(5000) \bmod 10^9$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
