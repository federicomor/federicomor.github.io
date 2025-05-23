+++
title = "P122"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_121/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_123/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Efficient Exponentiation</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 2nd June 2006, 06:00 pm; Solved by 8784;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=122">Problem 122</a></h3></div>
<div class="problem_content" role="problem">
<p>The most naive way of computing $n^{15}$ requires fourteen multiplications:
$$n \times n \times \cdots \times n = n^{15}.$$</p>
<p>But using a "binary" method you can compute it in six multiplications:</p>
\begin{align}
n \times n &amp;= n^2\\
n^2 \times n^2 &amp;= n^4\\
n^4 \times n^4 &amp;= n^8\\
n^8 \times n^4 &amp;= n^{12}\\
n^{12} \times n^2 &amp;= n^{14}\\
n^{14} \times n &amp;= n^{15}
\end{align}
<p>However it is yet possible to compute it in only five multiplications:</p>
\begin{align}
n \times n &amp;= n^2\\
n^2 \times n &amp;= n^3\\
n^3 \times n^3 &amp;= n^6\\
n^6 \times n^6 &amp;= n^{12}\\
n^{12} \times n^3 &amp;= n^{15}
\end{align}
<p>We shall define $m(k)$ to be the minimum number of multiplications to compute $n^k$; for example $m(15) = 5$.</p>
<p>Find $\sum\limits_{k = 1}^{200} m(k)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
