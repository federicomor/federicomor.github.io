+++
title = "P726"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_725/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_727/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Falling Bottles</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th September 2020, 08:00 pm; Solved by 220;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=726">Problem 726</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider a stack of bottles of wine. There are $n$ layers in the stack with the top layer containing only one bottle and the bottom layer containing $n$ bottles. For $n=4$ the stack looks like the picture below.
</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0726_FallingBottles.jpg?1678992055" class="dark_img" alt=""></div>
<p>
The <dfn>collapsing process</dfn> happens every time a bottle is taken. A space is created in the stack and that space is filled according to the following recursive steps:
</p><ul>
<li>No bottle touching from above: nothing happens. For example, taking $F$.</li>
<li>One bottle touching from above: that will drop down to fill the space creating another space. For example, taking $D$.</li>
<li>Two bottles touching from above: one will drop down to fill the space creating another space. For example, taking $C$.</li>
</ul>
<p>
This process happens recursively; for example, taking bottle $A$ in the diagram above. Its place can be filled with either $B$ or $C$. If it is filled with $C$ then the space that $C$ creates can be filled with $D$ or $E$. So there are 3 different collapsing processes that can happen if $A$ is taken, although the final shape (in this case) is the same.
</p>
<p>
Define $f(n)$ to be the number of ways that we can take all the bottles from a stack with $n$ layers. 
Two ways are considered different if at any step we took a different bottle or the collapsing process went differently.
</p>
<p>
You are given $f(1) = 1$, $f(2) = 6$ and $f(3) = 1008$.
</p>
<p>
Also define
$$S(n) = \sum_{k=1}^n f(k).$$</p>
<p>
Find $S(10^4)$ and give your answer modulo $1\,000\,000\,033$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
