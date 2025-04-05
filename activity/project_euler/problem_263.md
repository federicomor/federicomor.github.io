+++
title = "P263"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_262/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_264/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>An Engineers' Dream Come True</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th November 2009, 01:00 am; Solved by 1179;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=263">Problem 263</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider the number $6$. The divisors of $6$ are: $1,2,3$ and $6$.<br>
Every number from $1$ up to and including $6$ can be written as a sum of distinct divisors of $6$:<br>
$1=1$, $2=2$, $3=1+2$, $4=1+3$, $5=2+3$, $6=6$.<br>
A number $n$ is called a practical number if every number from $1$ up to and including $n$ can be expressed as a sum of distinct divisors of $n$.
</p>
<p>
A pair of consecutive prime numbers with a difference of six is called a sexy pair (since "sex" is the Latin word for "six"). The first sexy pair is $(23, 29)$.
</p>
<p>
We may occasionally find a triple-pair, which means three consecutive sexy prime pairs, such that the second member of each pair is the first member of the next pair.
</p>
<p>
We shall call a number $n$ such that :
</p><ul><li>$(n-9, n-3)$, $(n-3,n+3)$, $(n+3, n+9)$ form a triple-pair, and 
</li><li>the numbers $n-8$, $n-4$, $n$, $n+4$ and $n+8$ are all practical,
</li></ul> 
an engineers’ paradise.

<p>
Find the sum of the first four engineers’ paradises.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
