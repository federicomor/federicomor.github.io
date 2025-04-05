+++
title = "P367"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_366/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_368/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Bozo Sort</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th January 2012, 10:00 pm; Solved by 577;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=367">Problem 367</a></h3></div>
<div class="problem_content" role="problem">
<p>
<strong>Bozo sort</strong>, not to be confused with the slightly less efficient <strong>bogo sort</strong>, consists out of checking if the input sequence is sorted and if not swapping randomly two elements. This is repeated until eventually the sequence is sorted.
</p>
<p>
If we consider all permutations of the first $4$ natural numbers as input the expectation value of the number of swaps, averaged over all $4!$ input sequences is $24.75$.<br>
The already sorted sequence takes $0$ steps. 
</p>
<p>
In this problem we consider the following variant on bozo sort.<br>
If the sequence is not in order we pick three elements at random and shuffle these three elements randomly.<br>
All $3!=6$ permutations of those three elements are equally likely. <br>
The already sorted sequence will take $0$ steps.<br>
If we consider all permutations of the first $4$ natural numbers as input the expectation value of the number of shuffles, averaged over all $4!$ input sequences is $27.5$. <br>
Consider as input sequences the permutations of the first $11$ natural numbers.<br>
Averaged over all $11!$ input sequences, what is the expected number of shuffles this sorting algorithm will perform?
</p>
<p>
Give your answer rounded to the nearest integer.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
