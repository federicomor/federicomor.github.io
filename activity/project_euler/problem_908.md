+++
title = "P908"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_907/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_909/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Clock Sequence II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd September 2024, 02:00 am; Solved by 130;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=908">Problem 908</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <dfn>clock sequence</dfn> is a periodic sequence of positive integers that can be broken into contiguous segments such that the sum of the $n$-th segment is equal to $n$.</p>

<p>
For example, the sequence $$1\ 2\ 3\ 4\ 3\ 2\ 1\ 2\ 3\ 4\ 3\ 2\ 1\ 2\ 3\ 4\ 3\ 2\ 1\ \cdots$$ is a clock sequence with period $6$, as it can be broken into $$1\Big |2\Big |3\Big |4\Big |3\ 2\Big |1\ 2\ 3\Big |4\ 3\Big |2\ 1\ 2\ 3\Big |4\ 3\ 2\Big |1\ 2\ 3\ 4\Big |3\ 2\ 1\ 2\ 3\Big |\cdots$$
Let $C(N)$ be the number of different clock sequences with period at most $N$.
For example, $C(3) = 3$, $C(4) = 7$ and $C(10) = 561$.</p>

<p>
Find $C(10^4) \bmod 1111211113$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
