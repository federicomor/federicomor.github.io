+++
title = "P192"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_191/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_193/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Best Approximations</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd May 2008, 05:00 am; Solved by 1875;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=192">Problem 192</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $x$ be a real number.<br />
A <b>best approximation</b> to $x$ for the <b>denominator bound</b> $d$ is a rational number $\frac r s $  in<b> reduced form</b>, with $s \le d$, such that any rational number which is closer to $x$ than $\frac r s$ has a denominator larger than $d$:</p>

<div class="center"> $|\frac p q -x | &lt; |\frac r s -x| \Rightarrow q &gt; d$
</div>

<p>For example, the best approximation to $\sqrt {13}$ for the denominator bound 20 is $\frac {18} 5$ and the best approximation to $\sqrt {13}$ for the denominator bound 30 is $\frac {101}{28}$.</p>

<p>Find the sum of all denominators of the best approximations to $\sqrt n$ for the denominator bound $10^{12}$, where $n$ is not a perfect square and $ 1 &lt; n \le 100000$. </p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
