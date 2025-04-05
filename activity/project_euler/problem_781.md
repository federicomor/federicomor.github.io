+++
title = "P781"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_780/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_782/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Feynman Diagrams</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 15th January 2022, 07:00 pm; Solved by 139;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=781">Problem 781</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $F(n)$ be the number of connected graphs with blue edges (directed) and red edges (undirected) containing:</p>
<ul>
<li>two vertices of degree 1, one with a single outgoing blue edge and the other with a single incoming blue edge.</li>
<li>$n$ vertices of degree 3, each of which has an incoming blue edge, a <b>different</b> outgoing blue edge and a red edge.</li>
</ul>
<p>For example, $F(4)=5$ because there are 5 graphs with these properties:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p781_feynman_diagrams.jpg" class="dark_img" alt="" height="320" />
</div>

<p>You are also given $F(8)=319$.</p>

<p>Find $F(50\,000)$. Give your answer modulo $1\,000\,000\,007$.</p>

<p>NOTE: Feynman diagrams are a way of visualising the forces between elementary particles. Vertices represent interactions. The blue edges in our diagrams represent matter particles (e.g. electrons or positrons) with the arrow representing the flow of charge. The red edges (normally wavy lines) represent the force particles (e.g. photons). Feynman diagrams are used to predict the strength of particle interactions.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
