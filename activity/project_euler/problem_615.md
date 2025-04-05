+++
title = "P615"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_614/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_616/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The Millionth Number with at Least One Million Prime Factors</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 3rd December 2017, 10:00 am; Solved by 652;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=615">Problem 615</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider the natural numbers having at least $5$ prime factors, which don't have to be distinct.<br> Sorting these numbers by size gives a list which starts with:
</p>
<ul style="list-style:none;"><li>$32=2 \cdot 2 \cdot 2 \cdot 2 \cdot 2$</li>
<li>$48=2 \cdot 2 \cdot 2 \cdot 2 \cdot 3$</li>
<li>$64=2 \cdot 2 \cdot 2 \cdot 2 \cdot 2 \cdot 2$</li>
<li>$72=2 \cdot 2 \cdot 2 \cdot 3 \cdot 3$</li>
<li>$80=2 \cdot 2 \cdot 2 \cdot 2 \cdot 5$</li>
<li>$96=2 \cdot 2 \cdot 2 \cdot 2 \cdot 2 \cdot 3$</li>
<li>$\cdots$</li></ul>
<p>
So, for example, the fifth number with at least $5$ prime factors is $80$.
</p>
<p>
Find the millionth number with at least one million prime factors.<br>  Give your answer modulo $123454321$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
