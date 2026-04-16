+++
title = "P751"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_750/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_752/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Concatenation Coincidence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 13th March 2021, 10:00 pm; Solved by 2645;<br>Difficulty rating: 5%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=751">Problem 751</a></h3></div>
<div class="problem_content" role="problem">
<p>A non-decreasing sequence of integers $a_n$ can be generated from any positive real value $\theta$ by the following procedure:
$$\begin{align}
\begin{split}
b_1 &amp;= \theta \\
b_n &amp;= \left\lfloor b_{n-1} \right\rfloor \left(b_{n-1} - \left\lfloor b_{n-1} \right\rfloor + 1\right)\quad\forall ~ n \geq 2 \\
a_n &amp;= \left\lfloor b_{n} \right\rfloor
\end{split}
\end{align}$$
Where $\left\lfloor \cdot \right\rfloor$ is the floor function.</p>

<p>For example, $\theta=2.956938891377988...$ generates the Fibonacci sequence: $2, 3, 5, 8, 13, 21, 34, 55, 89, ...$</p>

<p>The <i>concatenation</i> of a sequence of positive integers $a_n$ is a real value denoted $\tau$ constructed by concatenating the elements of the sequence after the decimal point, starting at $a_1$: $a_1.a_2a_3a_4...$</p>

<p>For example, the Fibonacci sequence constructed from $\theta=2.956938891377988...$ yields the concatenation $\tau=2.3581321345589...$ Clearly, $\tau \neq \theta$ for this value of $\theta$.</p>

<p>Find the only value of $\theta$ for which the generated sequence starts at $a_1=2$ and the concatenation of the generated sequence equals the original value: $\tau = \theta$. Give your answer rounded to $24$ places after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
