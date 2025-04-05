+++
title = "P535"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_534/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_536/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Fractal Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 21st November 2015, 04:00 pm; Solved by 314;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=535">Problem 535</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the infinite integer sequence S starting with:<br>
$S = 1, 1, 2, 1, 3, 2, 4, 1, 5, 3, 6, 2, 7, 8, 4, 9, 1, 10, 11, 5, \dots$</p>

<p>Circle the first occurrence of each integer.<br>
$S = \enclose{circle}1, 1, \enclose{circle}2, 1, \enclose{circle}3, 2, \enclose{circle}4, 1, \enclose{circle}5, 3, \enclose{circle}6, 2, \enclose{circle}7, \enclose{circle}8, 4, \enclose{circle}9, 1, \enclose{circle}{10}, \enclose{circle}{11}, 5, \dots$</p>

<p>The sequence is characterized by the following properties:</p>
<ul><li>The circled numbers are consecutive integers starting with $1$.</li>
<li>Immediately preceding each non-circled numbers $a_i$, there are exactly $\lfloor \sqrt{a_i} \rfloor$ adjacent circled numbers, where $\lfloor\,\rfloor$ is the floor function.</li>
<li>If we remove all circled numbers, the remaining numbers form a sequence identical to $S$, so $S$ is a <strong>fractal sequence</strong>.</li></ul>

<p>Let $T(n)$ be the sum of the first $n$ elements of the sequence.<br>
You are given $T(1) = 1$, $T(20) = 86$, $T(10^3) = 364089$ and $T(10^9) = 498676527978348241$.</p>

<p>Find $T(10^{18})$. Give the last $9$ digits of your answer.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
