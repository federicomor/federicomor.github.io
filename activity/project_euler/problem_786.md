+++
title = "P786"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_785/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_787/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Billiard</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 20th February 2022, 10:00 am; Solved by 139;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=786">Problem 786</a></h3></div>
<div class="problem_content" role="problem">
<p>
The following diagram shows a billiard table of a special quadrilateral shape.
The four angles $A, B, C, D$ are $120^\circ, 90^\circ, 60^\circ, 90^\circ$ respectively, and the lengths $AB$ and $AD$ are equal.
</p>

<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p786_billiard_shape.jpg" class="dark_img" alt="" height="160" />
</div>

<p>
The diagram on the left shows the trace of an infinitesimally small billiard ball, departing from point $A$, bouncing twice on the edges of the table, and finally returning back to point $A$. The diagram on the right shows another such trace, but this time bouncing eight times:
</p>

<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p786_billiard_traces.jpg" class="dark_img" alt="" height="160" />
</div>

<p>
The table has no friction and all bounces are perfect elastic collisions.<br />
Note that no bounce should happen on any of the corners, as the behaviour would be unpredictable.
</p>

<p>
Let $B(N)$ be the number of possible traces of the ball, departing from point $A$, bouncing at most $N$ times on the edges and returning back to point $A$.
</p>

<p>
For example, $B(10) = 6$, $B(100) = 478$, $B(1000) = 45790$.
</p>

<p>
Find $B(10^9)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
