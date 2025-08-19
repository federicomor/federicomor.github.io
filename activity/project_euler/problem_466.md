+++
title = "P466"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_465/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_467/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Distinct Terms in a Multiplication Table</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 6th April 2014, 07:00 am; Solved by 375;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=466">Problem 466</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $P(m,n)$ be the number of <i>distinct</i> terms in an $m\times n$ multiplication table.</p>

<p>For example, a $3\times 4$ multiplication table looks like this:</p>

<p></p><center><table class="p466"><tr><th>$\times$</th> <th>1</th><th>2</th><th>3</th><th>4</th></tr><tr><th>1</th> <td>1</td><td>2</td><td>3</td><td>4</td></tr><tr><th>2</th> <td>2</td><td>4</td><td>6</td><td>8</td></tr><tr><th>3</th> <td>3</td><td>6</td><td>9</td><td>12</td></tr></table></center>



<p>There are $8$ distinct terms $\{1,2,3,4,6,8,9,12\}$, therefore $P(3,4) = 8$.</p>

<p>You are given that:<br>
$P(64,64) = 1263$,<br>
$P(12,345) = 1998$, and<br>
$P(32,10^{15}) = 13826382602124302$.</p>

<p>Find $P(64,10^{16})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
