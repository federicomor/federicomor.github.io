+++
title = "P846"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_845/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_847/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Magic Bracelets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd June 2023, 08:00 pm; Solved by 224;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=846">Problem 846</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <i>bracelet</i> is made by connecting at least three numbered beads in a circle. Each bead can only display $1$, $2$, or any number of the form $p^k$ or $2p^k$ for odd prime $p$.</p>

<p>
In addition a <i>magic bracelet</i> must satisfy the following two conditions:</p>
<ul>
<li> no two beads display the same number</li>
<li> the product of the numbers of any two adjacent beads is of the form $x^2+1$</li>
</ul>

<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0846_diagram.jpg?1684224225" alt="0846_diagram.jpg" width="640" height="225">
</div>

<p>
Define the <i>potency</i> of a magic bracelet to be the sum of numbers on its beads. </p>
<p>
The example is a magic bracelet with five beads which has a potency of 155. </p>

<p>
Let $F(N)$ be the sum of the potency of each magic bracelet which can be formed using positive integers not exceeding $N$, where rotations and reflections of an arrangement are considered equivalent. You are given $F(20)=258$ and $F(10^2)=538768$.</p>

<p>
Find $F(10^6)$.</p>



</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
