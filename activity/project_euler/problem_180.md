+++
title = "P180"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_179/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_181/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Golden Triplets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd February 2008, 09:00 am; Solved by 1792;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=180">Problem 180</a></h3></div>
<div class="problem_content" role="problem">
<p>For any integer $n$, consider the three functions</p>
\begin{align}
f_{1, n}(x, y, z) &amp;= x^{n + 1} + y^{n + 1} - z^{n + 1}\\
f_{2, n}(x, y, z) &amp;= (xy + yz + zx) \cdot (x^{n - 1} + y^{n - 1} - z^{n - 1})\\
f_{3, n}(x, y, z) &amp;= xyz \cdot (x^{n - 2} + y^{n - 2} - z^{n - 2})
\end{align}

<p>and their combination
$$f_n(x, y, z) = f_{1, n}(x, y, z) + f_{2, n}(x, y, z) - f_{3, n}(x, y, z).$$</p>

<p>We call $(x, y, z)$ a golden triple of order $k$ if $x$, $y$, and $z$ are all rational numbers of the form $a / b$ with $0 \lt a \lt b \le k$ and there is (at least) one integer $n$, so that $f_n(x, y, z) = 0$.</p>
<p>Let $s(x, y, z) = x + y + z$.<br>
Let $t = u / v$ be the sum of all distinct $s(x, y, z)$ for all golden triples $(x, y, z)$ of order $35$.<br> All the $s(x, y, z)$ and $t$ must be in reduced form.</p>
<p>Find $u + v$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
