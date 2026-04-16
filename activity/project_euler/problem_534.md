+++
title = "P534"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_533/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_535/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Weak Queens</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th November 2015, 01:00 pm; Solved by 357;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=534">Problem 534</a></h3></div>
<div class="problem_content" role="problem">
<p>The classical <b>eight queens puzzle</b> is the well known problem of placing eight chess queens on an $8 \times 8$ chessboard so that no two queens threaten each other. Allowing configurations to reappear in rotated or mirrored form, a total of $92$ distinct configurations can be found for eight queens. The general case asks for the number of distinct ways of placing $n$ queens on an $n \times n$ board, e.g. you can find $2$ distinct configurations for $n=4$.</p>

<p>Let's define a <dfn>weak queen</dfn> on an $n \times n$ board to be a piece which can move any number of squares if moved horizontally, but a maximum of $n - 1 - w$ squares if moved vertically or diagonally, $0 \le w \lt n$ being the "weakness factor". For example, a weak queen on an $n \times n$ board with a weakness factor of $w=1$ located in the bottom row will not be able to threaten any square in the top row as the weak queen would need to move $n - 1$ squares vertically or diagonally to get there, but may only move $n - 2$ squares in these directions. In contrast, the weak queen is not handicapped horizontally, thus threatening every square in its own row, independently from its current position in that row.</p>

<p>Let $Q(n,w)$ be the number of ways $n$ weak queens with weakness factor $w$ can be placed on an $n \times n$ board so that no two queens threaten each other. It can be shown, for example, that $Q(4,0)=2$, $Q(4,2)=16$ and $Q(4,3)=256$.</p>

<p>Let $S(n)=\displaystyle\sum_{w=0}^{n-1} Q(n,w)$.</p>

<p>You are given that $S(4)=276$ and $S(5)=3347$.</p>

<p>Find $S(14)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
