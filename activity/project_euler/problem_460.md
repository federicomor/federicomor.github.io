+++
title = "P460"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_459/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_461/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>An Ant on the Move</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 22nd February 2014, 01:00 pm; Solved by 358;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=460">Problem 460</a></h3></div>
<div class="problem_content" role="problem">
<p>
On the Euclidean plane, an ant travels from point $A(0, 1)$ to point $B(d, 1)$ for an integer $d$.
</p>
<p>
In each step, the ant at point $(x_0, y_0)$ chooses one of the lattice points $(x_1, y_1)$ which satisfy $x_1 \ge 0$ and $y_1 \ge 1$ and goes straight to $(x_1, y_1)$ at a constant velocity $v$. The value of $v$ depends on $y_0$ and $y_1$ as follows:
</p><ul><li> If $y_0 = y_1$, the value of $v$ equals $y_0$.</li>
<li> If $y_0 \ne y_1$, the value of $v$ equals $(y_1 - y_0) / (\ln(y_1) - \ln(y_0))$.</li>
</ul><p>
The left image is one of the possible paths for $d = 4$. First the ant goes from $A(0, 1)$ to $P_1(1, 3)$ at velocity $(3 - 1) / (\ln(3) - \ln(1)) \approx 1.8205$. Then the required time is $\sqrt 5 / 1.8205 \approx 1.2283$.<br>
From $P_1(1, 3)$ to $P_2(3, 3)$ the ant travels at velocity $3$ so the required time is $2 / 3 \approx 0.6667$. From $P_2(3, 3)$ to $B(4, 1)$ the ant travels at velocity $(1 - 3) / (\ln(1) - \ln(3)) \approx 1.8205$ so the required time is $\sqrt 5 / 1.8205 \approx 1.2283$.<br>
Thus the total required time is $1.2283 + 0.6667 + 1.2283 = 3.1233$.
</p>
<p>
The right image is another path. The total required time is calculated as $0.98026 + 1 + 0.98026 = 2.96052$. It can be shown that this is the quickest path for $d = 4$.
</p>
<p align="center"><img src="https://projecteuler.net/resources/images/0460_ant.jpg?1678992054" alt="0460_ant.jpg"></p>
<p>
Let $F(d)$ be the total required time if the ant chooses the quickest path. For example, $F(4) \approx 2.960516287$.<br>
We can verify that $F(10) \approx 4.668187834$ and $F(100) \approx 9.217221972$.
</p>
<p>
Find $F(10000)$. Give your answer rounded to nine decimal places.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
