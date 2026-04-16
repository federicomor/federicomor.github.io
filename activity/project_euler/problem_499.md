+++
title = "P499"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_498/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_500/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>St. Petersburg Lottery</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 25th January 2015, 10:00 am; Solved by 400;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=499">Problem 499</a></h3></div>
<div class="problem_content" role="problem">
<p>A gambler decides to participate in a special lottery. In this lottery the gambler plays a series of one or more games.<br>
Each game costs $m$ pounds to play and starts with an initial pot of $1$ pound. The gambler flips an unbiased coin. Every time a head appears, the pot is doubled and the gambler continues. When a tail appears, the game ends and the gambler collects the current value of the pot. The gambler is certain to win at least $1$ pound, the starting value of the pot, at the cost of $m$ pounds, the initial fee.</p>

<p>The game ends if the gambler's fortune falls below $m$ pounds.
Let $p_m(s)$ denote the probability that the gambler will never run out of money in this lottery given an initial fortune $s$ and the cost per game $m$.<br>
For example $p_2(2) \approx 0.2522$, $p_2(5) \approx 0.6873$ and $p_6(10\,000) \approx 0.9952$ (note: $p_m(s) = 0$ for $s \lt m$).</p>

<p>Find $p_{15}(10^9)$ and give your answer rounded to $7$ decimal places behind the decimal point in the form 0.abcdefg.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
