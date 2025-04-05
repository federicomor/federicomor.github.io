+++
title = "P328"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_327/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_329/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Lowest-cost Search</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 12th March 2011, 10:00 pm; Solved by 500;<br>Difficulty rating: 95%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=328">Problem 328</a></h3></div>
<div class="problem_content" role="problem">
<p>We are trying to find a hidden number selected from the set of integers $\{1, 2, \dots, n\}$ by asking questions. 
Each number (question) we ask, has a <u>cost equal to the number asked</u> and we get one of three possible answers:<br></p><ul><li> "Your guess is lower than the hidden number", or</li>
<li> "Yes, that's it!", or</li>
<li> "Your guess is higher than the hidden number".</li>
</ul><p>Given the value of $n$, an <dfn>optimal strategy</dfn> minimizes the total cost (i.e. the sum of all the questions asked) <u>for the worst possible case</u>. E.g.</p>

<p>If $n=3$, the best we can do is obviously to ask the number "<b>2</b>". The answer will immediately lead us to find the hidden number (at a total cost $= 2$).</p>

<p>If $n=8$, we might decide to use a "binary search" type of strategy: Our first question would be "$\mathbf 4$" and if the hidden number is higher than $4$ we will need one or two additional questions.<br>
Let our second question be "$\mathbf 6$". If the hidden number is still higher than $6$, we will need a third question in order to discriminate between $7$ and $8$.<br>
Thus, our third question will be "$\mathbf 7$" and the total cost for this worst-case scenario will be $4+6+7={\color{red}\mathbf{17} }$.</p>

<p>We can improve considerably the worst-case cost for $n=8$, by asking "$\mathbf 5$" as our first question.<br>
If we are told that the hidden number is higher than $5$, our second question will be "$\mathbf 7$", then we'll know for certain what the hidden number is (for a total cost of $5+7={\color{blue}\mathbf{12} }$).<br>
If we are told that the hidden number is lower than $5$, our second question will be "$\mathbf 3$" and if the hidden number is lower than $3$ our third question will be "$\mathbf 1$", giving a total cost of $5+3+1={\color{blue}\mathbf 9}$.<br>
Since ${\color{blue}\mathbf{12} } \gt {\color{blue}\mathbf 9}$, the worst-case cost for this strategy is ${\color{red}\mathbf{12} }$. That's better than what we achieved previously with the "binary search" strategy; it is also better than or equal to any other strategy.<br>
So, in fact, we have just described an optimal strategy for $n=8$.</p>

<p>Let $C(n)$ be the worst-case cost achieved by an optimal strategy for $n$, as described above.<br>
Thus $C(1) = 0$, $C(2) = 1$, $C(3) = 2$ and $C(8) = 12$.<br>
Similarly, $C(100) = 400$ and $\sum \limits_{n = 1}^{100} C(n) = 17575$.</p>

<p>Find $\sum \limits_{n = 1}^{200000} C(n)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
