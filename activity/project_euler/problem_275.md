+++
title = "P275"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_274/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_276/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Balanced Sculptures</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 22nd January 2010, 05:00 pm; Solved by 684;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=275">Problem 275</a></h3></div>
<div class="problem_content" role="problem">
<p>Let us define a <dfn>balanced sculpture</dfn> of order $n$ as follows:
</p><ul><li>A <strong class="tooltip">polyomino<span class="tooltiptext">An arrangement of identical squares connected through shared edges; holes are allowed.</span></strong> made up of $n + 1$ tiles known as the <dfn>blocks</dfn> ($n$ tiles)<br> and the <dfn>plinth</dfn> (remaining tile);</li>
<li>the plinth has its centre at position ($x = 0, y = 0$);</li>
<li>the blocks have $y$-coordinates greater than zero (so the plinth is the unique lowest tile);</li>
<li>the centre of mass of all the blocks, combined, has $x$-coordinate equal to zero.</li>
</ul><p>When counting the sculptures, any arrangements which are simply reflections about the $y$-axis, are <u>not</u> counted as distinct. For example, the $18$ balanced sculptures of order $6$ are shown below; note that each pair of mirror images (about the $y$-axis) is counted as one sculpture:</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0275_sculptures2.gif?1678992056" alt="0275_sculptures2.gif"></div>

<p>There are $964$ balanced sculptures of order $10$ and $360505$ of order $15$.<br>How many balanced sculptures are there of order $18$?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
