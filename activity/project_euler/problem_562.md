+++
title = "P562"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_561/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_563/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Maximal Perimeter</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 29th May 2016, 01:00 am; Solved by 209;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=562">Problem 562</a></h3></div>
<div class="problem_content" role="problem">
<p>Construct triangle $ABC$ such that:</p>
<ul><li>Vertices $A$, $B$ and $C$ are lattice points inside or on the circle of radius $r$ centered at the origin;</li>
<li>the triangle contains no other lattice point inside or on its edges;</li>
<li>the perimeter is maximum.</li></ul>
<p>Let $R$ be the circumradius of triangle $ABC$ and $T(r) = R/r$.<br>
For $r = 5$, one possible triangle has vertices $(-4,-3)$, $(4,2)$ and $(1,0)$ with perimeter $\sqrt{13}+\sqrt{34}+\sqrt{89}$ and circumradius $R = \sqrt {\frac {19669} 2 }$, so $T(5) = \sqrt {\frac {19669} {50} }$.<br>
You are given $T(10) \approx 97.26729$ and $T(100) \approx 9157.64707$.</p>

<p>Find $T(10^7)$. Give your answer rounded to the nearest integer.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
