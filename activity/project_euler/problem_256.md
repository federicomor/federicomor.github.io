+++
title = "P256"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_255/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_257/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Tatami-Free Rooms</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th September 2009, 01:00 am; Solved by 830;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=256">Problem 256</a></h3></div>
<div class="problem_content" role="problem">
<p>Tatami are rectangular mats, used to completely cover the floor of a room, without overlap.</p>

<p>Assuming that the only type of available tatami has dimensions $1 \times 2$, there are obviously some limitations for the shape and size of the rooms that can be covered.</p>

<p>For this problem, we consider only rectangular rooms with integer dimensions $a, b$ and even size $s = a \cdot b$.<br>
We use the term 'size' to denote the floor surface area of the room, and — without loss of generality — we add the condition $a \le b$.</p>

<p>There is one rule to follow when laying out tatami: there must be no points where corners of four different mats meet.<br>
For example, consider the two arrangements below for a $4 \times 4$ room:</p>
<div align="center">
<img src="https://projecteuler.net/resources/images/0256_tatami3.gif?1678992056" alt="0256_tatami3.gif"><br></div>

<p>The arrangement on the left is acceptable, whereas the one on the right is not: a red "<span style="color:#FF0000;"><b>X</b></span>" in the middle, marks the point where four tatami meet.</p>

<p>Because of this rule, certain even-sized rooms cannot be covered with tatami: we call them tatami-free rooms.<br>
Further, we define $T(s)$ as the number of tatami-free rooms of size $s$.</p>

<p>The smallest tatami-free room has size $s = 70$ and dimensions $7 \times 10$.<br>
All the other rooms of size $s = 70$ can be covered with tatami; they are: $1 \times 70$, $2 \times 35$ and $5 \times 14$.<br>
Hence, $T(70) = 1$.</p>

<p>Similarly, we can verify that $T(1320) = 5$ because there are exactly $5$ tatami-free rooms of size $s = 1320$:<br>
$20 \times 66$, $22 \times 60$, $24 \times 55$, $30 \times 44$ and $33 \times 40$.<br>
In fact, $s = 1320$ is the smallest room-size $s$ for which $T(s) = 5$.</p>

<p>Find the smallest room-size $s$ for which $T(s) = 200$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
