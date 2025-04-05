+++
title = "P677"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_676/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_678/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Coloured Graphs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 29th June 2019, 07:00 pm; Solved by 203;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=677">Problem 677</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $g(n)$ be the number of <strong>undirected graphs</strong> with $n$ nodes satisfying the following properties:</p>
<ul>
<li>The graph is connected and has no cycles or multiple edges.</li>
<li>Each node is either red, blue, or yellow.</li>
<li>A red node may have no more than 4 edges connected to it.</li>
<li>A blue or yellow node may have no more than 3 edges connected to it.</li>
<li>An edge may not directly connect a yellow node to a yellow node.</li>
</ul>

<p>For example, $g(2)=5$, $g(3)=15$, and $g(4) = 57$.<br>
You are also given that $g(10) = 710249$ and $g(100) \equiv 919747298 \pmod{1\,000\,000\,007}$.</p>

<p>Find $g(10\,000) \bmod 1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
