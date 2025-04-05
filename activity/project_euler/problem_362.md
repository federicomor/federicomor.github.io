+++
title = "P362"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_361/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_363/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Squarefree Factors</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th December 2011, 07:00 am; Solved by 533;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=362">Problem 362</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider the number $54$.<br>
$54$ can be factored in $7$ distinct ways into one or more factors larger than $1$:<br>
$54$, $2 \times 27$, $3 \times 18$, $6 \times 9$, $3 \times 3 \times 6$, $2 \times 3 \times 9$ and $2 \times 3 \times 3 \times 3$.<br>
If we require that the factors are all squarefree only two ways remain: $3 \times 3 \times 6$ and $2 \times 3 \times 3 \times 3$.
</p>
<p>
Let's call $\operatorname{Fsf}(n)$ the number of ways $n$ can be factored into one or more squarefree factors larger than $1$, so
$\operatorname{Fsf}(54)=2$.
</p>
<p>
Let $S(n)$ be $\sum \operatorname{Fsf}(k)$ for $k=2$ to $n$.
</p>
<p>
$S(100)=193$.
</p>
<p>
Find $S(10\,000\,000\,000)$. 
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
