+++
title = "P566"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_565/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_567/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cake Icing Puzzle</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 25th June 2016, 01:00 pm; Solved by 213;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=566">Problem 566</a></h3></div>
<div class="problem_content" role="problem">
<p>Adam plays the following game with his birthday cake.</p>

<p>He cuts a piece forming a circular sector of $60$ degrees and flips the piece upside down, with the icing on the bottom.<br>
He then rotates the cake by $60$ degrees counterclockwise, cuts an adjacent $60$ degree piece and flips it upside down.<br>
He keeps repeating this, until after a total of twelve steps, all the icing is back on top.</p>

<p>Amazingly, this works for any piece size, even if the cutting angle is an irrational number: all the icing will be back on top after a finite number of steps.</p>

<p>Now, Adam tries something different: he alternates cutting pieces of size $x=\frac{360}{9}$ degrees, $y=\frac{360}{10}$ degrees and $z=\frac{360 }{\sqrt{11} }$ degrees. The first piece he cuts has size $x$ and he flips it. The second has size $y$ and he flips it. The third has size $z$ and he flips it. He repeats this with pieces of size $x$, $y$ and $z$ in that order until all the icing is back on top, and discovers he needs $60$ flips altogether.</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0566-cakeicingpuzzle.gif?1678992057" alt="0566-cakeicingpuzzle.gif"></div>

<p>Let $F(a, b, c)$ be the minimum number of piece flips needed to get all the icing back on top for pieces of size $x=\frac{360}{a}$ degrees, $y=\frac{360}{b}$ degrees and $z=\frac{360}{\sqrt{c} }$ degrees.<br>
Let $G(n) = \sum_{9 \le a \lt b \lt c \le n} F(a,b,c)$, for integers $a$, $b$ and $c$.</p>

<p>You are given that $F(9, 10, 11) = 60$, $F(10, 14, 16) = 506$, $F(15, 16, 17) = 785232$.<br>
You are also given $G(11) = 60$, $G(14) = 58020$ and $G(17) = 1269260$.</p>

<p>Find $G(53)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
