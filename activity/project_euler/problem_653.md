+++
title = "P653"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_652/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_654/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Frictionless Tube</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 27th January 2019, 01:00 am; Solved by 358;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=653">Problem 653</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider a horizontal frictionless tube with length $L$ millimetres, and a diameter of 20 millimetres. The east end of the tube is open, while the west end is sealed. The tube contains $N$ marbles of diameter 20 millimetres at designated starting locations, each one initially moving either westward or eastward with common speed $v$.</p>

<p>Since there are marbles moving in opposite directions, there are bound to be some collisions. We assume that the collisions are perfectly elastic, so both marbles involved instantly change direction and continue with speed $v$ away from the collision site. Similarly, if the west-most marble collides with the sealed end of the tube, it instantly changes direction and continues eastward at speed $v$. On the other hand, once a marble reaches the unsealed east end, it exits the tube and has no further interaction with the remaining marbles.</p>

<p>To obtain the starting positions and initial directions, we use the pseudo-random sequence $r_j$ defined by:<br>
$r_1 = 6\,563\,116$<br>
$r_{j+1} = r_j^2 \bmod 32\,745\,673$<br>
The west-most marble is initially positioned with a gap of $(r_1 \bmod 1000) + 1$ millimetres between it and the sealed end of the tube, measured from the west-most point of the surface of the marble. Then, for $2\le j\le N$, counting from the west, the gap between the $(j-1)$th and $j$th marbles, as measured from their closest points, is given by $(r_j \bmod 1000) + 1$ millimetres.
Furthermore, the $j$th marble is initially moving eastward if $r_j \le 10\,000\,000$, and westward if $r_j &gt; 10\,000\,000$.</p>

<p>For example, with $N=3$, the sequence specifies gaps of 117, 432, and 173 millimetres. The marbles' <i>centres</i> are therefore 127, 579, and 772 millimetres from the sealed west end of the tube. The west-most marble initially moves eastward, while the other two initially move westward.</p>

<p>Under this setup, and with a five metre tube ($L=5000$), it turns out that the middle (second) marble travels 5519 millimetres before its centre reaches the east-most end of the tube.</p>

<p>Let $d(L, N, j)$ be the distance in millimetres that the $j$th marble travels before its centre reaches the eastern end of the tube. So $d(5000, 3, 2) = 5519$. You are also given that $d(10\,000, 11, 6) = 11\,780$ and $d(100\,000, 101, 51) = 114\,101$.</p>

<p>Find $d(1\,000\,000\,000, 1\,000\,001, 500\,001)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
