+++
title = "P374"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_373/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_375/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Maximum Integer Partition Product</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd March 2012, 07:00 pm; Solved by 769;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=374">Problem 374</a></h3></div>
<div class="problem_content" role="problem">
<p>An integer partition of a number $n$ is a way of writing $n$ as a sum of positive integers.</p>

<p>Partitions that differ only in the order of their summands are considered the same.
A partition of $n$ into <b>distinct parts</b> is a partition of $n$ in which every part occurs at most once.</p>

<p>The partitions of $5$ into distinct parts are:
<br>$5$, $4+1$ and $3+2$.</p>

<p>Let $f(n)$ be the maximum product of the parts of any such partition of $n$ into distinct parts and let $m(n)$ be the number of elements of any such partition of $n$ with that product.</p>

<p>So $f(5)=6$ and $m(5)=2$.</p>

<p>For $n=10$ the partition with the largest product is $10=2+3+5$, which gives $f(10)=30$ and $m(10)=3$.
<br>And their product, $f(10) \cdot m(10) = 30 \cdot 3 = 90$.</p>

<p>It can be verified that
<br>$\sum f(n) \cdot m(n)$ for $1 \le n \le 100 = 1683550844462$.</p>

<p>Find $\sum f(n) \cdot m(n)$ for $1 \le n \le 10^{14}$.
<br>Give your answer modulo $982451653$, the $50$ millionth prime.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
