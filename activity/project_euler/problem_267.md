+++
title = "P267"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_266/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_268/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Billionaire</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 4th December 2009, 01:00 pm; Solved by 3736;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=267">Problem 267</a></h3></div>
<div class="problem_content" role="problem">
<p>You are given a unique investment opportunity.</p>
<p>Starting with £1 of capital, you can choose a fixed proportion, <var>f</var>, of your capital to bet on a fair coin toss repeatedly for 1000 tosses.</p>
<p>Your return is double your bet for heads and you lose your bet for tails.</p>
<p>For example, if <var>f</var> = 1/4,  for the first toss you bet £0.25, and if heads comes up you win £0.5 and so then have £1.5. You then bet £0.375 and if the second toss is tails, you have £1.125.</p>
<p>Choosing <var>f</var> to maximize your chances of having at least £1,000,000,000 after 1,000 flips, what is the chance that you become a billionaire?</p>
<p>All computations are assumed to be exact (no rounding), but give your answer rounded to 12 digits behind the decimal point in the form 0.abcdefghijkl.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
