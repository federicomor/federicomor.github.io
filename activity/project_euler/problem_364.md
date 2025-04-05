+++
title = "P364"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_363/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_365/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Comfortable Distance</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 24th December 2011, 01:00 pm; Solved by 784;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=364">Problem 364</a></h3></div>
<div class="problem_content" role="problem">
<p>
There are $N$ seats in a row. $N$ people come after each other to fill the seats according to the following rules:
</p><ol type="1"><li>If there is any seat whose adjacent seat(s) are not occupied take such a seat.</li>
<li>If there is no such seat and there is any seat for which only one adjacent seat is occupied take such a seat.</li>
<li>Otherwise take one of the remaining available seats. </li>
</ol>
Let $T(N)$ be the number of possibilities that $N$ seats are occupied by $N$ people with the given rules.<br> The following figure shows $T(4)=8$.


<div align="center">
<img src="https://projecteuler.net/resources/images/0364_comf_dist.gif?1678992056" class="dark_img" alt="0364_comf_dist.gif"></div>

<p>We can verify that $T(10) = 61632$ and $T(1\,000) \bmod 100\,000\,007 = 47255094$.</p>
<p>Find $T(1\,000\,000) \bmod 100\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
