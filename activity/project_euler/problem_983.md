+++
title = "P983"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_982/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_984/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Consonant Circle Crossing</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th February 2026, 04:00 pm; Solved by 37</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=983">Problem 983</a></h3></div>
<div class="problem_content" role="problem">
<p>We say two circles on the plane <i>harmonise</i> if the circles intersect at two <strong class="tooltip">grid points<span class="tooltiptext">A point with integer coordinates</span></strong>, in which case the two intersection points are called the <i>harmony points</i>.</p>

<p>A set of circles on the plane is called <i>consonant</i> if it satisfies all the following requirements:<br></p>

<ol>
 <li>There are at least two circles in the set.</li>
 <li>The center point of every circle is a grid point.</li>
 <li>All circles have the same radius.</li>
 <li>No circle is tangent to any other circle.</li>
 <li>The circles are connected in the sense that a chain of circles can be formed between every pair of circles such that each circle harmonises with the next circle.</li>
</ol>

<p>It can be proven that the number of unique harmony points of a consonant set of circles cannot be smaller than the number of circles. If the number of unique harmony points equals the number of circles, we say the consonant set is <i>perfect</i>.</p>

<p>For example, here are two perfect consonant sets of circles:</p>
<img src="https://projecteuler.net/resources/images/0983_circles.png?1767563452" alt="0983_circles.png">


<p>Let $R(n)$ be the minimal radius $r$ such that a perfect consonant set of $n$ or more circles with radius $r$ exists.<br>
You are given $R(2) = 1$ and $R(4) = \sqrt{5}$.</p>

<p>Find $R(500)^2$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
