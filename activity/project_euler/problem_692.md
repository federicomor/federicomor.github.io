+++
title = "P692"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_691/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_693/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Siegbert and Jo</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th December 2019, 01:00 pm; Solved by 1497;<br>Difficulty rating: 10%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=692">Problem 692</a></h3></div>
<div class="problem_content" role="problem">
<p>
Siegbert and Jo take turns playing a game with a heap of $N$ pebbles:<br />
1. Siegbert is the first to take some pebbles. He can take as many pebbles as he wants. (Between 1 and $N$ inclusive.)<br />
2. In each of the following turns the current player must take at least one pebble and at most twice the amount of pebbles taken by the previous player.<br />
3. The player who takes the last pebble wins.<br /></p>
<p>
Although Siegbert can always win by taking all the pebbles on his first turn, to make the game more interesting he chooses to take the smallest number of pebbles that guarantees he will still win (assuming both Siegbert and Jo play optimally for the rest of the game).
</p>
<p>
Let $H(N)$ be that minimal amount for a heap of $N$ pebbles.<br />
$H(1)=1$, $H(4)=1$, $H(17)=1$, $H(8)=8$ and $H(18)=5$ .
</p>
<p>
Let $G(n)$ be $\displaystyle{\sum_{k=1}^n H(k)}$.<br />
$G(13)=43$.
</p>
<p>
Find $G(23416728348467685)$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
