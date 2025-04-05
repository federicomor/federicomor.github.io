+++
title = "P926"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_925/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_927/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Total Roundness</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th January 2025, 10:00 pm; Solved by 535;<br>Difficulty rating: 10%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=926">Problem 926</a></h3></div>
<div class="problem_content" role="problem">
<p>
A <strong>round number</strong> is a number that ends with one or more zeros in a given base.</p>

<p>
Let us define the <dfn>roundness</dfn> of a number $n$ in base $b$ as the number of zeros at the end of the base $b$ representation of $n$.<br>
For example, $20$ has roundness $2$ in base $2$, because the base $2$ representation of $20$ is $10100$, which ends with $2$ zeros.</p>

<p>
Also define $R(n)$, the <dfn>total roundness</dfn> of a number $n$, as the sum of the roundness of $n$ in base $b$ for all $b &gt; 1$.<br>
For example, $20$ has roundness $2$ in base $2$ and roundness $1$ in base $4$, $5$, $10$, $20$, hence we get $R(20)=6$.<br>
You are also given $R(10!) = 312$.</p>

<p>
Find $R(10\,000\,000!)$. Give your answer modulo $10^9 + 7$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
