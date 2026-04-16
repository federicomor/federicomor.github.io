+++
title = "P69"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_68/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_70/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Totient Maximum</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 7th May 2004, 06:00 pm; Solved by 38686;<br>Difficulty rating: 10%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=69">Problem 69</a></h3></div>
<div class="problem_content" role="problem">
<p>Euler's totient function, $\phi(n)$ [sometimes called the phi function], is defined as the number of positive integers not exceeding $n$ which are relatively prime to $n$. For example, as $1$, $2$, $4$, $5$, $7$, and $8$, are all less than or equal to nine and relatively prime to nine, $\phi(9)=6$.</p>
<div class="center">
<table class="grid center"><tr><td><b>$n$</b></td>
<td><b>Relatively Prime</b></td>
<td><b>$\phi(n)$</b></td>
<td><b>$n/\phi(n)$</b></td>
</tr><tr><td>2</td>
<td>1</td>
<td>1</td>
<td>2</td>
</tr><tr><td>3</td>
<td>1,2</td>
<td>2</td>
<td>1.5</td>
</tr><tr><td>4</td>
<td>1,3</td>
<td>2</td>
<td>2</td>
</tr><tr><td>5</td>
<td>1,2,3,4</td>
<td>4</td>
<td>1.25</td>
</tr><tr><td>6</td>
<td>1,5</td>
<td>2</td>
<td>3</td>
</tr><tr><td>7</td>
<td>1,2,3,4,5,6</td>
<td>6</td>
<td>1.1666...</td>
</tr><tr><td>8</td>
<td>1,3,5,7</td>
<td>4</td>
<td>2</td>
</tr><tr><td>9</td>
<td>1,2,4,5,7,8</td>
<td>6</td>
<td>1.5</td>
</tr><tr><td>10</td>
<td>1,3,7,9</td>
<td>4</td>
<td>2.5</td>
</tr></table></div>
<p>It can be seen that $n = 6$ produces a maximum $n/\phi(n)$ for $n\leq 10$.</p>
<p>Find the value of $n\leq 1\,000\,000$ for which $n/\phi(n)$ is a maximum.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
