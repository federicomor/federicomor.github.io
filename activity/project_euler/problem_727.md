+++
title = "P727"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_726/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_728/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Triangle of Circular Arcs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th September 2020, 11:00 pm; Solved by 592;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=727">Problem 727</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $r_a$, $r_b$ and $r_c$ be the radii of three circles that are mutually and externally tangent to each other. The three circles then form a <dfn>triangle of circular arcs</dfn> between their tangency points as shown for the three blue circles in the picture below.</p>
<p></p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0727_circular_arcs.jpg?1678992055" alt="CircularArcs">
</div>

<p></p>
Define the circumcircle of this triangle to be the red circle, with centre $D$, passing through their tangency points. Further define the incircle of this triangle to be the green circle, with centre $E$, that is mutually and externally tangent to all the three blue circles. Let $d=\vert DE \vert$ be the distance between the centres of the circumcircle and the incircle.
<p>
Let $\mathbb{E}(d)$ be the expected value of $d$ when $r_a$, $r_b$ and $r_c$ are integers chosen uniformly such that $1\leq r_a&lt;r_b&lt;r_c \leq 100$ and $\text{gcd}(r_a,r_b,r_c)=1$.</p>
<p>
Find $\mathbb{E}(d)$, rounded to eight places after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
