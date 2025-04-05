+++
title = "P741"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_740/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_742/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Binary Grid Colouring</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 2nd January 2021, 04:00 pm; Solved by 170;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=741">Problem 741</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $f(n)$ be the number of ways an $n\times n$ square grid can be coloured, each cell either black or white, such that each row and each column contains exactly two black cells.<br>
For example, $f(4)=90$, $f(7) = 3110940$ and $f(8) = 187530840$.
</p>
<p>
Let $g(n)$ be the number of colourings in $f(n)$ that are unique up to rotations and reflections.<br>
You are given $g(4)=20$, $g(7) = 390816$ and $g(8) = 23462347$ giving $g(7)+g(8) = 23853163$.
</p>
<p>
Find $g(7^7) + g(8^8)$. Give your answer modulo $1\,000\,000\,007$.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
