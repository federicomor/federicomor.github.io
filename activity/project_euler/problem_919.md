+++
title = "P919"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_918/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_920/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fortunate Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 1st December 2024, 07:00 am; Solved by 232;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=919">Problem 919</a></h3></div>
<div class="problem_content" role="problem">
<p>We call a triangle <i>fortunate</i> if it has integral sides and at least one of its vertices has the property that the distance from it to the triangle's <b>orthocentre</b> is exactly half the distance from the same vertex to the triangle's <b>circumcentre</b>.</p>
<center><img src="https://projecteuler.net/resources/images/0919_remarkablediagram.jpg?1731700434" alt="0919_remarkablediagram.jpg" height="400"></center>
<p>
Triangle $ABC$ above is an example of a fortunate triangle with sides $(6,7,8)$. The distance from the vertex $C$ to the circumcentre $O$ is $\approx 4.131182$, while the distance from $C$ to the orthocentre $H$ is half that, at $\approx 2.065591$.
</p>
<p>
Define $S(P)$ to be the sum of $a+b+c$ over all fortunate triangles with sides $a\leq b\leq c$ and perimeter not exceeding $P$.
</p>
<p>
For example $S(10)=24$, arising from three triangles with sides $(1,2,2)$, $(2,3,4)$, and $(2,4,4)$. You are also given $S(100)=3331$.
</p>
<p>
Find $S(10^7)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
