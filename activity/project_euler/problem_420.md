+++
title = "P420"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_419/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_421/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>$2 \times 2$ Positive Integer Matrix</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 24th March 2013, 01:00 am; Solved by 495;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=420">Problem 420</a></h3></div>
<div class="problem_content" role="problem">
<p>A <dfn>positive integer matrix</dfn> is a matrix whose elements are all positive integers.<br>
Some positive integer matrices can be expressed as a square of a positive integer matrix in two different ways. Here is an example:</p>

$$\begin{pmatrix}
40 &amp; 12\\
48 &amp; 40
\end{pmatrix} =
\begin{pmatrix}
2 &amp; 3\\
12 &amp; 2
\end{pmatrix}^2 =
\begin{pmatrix}
6 &amp; 1\\
4 &amp; 6
\end{pmatrix}^2
$$

<p>
We define $F(N)$ as the number of the $2\times 2$ positive integer matrices which have a <strong class="tooltip">trace<span class="tooltiptext">the sum of the elements on the main diagonal</span></strong> less than $N$ and which can be expressed as a square of a positive integer matrix in two different ways.<br>
We can verify that $F(50) = 7$ and $F(1000) = 1019$.
</p>

<p>
Find $F(10^7)$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
