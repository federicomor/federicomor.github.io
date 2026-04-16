+++
title = "P502"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_501/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_503/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Counting Castles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th February 2015, 04:00 pm; Solved by 345;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=502">Problem 502</a></h3></div>
<div class="problem_content" role="problem">
<p>We define a <dfn>block</dfn> to be a rectangle with a height of $1$ and an integer-valued length. Let a <dfn>castle</dfn> be a configuration of stacked blocks.</p>

<p>Given a game grid that is $w$ units wide and $h$ units tall, a castle is generated according to the following rules:</p>


<ol><li>Blocks can be placed on top of other blocks as long as nothing sticks out past the edges or hangs out over open space.</li>
<li>All blocks are aligned/snapped to the grid.</li>
<li>Any two neighboring blocks on the same row have at least one unit of space between them.</li>
<li>The bottom row is occupied by a block of length $w$.</li>
<li>The maximum achieved height of the entire castle is exactly $h$.</li>
<li>The castle is made from an even number of blocks.</li>
</ol><p>The following is a sample castle for $w=8$ and $h=5$:</p>

<p align="center"><img src="https://projecteuler.net/resources/images/0502_castles.png?1678992053" alt="0502_castles.png"></p>

<p>Let $F(w,h)$ represent the number of valid castles, given grid parameters $w$ and $h$.</p>

<p>For example, $F(4,2) = 10$, $F(13,10) = 3729050610636$, $F(10,13) = 37959702514$, and $F(100,100) \bmod 1\,000\,000\,007 = 841913936$.</p>

<p>Find $(F(10^{12},100) + F(10000,10000) + F(100,10^{12})) \bmod 1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
