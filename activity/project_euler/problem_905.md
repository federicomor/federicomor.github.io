+++
title = "P905"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_904/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_906/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Now I Know</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 31st August 2024, 05:00 pm; Solved by 327;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=905">Problem 905</a></h3></div>
<div class="problem_content" role="problem">
<p>
Three epistemologists, known as A, B, and C, are in a room, each wearing a hat with a number on it. They have been informed beforehand that all three numbers are positive and that one of the numbers is the sum of the other two.</p>

<p>
Once in the room, they can see the numbers on each other's hats but not on their own. Starting with A and proceeding cyclically, each epistemologist must either honestly state "I don't know my number" or announce "Now I know my number!" which terminates the game.</p>

<p>
For instance, if their numbers are $A=2, B=1, C=1$ then A declares "Now I know" at the first turn. If their numbers are $A=2, B=7, C=5$ then "I don't know" is heard four times before B finally declares "Now I know" at the fifth turn.</p>

<p>
Let $F(A,B,C)$ be the number of turns it takes until an epistemologist declares "Now I know", including the turn this declaration is made. So $F(2,1,1)=1$ and $F(2,7,5)=5$.</p>

<p>
Find $\displaystyle \sum_{a=1}^7 \sum_{b=1}^{19} F(a^b, b^a, a^b + b^a)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
