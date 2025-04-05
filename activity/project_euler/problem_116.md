+++
title = "P116"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_115/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_117/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Red, Green or Blue Tiles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 3rd March 2006, 06:00 pm; Solved by 13426;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=116">Problem 116</a></h3></div>
<div class="problem_content" role="problem">
<p>A row of five grey square tiles is to have a number of its tiles replaced with coloured oblong tiles chosen from red (length two), green (length three), or blue (length four).</p>
<p>If red tiles are chosen there are exactly seven ways this can be done.</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0116_1.png?1678992052" alt="png116_1.png">
</div>

<p>If green tiles are chosen there are three ways.</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0116_2.png?1678992052" alt="png116_2.png">
</div>

<p>And if blue tiles are chosen there are two ways.</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0116_3.png?1678992052" alt="png116_3.png">
</div>

<p>Assuming that colours cannot be mixed there are $7 + 3 + 2 = 12$ ways of replacing the grey tiles in a row measuring five units in length.</p>
<p>How many different ways can the grey tiles in a row measuring fifty units in length be replaced if colours cannot be mixed and at least one coloured tile must be used?</p>
<p class="note">NOTE: This is related to <a href="https://projecteuler.net/problem=117">Problem 117</a>.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
