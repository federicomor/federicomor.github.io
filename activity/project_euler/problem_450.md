+++
title = "P450"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_449/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_451/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Hypocycloid and Lattice Points</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 15th December 2013, 07:00 am; Solved by 225;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=450">Problem 450</a></h3></div>
<div class="problem_content" role="problem">
<p>A hypocycloid is the curve drawn by a point on a small circle rolling inside a larger circle. The parametric equations of a hypocycloid centered at the origin, and starting at the right most point is given by:</p>

<p>$$x(t) = (R - r) \cos(t) + r \cos(\frac {R - r} r t)$$
$$y(t) = (R - r) \sin(t) - r \sin(\frac {R - r} r t)$$</p>

<p>Where $R$ is the radius of the large circle and $r$ the radius of the small circle.</p>

<p>Let $C(R, r)$ be the set of distinct points with integer coordinates on the hypocycloid with radius <var>R</var> and <var>r</var> and for which there is a corresponding value of <var>t</var> such that $\sin(t)$ and $\cos(t)$ are rational numbers.</p>
<p>
Let $S(R, r) = \sum_{(x,y) \in C(R, r)} |x| + |y|$ be the sum of the absolute values of the $x$ and $y$ coordinates of the points in $C(R, r)$.</p>

<p>Let $T(N) = \sum_{R = 3}^N \sum_{r=1}^{\lfloor \frac {R - 1} 2 \rfloor} S(R, r)$ be the sum of $S(R, r)$ for <var>R</var> and <var>r</var> positive integers, $R\leq N$  and $2r &lt; R$.</p>

<p>You are given:</p>
<table>
<tr>
<td class="right">$C(3, 1)$</td><td>=</td><td>$\{(3, 0), (-1, 2), (-1,0), (-1,-2)\}$</td>
</tr>
<tr>
<td>$C(2500, 1000)$</td><td>=</td><td>$\{(2500, 0), (772, 2376), (772, -2376), (516, 1792), (516, -1792), (500, 0), (68, 504), (68, -504),$</td>
</tr>
<tr>
<td colspan="2"> </td><td>$(-1356, 1088), (-1356, -1088), (-1500, 1000), (-1500, -1000)\}$</td>
</tr>
</table>

<p><i>Note:</i> $(-625, 0)$ is not an element of $C(2500, 1000)$ because $\sin(t)$ is not a rational number for the corresponding values of $t$.</p>

<p>$S(3, 1) = (|3| + |0|) + (|-1| + |2|) + (|-1| + |0|) + (|-1| + |-2|) = 10$</p>

<p>$T(3) = 10; T(10) = 524; T(100) = 580442; T(10^3) = 583108600$.</p>

<p>Find $T(10^6)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
