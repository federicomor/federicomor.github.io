+++
title = "P985"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_984/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_986/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Telescoping Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st February 2026, 10:00 pm; Solved by 156</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=985">Problem 985</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given a triangle $T_k$, it is sometimes possible to construct a triangle $T_{k+1}$ inside $T_k$ such that</p>

<ul>
<li>The three vertices of $T_{k+1}$ lie one on each side of $T_k$.</li>
<li>For each side of $T_k$, the angles formed between it and the two sides of $T_{k+1}$ it touches are equal to each other.</li>
</ul>

<img src="https://projecteuler.net/resources/images/0985_telescoping_triangles.png?1770589857" alt="0985_telescoping_triangles.png">

<p>
Illustrated above is such a sequence of three triangles starting with $T_0$ (in blue) having side lengths $(8,9,10)$. Then $T_1$ is shown in green and $T_2$ in red. However, no triangle can be drawn inside $T_2$ that satisfies the requirements. In other words, $T_3$ does not exist.</p>

<p>
Amongst all integer-sided triangles $T_0$ such that $T_2$ exists but $T_3$ does not exist, the smallest possible perimeter is $10$ when $T_0$ has side lengths $(3, 3, 4)$.</p>

<p>
Suppose another triangle $T_0$ has integer side lengths, and $T_{20}$ exists, but $T_{21}$ does not exist. What is the smallest possible perimeter of $T_0$?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
