+++
title = "P837"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_836/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_838/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Amidakuji</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 1st April 2023, 05:00 pm; Solved by 230;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=837">Problem 837</a></h3></div>
<div class="problem_content" role="problem">
<p>
<a href="https://projecteuler.net/https://en.wikipedia.org/wiki/Amidakuji">Amidakuji</a> (Japanese: 阿弥陀籤) is a method for producing a random permutation of a set of objects.</p>

<p>
In the beginning, a number of parallel vertical lines are drawn, one for each object. Then a specified number of horizontal rungs are added, each lower than any previous rungs. Each rung is drawn as a line segment spanning a randomly select pair of adjacent vertical lines.</p>

<p>
For example, the following diagram depicts an Amidakuji with three objects ($A$, $B$, $C$) and six rungs:</p>
<div style="text-align:center;">
<img src="https://projecteuler.net/resources/images/0837_amidakuji.png?1678992054" alt="0837_amidakuji.png">
</div>

<p>
The coloured lines in the diagram illustrate how to form the permutation. For each object, starting from the top of its vertical line, trace downwards but follow any rung encountered along the way, and record which vertical we end up on. In this example, the resulting permutation happens to be the identity: $A\mapsto A$, $B\mapsto B$, $C\mapsto C$.</p>

<p>
Let $a(m, n)$ be the number of different three-object Amidakujis that have $m$ rungs between $A$ and $B$, and $n$ rungs between $B$ and $C$, and whose outcome is the identity permutation. For example, $a(3, 3) = 2$, because the Amidakuji shown above and its mirror image are the only ones with the required property.</p>

<p>
You are also given that $a(123, 321) \equiv 172633303 \pmod{1234567891}$.</p>

<p>
Find $a(123456789, 987654321)$. Give your answer modulo $1234567891$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
