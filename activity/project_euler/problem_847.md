+++
title = "P847"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_846/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_848/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Jack's Bean</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th June 2023, 11:00 pm; Solved by 130;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=847">Problem 847</a></h3></div>
<div class="problem_content" role="problem">
<p>
Jack has three plates in front of him. The giant has $N$ beans that he distributes to the three plates. All the beans look the same, but one of them is a magic bean. Jack doesn't know which one it is, but the giant knows.</p>

<p>
Jack can ask the giant questions of the form: "Does this subset of the beans contain the magic bean?" In each question Jack may choose any subset of beans from a single plate, and the giant will respond truthfully.</p>

<p>
If the three plates contain $a$, $b$ and $c$ beans respectively, we let $h(a, b, c)$ be the minimal number of questions Jack needs to ask in order to guarantee he locates the magic bean. For example, $h(1, 2, 3) = 3$ and $h(2, 3, 3) = 4$.</p>

<p>
Let $H(N)$ be the sum of $h(a, b, c)$ over all triples of non-negative integers $a$, $b$, $c$ with $1 \leq a + b + c \leq N$.<br>
You are given: $H(6) = 203$ and $H(20) = 7718$.</p>

<p>
A <strong>repunit</strong>, $R_n$, is a number made up with $n$ digits all '1'. For example, $R_3 = 111$ and $H(R_3) = 1634144$.</p>

<p>
Find $H(R_{19})$. Give your answer modulo  $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
