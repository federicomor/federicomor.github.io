+++
title = "P951"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_950/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_952/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Game of Chance</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st June 2025, 11:00 pm; Solved by 375;<br>Difficulty level: 8</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=951">Problem 951</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players play a game using a deck of $2n$ cards: $n$ red and $n$ black. Initially the deck is shuffled into one of the $\binom{2n}{n}$ possible starting configurations. Play then proceeds, alternating turns, where a player follows two steps on each turn:</p>

<ol>
<li>
Remove the top card from the deck, taking note of its colour.</li>

<li>
If there is a next card and it is the same colour as the previous card they toss a fair coin. If the coin lands on heads they remove that card as well; otherwise leave it on top of the deck.</li></ol>

<p>
The player who removes the final card from the deck wins the game.</p>

<p>
Some starting configurations give an advantage to one of the players; while some starting configurations are <b>fair</b>, in which both players have exactly $50\%$ chance to win the game. For example, if $n=2$ there are four starting configurations which are fair: RRBB, BBRR, RBBR, BRRB. The remaining two, RBRB and BRBR, result in a guaranteed win for the second player.</p>

<p>
Define $F(n)$ to be the number of starting configurations which are fair. Therefore $F(2)=4$. You are also given $F(8)=11892$.</p>

<p>
Find $F(26)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
