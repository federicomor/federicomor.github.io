+++
title = "P595"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_594/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_596/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Incremental Random Sort</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th March 2017, 01:00 am; Solved by 697;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=595">Problem 595</a></h3></div>
<div class="problem_content" role="problem">
<p>
A deck of cards numbered from $1$ to $n$ is shuffled randomly such that each permutation is equally likely.
</p>
<p>
The cards are to be sorted into ascending order using the following technique:
</p><ol>
<li> Look at the initial sequence of cards.  If it is already sorted, then there is no need for further action.  Otherwise, if any subsequences of cards happen to be in the correct place relative to one another (ascending with no gaps), then those subsequences are fixed by attaching the cards together.  For example, with $7$ cards initially in the order 4123756, the cards labelled 1, 2 and 3 would be attached together, as would 5 and 6.
</li></ol>
<ol start="2">
<li> The cards are 'shuffled' by being thrown into the air, but note that any correctly sequenced cards remain attached, so their orders are maintained.  The cards (or bundles of attached cards) are then picked up randomly.  You should assume that this randomisation is unbiased, despite the fact that some cards are single, and others are grouped together. 
</li></ol>
<ol start="3">
<li> Repeat steps 1 and 2 until the cards are sorted. 
</li></ol>

<p>
   Let $S(n)$ be the expected number of shuffles needed to sort the cards. Since the order is checked before the first shuffle, $S(1) = 0$. You are given that $S(2) = 1$, and $S(5) = 4213/871$.
</p>
<p>
Find $S(52)$, and give your answer rounded to $8$ decimal places.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
