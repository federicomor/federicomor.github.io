+++
title = "P883"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_882/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_884/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Remarkable Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 24th March 2024, 04:00 am; Solved by 109;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=883">Problem 883</a></h3></div>
<div class="problem_content" role="problem">
<p>
In this problem we consider triangles drawn on a <b>hexagonal lattice</b>, where each lattice point in the plane has six neighbouring points equally spaced around it, all distance $1$ away.</p>

<p>
We call a triangle <i>remarkable</i> if</p>
<ul>
<li>All three vertices and its <b>incentre</b> lie on lattice points</li>
<li>At least one of its angles is $60^\circ$</li>
</ul>
<img src="https://projecteuler.net/resources/images/0883_diagram.png?1707941179" alt="0883_diagram.png">

<p>
Above are four examples of remarkable triangles, with $60^\circ$ angles illustrated in red. Triangles A and B have inradius $1$; C has inradius $\sqrt{3}$; D has inradius $2$.</p>

<p>
Define $T(r)$ to be the number of remarkable triangles with inradius $\le r$. Rotations and reflections, such as triangles A and B above, are counted separately; however direct translations are not. That is, the same triangle drawn in different positions of the lattice is only counted once.</p>

<p>
You are given $T(0.5)=2$, $T(2)=44$, and $T(10)=1302$.</p>

<p>
Find $T(10^6)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
