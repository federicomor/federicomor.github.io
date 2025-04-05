+++
title = "P312"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_311/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_313/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cyclic Paths on Sierpiński Graphs</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 28th November 2010, 01:00 am; Solved by 944;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=312">Problem 312</a></h3></div>
<div class="problem_content" role="problem">
<p>- A <strong>Sierpiński graph</strong> of order-$1$ ($S_1$) is an equilateral triangle.<br>
- $S_{n + 1}$ is obtained from $S_n$ by positioning three copies of $S_n$ so that every pair of copies has one common corner.
</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0312_sierpinskyAt.gif?1678992056" class="dark_img" alt="0312_sierpinskyAt.gif"></div>

<p>Let $C(n)$ be the number of cycles that pass exactly once through all the vertices of $S_n$.<br>
For example, $C(3) = 8$ because eight such cycles can be drawn on $S_3$, as shown below:
</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0312_sierpinsky8t.gif?1678992056" class="dark_img" alt="0312_sierpinsky8t.gif"></div>

<p>It can also be verified that :<br>
$C(1) = C(2) = 1$<br>
$C(5) = 71328803586048$<br>
$C(10\,000) \bmod 10^8 = 37652224$<br>
$C(10\,000) \bmod 13^8 = 617720485$<br></p>

<p>Find $C(C(C(10\,000))) \bmod 13^8$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
