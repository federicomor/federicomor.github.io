+++
title = "P882"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_881/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_883/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Removing Bits</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 17th March 2024, 01:00 am; Solved by 144;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=882">Problem 882</a></h3></div>
<div class="problem_content" role="problem">
<p>Dr. One and Dr. Zero are playing the following partisan game.<br>
The game begins with one $1$, two $2$'s, three $3$'s, ..., $n$ $n$'s. Starting with Dr. One, they make moves in turn.<br>
Dr. One chooses a number and changes it by removing a $1$ from its binary expansion.<br>
Dr. Zero chooses a number and changes it by removing a $0$ from its binary expansion.<br>
The player that is unable to move loses.<br>
Note that leading zeros are not allowed in any binary expansion; in particular nobody can make a move on the number $0$.</p>

<p>They soon realize that Dr. Zero can never win the game. In order to make it more interesting, Dr. Zero is allowed to "skip the turn" several times, i.e. passing the turn back to Dr. One without making a move.</p>

<p>For example, when $n = 2$, Dr. Zero can win the game if allowed to skip $2$ turns. A sample game:
$$
[1, 2, 2]\xrightarrow{\textrm{Dr. One} }[1, 0, 2]\xrightarrow{\textrm{Dr. Zero} }[1, 0, 1]\xrightarrow{\textrm{Dr. One} }[1, 0, 0]\xrightarrow[\textrm{skip}]{\textrm{Dr. Zero} }
[1, 0, 0]\xrightarrow{\textrm{Dr. One} }[0, 0, 0]\xrightarrow[\textrm{skip}]{\textrm{Dr. Zero} }[0, 0, 0].
$$
Let $S(n)$ be the minimal number of skips needed so that Dr. Zero has a winning strategy.<br>
For example, $S(2) = 2$, $S(5) = 17$, $S(10) = 64$.</p>

<p>Find $S(10^5)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
