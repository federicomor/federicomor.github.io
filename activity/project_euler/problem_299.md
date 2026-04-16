+++
title = "P299"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_298/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_300/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Three Similar Triangles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd July 2010, 01:00 am; Solved by 712;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=299">Problem 299</a></h3></div>
<div class="problem_content" role="problem">
<p>Four points with integer coordinates are selected:<br>$A(a, 0)$, $B(b, 0)$, $C(0, c)$ and $D(0, d)$, with $0 \lt a \lt b$ and $0 \lt c \lt d$.<br>
Point $P$, also with integer coordinates, is chosen on the line $AC$ so that the three triangles $ABP$, $CDP$ and $BDP$ are all <dfn class="tooltip">similar<span class="tooltiptext">Have equal angles</span></dfn>.</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0299_ThreeSimTri.gif?1678992056" class="dark_img" alt="0299_ThreeSimTri.gif"></div>
<p>It is easy to prove that the three triangles can be similar, only if $a = c$.</p>

<p>So, given that $a = c$, we are looking for triplets $(a, b, d)$ such that at least one point $P$ (with integer coordinates) exists on $AC$, making the three triangles $ABP$, $CDP$ and $BDP$ all similar.</p>

<p>For example, if $(a, b, d)=(2,3,4)$, it can be easily verified that point $P(1,1)$ satisfies the above condition. 
Note that the triplets $(2,3,4)$ and $(2,4,3)$ are considered as distinct, although point $P(1,1)$ is common for both.</p>

<p>If $b + d \lt 100$, there are $92$ distinct triplets $(a, b, d)$ such that point $P$ exists.<br>
If $b + d \lt 100\,000$, there are $320471$ distinct triplets $(a, b, d)$ such that point $P$ exists.</p>
<p>If $b + d \lt 100\,000\,000$, how many distinct triplets $(a, b, d)$ are there such that point $P$ exists?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
