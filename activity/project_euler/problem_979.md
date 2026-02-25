+++
title = "P979"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_978/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_980/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Heptagon Hopping</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 18th January 2026, 07:00 am; Solved by 191</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=979">Problem 979</a></h3></div>
<div class="problem_content" role="problem">
<p>The <b>hyperbolic plane</b>, represented by the <b>open unit disc</b>, can be tiled by heptagons. Every tile is a hyperbolic heptagon (i.e. it has seven edges which are segments of <b>geodesics</b> in the hyperbolic plane) and every vertex is shared by three tiles.<br>
Please refer to <a href="https://projecteuler.net/problem=972">Problem 972</a> for some of the definitions.</p>

<p>The diagram below shows an illustration of this tiling.</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0979_heptagons_frog.png?1767857959" alt="0979_heptagons_frog.png" width="500"></div>

<p>Now, a hyperbolic frog starts from one of the heptagons, as shown in the diagram. At each step, it can jump to any one of the seven adjacent tiles.</p>

<p>Define $F(n)$ to be the number of paths the frog can trace so that after $n$ steps it lands back at the starting tile.<br>
You are given $F(4) = 119$.</p>

<p>Find $F(20)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
