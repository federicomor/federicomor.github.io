+++
title = "P740"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_739/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_741/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Secret Santa</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th December 2020, 01:00 pm; Solved by 228;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=740">Problem 740</a></h3></div>
<div class="problem_content" role="problem">
<p>
Secret Santa is a process that allows $n$ people to give each other presents, so that each person gives a single present and receives a single present. At the beginning each of the $n$ people write their name on a slip of paper and put the slip into a hat. Each person takes a random slip from the hat. If the slip has their name they draw another random slip from the hat and then put the slip with their name back into the hat. At the end everyone buys a Christmas present for the person whose name is on the slip they are holding. This process will fail if the last person draws their own name.
</p>
<p>
In this variation each of the $n$ people gives and receives two presents. At the beginning each of the $n$ people writes their name on two slips of paper and puts the slips into a hat (there will be $2n$ slips of paper in the hat). As before each person takes from the hat a random slip that does not contain their own name. Then the same person repeats this process thus ending up with two slips, neither of which contains that person's own name. Then the next person draws two slips in the same way, and so on. The process will fail if the last person gets at least one slip with their own name. 
</p>
<p>
Define $q(n)$ to be the probability of this happening. You are given $q(3) = 0.3611111111$ and $q(5) = 0.2476095994$ both rounded to 10 decimal places.
</p>
<p>
Find $q(100)$ rounded to 10 decimal places.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
