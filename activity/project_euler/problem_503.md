+++
title = "P503"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_502/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_504/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Compromise or Persist</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th February 2015, 07:00 pm; Solved by 359;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=503">Problem 503</a></h3></div>
<div class="problem_content" role="problem">
<p>Alice is playing a game with $n$ cards numbered $1$ to $n$.</p>

<p>A game consists of iterations of the following steps.<br>
(1) Alice picks one of the cards at random.<br>
(2) Alice cannot see the number on it. Instead, Bob, one of her friends, sees the number and tells Alice how many previously-seen numbers are bigger than the number which he is seeing.<br>
(3) Alice can end or continue the game. If she decides to end, the number becomes her score. If she decides to continue, the card is removed from the game and she returns to (1). If there is no card left, she is forced to end the game.<br></p>

<p>Let $F(n)$ be Alice's expected score if she takes the optimized strategy to <b>minimize</b> her score.</p>

<p>For example, $F(3) = 5/3$. At the first iteration, she should continue the game. At the second iteration, she should end the game if Bob says that one previously-seen number is bigger than the number which he is seeing, otherwise she should continue the game.</p>

<p>We can also verify that $F(4) = 15/8$ and $F(10) \approx 2.5579365079$.</p>

<p>Find $F(10^6)$. Give your answer rounded to $10$ decimal places behind the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
