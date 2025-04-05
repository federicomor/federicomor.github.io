+++
title = "P347"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_346/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_348/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Largest Integer Divisible by Two Primes</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd September 2011, 04:00 pm; Solved by 5051;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=347">Problem 347</a></h3></div>
<div class="problem_content" role="problem">
<p>
The largest integer $\le 100$ that is only divisible by both the primes $2$ and $3$ is $96$, as $96=32\times 3=2^5 \times 3$.
For two <i>distinct</i> primes $p$ and $q$ let $M(p,q,N)$ be the largest positive integer $\le N$ only divisible by both $p$ and $q$ and $M(p,q,N)=0$ if such a positive integer does not exist.
</p>
<p>
E.g. $M(2,3,100)=96$.<br> 
$M(3,5,100)=75$ and not $90$ because $90$ is divisible by $2$, $3$ and $5$.<br>
Also $M(2,73,100)=0$ because there does not exist a positive integer $\le 100$ that is divisible by both $2$ and $73$.
</p>
<p>
Let $S(N)$ be the sum of all distinct $M(p,q,N)$.
$S(100)=2262$.
</p>
<p>
Find $S(10\,000\,000)$.
</p>





</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
