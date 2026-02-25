+++
title = "P984"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_983/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_985/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Knights and Horses</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th February 2026, 07:00 pm; Solved by 68</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=984">Problem 984</a></h3></div>
<div class="problem_content" role="problem">
<p>
In Western chess, a knight is a piece that moves either two squares horizontally and one square vertically, or one square horizontally and two squares vertically, and is capable of jumping over any intervening pieces.</p>

<p>
Chinese chess has a similar piece called the horse, whose moves have an identical displacement as a knight's move; however, a horse, unlike a knight, is unable to jump over intervening pieces.</p>

<p>
More specifically, a horse's move consists of two steps: An orthogonal move of one square, followed by a diagonal move by one square in the same direction as the orthogonal move. If the orthogonal square is occupied by another piece, the horse is unable to move in that direction.
<img src="https://projecteuler.net/resources/images/0984_KnightHorsesDiag1.jpg?1770170544" alt="0984_KnightHorsesDiag1.jpg">
Specifically the horse in the centre of the above board can move to the squares $b_{11},b_{12},b_{21},b_{22},b_{31},b_{32},b_{41},b_{42}$ providing the squares $a_{1},a_{2},a_{3},a_{4}$ are unoccupied. For example, if $a_2$ was occupied then it could not move to $b_{21}$ or $b_{22}$.</p>

<p>
A set of squares on a chessboard is called <dfn>knight-connected</dfn> if a knight can travel between any two squares in the set using only legal moves without using any squares not in the set.
A set of squares on a chessboard is called <dfn>horse-disjoint</dfn> if, when a horse is placed on every square in the set (and no other square), no horse can attack any other.
<img src="https://projecteuler.net/resources/images/0984_KnightHorsesDiag2.jpg?1770170559" alt="0984_KnightHorsesDiag2.jpg">
Let $f(N)$ be the number of knight-connected, horse-disjoint non-empty subsets of an $N\times N$ chessboard. For example, $f(3) = 9$, consisting of the nine singleton sets. You are also given that $f(5) = 903, f(100) = 8658918531876$, and $f(10000) \equiv 377956308 \bmod 10^9+7$.</p>

<p>
Find $f(10^{18})$. Give your answer modulo $10^9+7$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
