+++
title = "P938"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_937/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_939/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Exhausting a Colour</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 30th March 2025, 11:00 am; Solved by 1109;<br>Difficulty level: 3</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=938">Problem 938</a></h3></div>
<div class="problem_content" role="problem">
<p>
A deck of cards contains $R$ red cards and $B$ black cards.<br>
A card is chosen uniformly randomly from the deck and removed. A second card is then chosen uniformly randomly from the cards remaining and removed.</p>
<ul>
<li>
If both cards are red, they are discarded.</li>
<li>
If both cards are black, they are both put back in the deck.</li>
<li>
If they are different colours, the red card is put back in the deck and the black card is discarded.</li></ul>
<p>
Play ends when all the remaining cards in the deck are the same colour and let $P(R,B)$ be the probability that this colour is black. </p>
<p>
You are given $P(2,2) = 0.4666666667$, $P(10,9) = 0.4118903397$ and $P(34,25) = 0.3665688069$.</p>
<p>
Find $P(24690,12345)$. Give your answer with 10 digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
