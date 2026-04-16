+++
title = "P928"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_927/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_929/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cribbage</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th January 2025, 04:00 am; Solved by 199;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=928">Problem 928</a></h3></div>
<div class="problem_content" role="problem">
<p>This problem is based on (but not identical to) the scoring for the card game 
<a href="https://projecteuler.net/https://en.wikipedia.org/wiki/Cribbage">Cribbage</a>.</p>

<p>
Consider a normal pack of $52$ cards. A Hand is a selection of one or more of these cards.</p>

<p>
For each Hand the <i>Hand score</i> is the sum of the values of the cards in the Hand where the value of Aces is $1$ and the value of court cards (Jack, Queen, King) is $10$.</p>

<p>
The <i>Cribbage score</i> is obtained for a Hand by adding together the scores for:</p>
<ul>
<li>
Pairs. A pair is two cards of the same rank. Every pair is worth $2$ points.</li>

<li>
Runs. A run is a set of at least $3$ cards whose ranks are consecutive, e.g. 9, 10, Jack. Note that Ace is never high, so Queen, King, Ace is <b>not</b> a valid run. The number of points for each run is the size of the run. All locally maximum runs are counted. For example, 2, 3, 4, 5, 7, 8, 9 the two runs of 2, 3, 4, 5 and 7, 8, 9 are counted but not 2, 3, 4 or 3, 4, 5.</li>

<li>
Fifteens. A fifteen is a combination of cards that has value adding to $15$. Every fifteen is worth $2$ points. For this purpose the value of the cards is the same as in the Hand Score.</li></ul>

<p>
For example, $(5 \spadesuit, 5 \clubsuit, 5 \diamondsuit, K \heartsuit)$ has a Cribbage score of $14$ as there are four ways that fifteen can be made and also three pairs can be made.</p>

<p>
The example $( A \diamondsuit, A \heartsuit, 2 \clubsuit, 3 \heartsuit, 4 \clubsuit, 5 \spadesuit)$ has a Cribbage score of $16$: two runs of five worth $10$ points, two ways of getting fifteen worth $4$ points and one pair worth $2$ points. In this example the Hand score is equal to the Cribbage score.</p>

<p>
Find the number of Hands in a normal pack of cards where the Hand score is equal to the Cribbage score.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
