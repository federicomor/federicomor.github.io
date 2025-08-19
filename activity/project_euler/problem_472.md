+++
title = "P472"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_471/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_473/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Comfortable Distance II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 18th May 2014, 01:00 am; Solved by 292;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=472">Problem 472</a></h3></div>
<div class="problem_content" role="problem">
<p>There are $N$ seats in a row. $N$ people come one after another to fill the seats according to the following rules:
</p><ol><li>No person sits beside another.</li>
<li>The first person chooses any seat.</li>
<li>Each subsequent person chooses the seat furthest from anyone else already seated, as long as it does not violate rule 1. If there is more than one choice satisfying this condition, then the person chooses the leftmost choice.</li>
</ol><p>Note that due to rule 1, some seats will surely be left unoccupied, and the maximum number of people that can be seated is less than $N$ (for $N \gt 1$).</p>

<p>Here are the possible seating arrangements for $N = 15$:
</p><p align="center"><img src="https://projecteuler.net/resources/images/0472_n15.png?1678992053" class="dark_img" alt="0472_n15.png"></p>


<p>We see that if the first person chooses correctly, the $15$ seats can seat up to $7$ people.<br>
We can also see that the first person has $9$ choices to maximize the number of people that may be seated.</p>

<p>Let $f(N)$ be the number of choices the first person has to maximize the number of occupants for $N$ seats in a row. Thus, $f(1) = 1$, $f(15) = 9$, $f(20) = 6$, and $f(500) = 16$.</p>

<p>Also, $\sum f(N) = 83$ for $1 \le N \le 20$ and  $\sum f(N) = 13343$ for $1 \le N \le 500$.</p>

<p>Find $\sum f(N)$ for $1 \le N \le 10^{12}$. Give the last $8$ digits of your answer.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
