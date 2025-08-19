+++
title = "P820"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_819/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_821/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>$N$<sup>th</sup> Digit of Reciprocals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 10th December 2022, 04:00 pm; Solved by 1112;<br>Difficulty rating: 10%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=820">Problem 820</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $d_n(x)$ be the $n$<sup>th</sup> decimal digit of the fractional part of $x$, or $0$ if the fractional part has fewer than $n$ digits.</p>
<p>For example:</p>
<ul>
<li>$d_7 \mathopen{}\left( 1 \right)\mathclose{} = d_7 \mathopen{}\left( \frac 1 2 \right)\mathclose{} = d_7 \mathopen{}\left( \frac 1 4 \right)\mathclose{} = d_7 \mathopen{}\left( \frac 1 5 \right)\mathclose{} = 0$</li>
<li>$d_7 \mathopen{}\left( \frac 1 3 \right)\mathclose{} = 3$ since $\frac 1 3 =$ 0.333333<span style="color:#FF0000;font-weight:bold;">3</span>333...</li>
<li>$d_7 \mathopen{}\left( \frac 1 6 \right)\mathclose{} = 6$ since $\frac 1 6 =$ 0.166666<span style="color:#FF0000;font-weight:bold;">6</span>666...</li>
<li>$d_7 \mathopen{}\left( \frac 1 7 \right)\mathclose{} = 1$ since $\frac 1 7 =$ 0.142857<span style="color:#FF0000;font-weight:bold;">1</span>428...</li>
</ul>
<p>Let $\displaystyle  S(n) = \sum_{k=1}^n d_n \mathopen{}\left( \frac 1 k \right)\mathclose{}$.</p>
<p>You are given:</p>
<ul>
<li>$S(7) = 0 + 0 + 3 + 0 + 0 + 6 + 1 = 10$</li>
<li>$S(100) = 418$</li>
</ul>
<p>Find $S(10^7)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
