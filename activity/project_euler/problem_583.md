+++
title = "P583"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_582/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_584/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Heron Envelopes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 24th December 2016, 01:00 pm; Solved by 416;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=583">Problem 583</a></h3></div>
<div class="problem_content" role="problem">
<p>
A standard envelope shape is a convex figure consisting of an isosceles triangle (the flap) placed on top of a rectangle.  An example of an envelope with integral sides is shown below.  Note that to form a sensible envelope, the perpendicular height of the flap ($BCD$) must be smaller than the height of the rectangle ($ABDE$).  
</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0583_heron_envelope.gif?1678992057" alt="0583_heron_envelope.gif">
</div>

<p>
In the envelope illustrated, not only are all the sides integral, but also all the diagonals ($AC$, $AD$, $BD$, $BE$ and $CE$) are integral too. Let us call an envelope with these properties a <dfn>Heron envelope</dfn>.
</p>

<p>
Let $S(p)$ be the sum of the perimeters of all the Heron envelopes with a perimeter less than or equal to $p$. 
</p>
<p>
You are given that $S(10^4) = 884680$. Find $S(10^7)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
