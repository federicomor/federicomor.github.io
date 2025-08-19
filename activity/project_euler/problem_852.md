+++
title = "P852"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_851/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_853/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Coins in a Box</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd September 2023, 02:00 pm; Solved by 255;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=852">Problem 852</a></h3></div>
<div class="problem_content" role="problem">
<p>This game has a box of $N$ unfair coins and $N$ fair coins. Fair coins have probability 50% of landing heads while unfair coins have probability 75% of landing heads.</p>

<p>The player begins with a score of 0 which may become negative during play.</p>

<p>At each round the player randomly picks a coin from the box and guesses its type: fair or unfair. Before guessing they may toss the coin any number of times; however, each toss subtracts 1 from their score. The decision to stop tossing and make a guess can be made at any time. After guessing the player's score is increased by 20 if they are right and decreased by 50 if they are wrong. Then the coin type is revealed to the player and the coin is discarded.</p>

<p>After $2N$ rounds the box will be empty and the game is over. Let $S(N)$ be the expected score of the player at the end of the game assuming that they play optimally in order to maximize their expected score.</p>

<p>You are given $S(1) = 20.558591$ rounded to 6 digits after the decimal point.</p>

<p>Find $S(50)$. Give your answer rounded to 6 digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
