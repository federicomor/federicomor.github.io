+++
title = "P589"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_588/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_590/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Poohsticks Marathon</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th February 2017, 07:00 am; Solved by 227;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=589">Problem 589</a></h3></div>
<div class="problem_content" role="problem">
<p>
Christopher Robin and Pooh Bear love the game of Poohsticks so much that they invented a new version which allows them to play for longer before one of them wins and they have to go home for tea. The game starts as normal with both dropping a stick simultaneously on the upstream side of a bridge. But rather than the game ending when one of the sticks emerges on the downstream side, instead they fish their sticks out of the water, and drop them back in again on the upstream side. The game only ends when one of the sticks emerges from under the bridge ahead of the other one having also 'lapped' the other stick - that is, having made one additional journey under the bridge compared to the other stick.
</p>
<p>
On a particular day when playing this game, the time taken for a stick to travel under the bridge varies between a minimum of 30 seconds, and a maximum of 60 seconds. The time taken to fish a stick out of the water and drop it back in again on the other side is 5 seconds. The current under the bridge has the unusual property that the sticks' journey time is always an integral number of seconds, and it is equally likely to emerge at any of the possible times between 30 and 60 seconds (inclusive). It turns out that under these circumstances, the expected time for playing a single game is 1036.15 seconds (rounded to 2 decimal places). This time is measured from the point of dropping the sticks for the first time, to the point where the winning stick emerges from under the bridge having lapped the other.
</p>
<p>
The stream flows at different rates each day, but maintains the property that the journey time in seconds is equally distributed amongst the integers from a minimum, $n$, to a maximum, $m$, inclusive. Let the expected time of play in seconds be $E(m,n)$. Hence $E(60,30)=1036.15...$
</p>
<p>
Let $S(k)=\sum_{m=2}^k\sum_{n=1}^{m-1}E(m,n)$.
</p>
<p>
For example $S(5)=7722.82$ rounded to 2 decimal places.
</p>
<p>
Find $S(100)$ and give your answer rounded to 2 decimal places.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
