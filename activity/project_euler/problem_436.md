+++
title = "P436"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_435/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_437/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Unfair Wager</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th September 2013, 07:00 pm; Solved by 504;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=436">Problem 436</a></h3></div>
<div class="problem_content" role="problem">
<p>Julie proposes the following wager to her sister Louise.<br>
She suggests they play a game of chance to determine who will wash the dishes.<br>
For this game, they shall use a generator of independent random numbers uniformly distributed between $0$ and $1$.<br>
The game starts with $S = 0$.<br>
The first player, Louise, adds to $S$ different random numbers from the generator until $S \gt 1$ and records her last random number '$x$'.<br>
The second player, Julie, continues adding to $S$ different random numbers from the generator until $S \gt 2$ and records her last random number '$y$'.<br>
The player with the highest number wins and the loser washes the dishes, i.e. if $y \gt x$ the second player wins.</p>

<p>For example, if the first player draws $0.62$ and $0.44$, the first player turn ends since $0.62+0.44 \gt 1$ and $x = 0.44$.<br>
If the second players draws $0.1$, $0.27$ and $0.91$, the second player turn ends since $0.62+0.44+0.1+0.27+0.91 \gt 2$ and $y = 0.91$.
Since $y \gt x$, the second player wins.</p>

<p>Louise thinks about it for a second, and objects: "That's not fair".<br>
What is the probability that the second player wins?<br>
Give your answer rounded to $10$ places behind the decimal point in the form 0.abcdefghij.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
