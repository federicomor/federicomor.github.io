+++
title = "P594"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_593/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_595/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Rhombus Tilings</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th March 2017, 10:00 pm; Solved by 208;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=594">Problem 594</a></h3></div>
<div class="problem_content" role="problem">
<p>
For a polygon $P$, let $t(P)$ be the number of ways in which $P$ can be tiled using rhombi and squares with edge length 1. Distinct rotations and reflections are counted as separate tilings.
</p>
<p>
For example, if $O$ is a regular octagon with edge length 1, then $t(O) = 8$. As it happens, all these 8 tilings are rotations of one another:
</p>
<div class="center">
<img src="https://projecteuler.net/project/images/p594_octagon_tilings_1.png" alt="p594_octagon_tilings_1.png" /></div>
<p>
Let $O_{a,b}$ be the equal-angled convex octagon whose edges alternate in length between $a$ and $b$.
<br />
For example, here is $O_{2,1}$, with one of its tilings:
</p>
<div class="center">
<img src="https://projecteuler.net/project/images/p594_octagon_tilings_2.png" alt="p594_octagon_tilings_2.png" /></div>

<p>
You are given that $t(O_{1,1})=8$, $t(O_{2,1})=76$ and $t(O_{3,2})=456572$.
</p>
<p>
Find $t(O_{4,2})$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
