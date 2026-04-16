+++
title = "P913"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_912/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_914/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Row-major vs Column-major</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th October 2024, 02:00 pm; Solved by 140;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=913">Problem 913</a></h3></div>
<div class="problem_content" role="problem">
<p>
The numbers from $1$ to $12$ can be arranged into a $3 \times 4$ matrix in either <strong>row-major</strong> or <strong>column-major</strong> order:
$$R=\begin{pmatrix}
1 &amp; 2 &amp; 3 &amp; 4\\
5 &amp; 6 &amp; 7 &amp; 8\\
9 &amp; 10 &amp; 11 &amp; 12\end{pmatrix}, C=\begin{pmatrix}
1 &amp; 4 &amp; 7 &amp; 10\\
2 &amp; 5 &amp; 8 &amp; 11\\
3 &amp; 6 &amp; 9 &amp; 12\end{pmatrix}$$
By swapping two entries at a time, at least $8$ swaps are needed to transform $R$ to $C$.</p>

<p>
Let $S(n, m)$ be the minimal number of swaps needed to transform an $n\times m$ matrix of $1$ to $nm$ from row-major order to column-major order. Thus $S(3, 4) = 8$.</p>

<p>
You are given that the sum of $S(n, m)$ for $2 \leq n \leq m \leq 100$ is $12578833$.</p>

<p>
Find the sum of $S(n^4, m^4)$ for $2 \leq n \leq m \leq 100$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
