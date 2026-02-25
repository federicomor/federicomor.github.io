+++
title = "P939"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_938/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_940/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Partisan Nim</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th April 2025, 02:00 pm; Solved by 141;<br>Difficulty level: 27</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=939">Problem 939</a></h3></div>
<div class="problem_content" role="problem">
<p>
Two players A and B are playing a variant of Nim.<br>
At the beginning, there are several piles of stones. Each pile is either at the side of A or at the side of B. The piles are unordered.</p>

<p>
They make moves in turn. At a player's turn, the player can</p>
<ul>
<li>either choose a pile on the opponent's side and remove one stone from that pile;</li>
<li>or choose a pile on their own side and remove the whole pile.</li></ul>
<p>The winner is the player who removes the last stone.</p>

<p>
Let $E(N)$ be the number of initial settings with at most $N$ stones such that, whoever plays first, A always has a winning strategy.</p>

<p>
For example $E(4) = 9$; the settings are:
</p>
<div class="center"><table class="grid center"><tr><th>Nr.</th>
  <th>Piles at the side of A</th>
  <th>Piles at the side of B</th>
</tr><tr><td>1</td>
  <td>$4$</td>
  <td>none</td>
</tr><tr><td>2</td>
  <td>$1, 3$</td>
  <td>none</td>
</tr><tr><td>3</td>
  <td>$2, 2$</td>
  <td>none</td>
</tr><tr><td>4</td>
  <td>$1, 1, 2$</td>
  <td>none</td>
</tr><tr><td>5</td>
  <td>$3$</td>
  <td>$1$</td>
</tr><tr><td>6</td>
  <td>$1, 2$</td>
  <td>$1$</td>
</tr><tr><td>7</td>
  <td>$2$</td>
  <td>$1, 1$</td>
</tr><tr><td>8</td>
  <td>$3$</td>
  <td>none</td>
</tr><tr><td>9</td>
  <td>$2$</td>
  <td>none</td>
</tr></table></div>

<p>
Find $E(5000) \bmod 1234567891$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
