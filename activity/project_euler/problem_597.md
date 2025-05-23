+++
title = "P597"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_596/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_598/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Torpids</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd April 2017, 07:00 am; Solved by 188;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=597">Problem 597</a></h3></div>
<div class="problem_content" role="problem">
The Torpids are rowing races held annually in Oxford, following some curious rules:

<ul><li>
A division consists of $n$ boats (typically 13), placed in order based on past performance.
</li><li>
All boats within a division start at 40 metre intervals along the river, in order with the highest-placed boat starting furthest upstream.
</li><li>
The boats all start rowing simultaneously, upstream, trying to catch the boat in front while avoiding being caught by boats behind.
</li><li>
Each boat continues rowing until <em>either</em> it reaches the finish line <em>or</em> it catches up with ("bumps") a boat in front.
</li><li>
The finish line is a distance $L$ metres (the course length, in reality about 1800 metres) upstream from the starting position of the lowest-placed boat. (Because of the staggered starting positions, higher-placed boats row a slightly shorter course than lower-placed boats.)
</li><li>
When a "bump" occurs, the "bumping" boat takes no further part in the race. The "bumped" boat must continue, however, and may even be "bumped" again by boats that started two or more places behind it.
</li><li>
After the race, boats are assigned new places within the division, based on the bumps that occurred. Specifically, for any boat $A$ that started in a lower place than $B$, then $A$ will be placed higher than $B$ in the new order if and only if one of the following occurred:
  <ol><li> $A$ bumped $B$ directly </li>
  <li> $A$ bumped another boat that went on to bump $B$ </li>
  <li> $A$ bumped another boat, that bumped yet another boat, that bumped $B$ </li>
  <li> etc </li></ol></li></ul><b>NOTE</b>: For the purposes of this problem you may disregard the boats' lengths, and assume that a bump occurs precisely when the two boats draw level. (In reality, a bump is awarded as soon as physical contact is made, which usually occurs when there is much less than a full boat length's overlap.)

<p>
Suppose that, in a particular race, each boat $B_j$ rows at a steady speed $v_j = -$log$X_j$ metres per second, where the $X_j$ are chosen randomly (with uniform distribution) between 0 and 1, independently from one another. These speeds are relative to the riverbank: you may disregard the flow of the river.
</p>
<p>
Let $p(n,L)$ be the probability that the new order is an <b>even permutation</b> of the starting order, when there are $n$ boats in the division and $L$ is the course length.
</p>
<p>
For example, with $n=3$ and $L=160$, labelling the boats as $A$,$B$,$C$ in starting order with $C$ highest, the different possible outcomes of the race are as follows:
</p>
<table cellspacing="15" align="center"><tr><th> Bumps occurring </th>
  <th> New order </th>
  <th> Permutation </th>
  <th> Probability </th>
 </tr><tr align="center"><td> none </td>
  <td> $A$, $B$, $C$ </td>
  <td> even </td>
  <td> $4/15$ </td>
 </tr><tr align="center"><td> $B$ bumps $C$ </td>
  <td> $A$, $C$, $B$ </td>
  <td> odd </td>
  <td> $8/45$ </td>
 </tr><tr align="center"><td> $A$ bumps $B$ </td>
  <td> $B$, $A$, $C$ </td>
  <td> odd </td>
  <td> $1/3$ </td>
 </tr><tr align="center"><td>     $B$ bumps $C$, then $A$ bumps $C$     </td>
  <td> $C$, $A$, $B$ </td>
  <td> even </td>
  <td> $4/27$ </td>
 </tr><tr align="center"><td>     $A$ bumps $B$, then $B$ bumps $C$     </td>
  <td> $C$, $B$, $A$ </td>
  <td> odd </td>
  <td> $2/27$ </td>
 </tr></table><p>
Therefore, $p(3,160) = 4/15 + 4/27 = 56/135$.
</p>
<p>
You are also given that $p(4,400)=0.5107843137$, rounded to 10 digits after the decimal point.
</p>
<p>
Find $p(13,1800)$ rounded to 10 digits after the decimal point.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
