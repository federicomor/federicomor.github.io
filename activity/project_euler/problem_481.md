+++
title = "P481"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_480/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_482/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Chef Showdown</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 21st September 2014, 04:00 am; Solved by 280;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=481">Problem 481</a></h3></div>
<div class="problem_content" role="problem">
<p>A group of chefs (numbered #$1$, #$2$, etc) participate in a turn-based strategic cooking competition. On each chef's turn, he/she cooks up a dish to the best of his/her ability and gives it to a separate panel of judges for taste-testing. Let $S(k)$ represent chef #$k$'s skill level (which is publicly known). More specifically, $S(k)$ is the probability that chef #$k$'s dish will be assessed favorably by the judges (on any/all turns). If the dish receives a favorable rating, then the chef must choose one other chef to be eliminated from the competition. The last chef remaining in the competition is the winner.</p>

<p>The game always begins with chef #$1$, with the turn order iterating sequentially over the rest of the chefs still in play. Then the cycle repeats from the lowest-numbered chef. All chefs aim to optimize their chances of winning within the rules as stated, assuming that the other chefs behave in the same manner. In the event that a chef has more than one equally-optimal elimination choice, assume that the chosen chef is always the one with the next-closest turn.</p>

<p>Define $W_n(k)$ as the probability that chef #$k$ wins in a competition with $n$ chefs. If we have $S(1) = 0.25$, $S(2) = 0.5$, and $S(3) = 1$, then $W_3(1) = 0.29375$.</p>

<p>Going forward, we assign $S(k) = F_k/F_{n+1}$ over all $1 \le k \le n$, where $F_k$ is a Fibonacci number: $F_k = F_{k-1} + F_{k-2}$ with base cases $F_1 = F_2 = 1$. Then, for example, when considering a competition with $n = 7$ chefs, we have $W_7(1) = 0.08965042$, $W_7(2) = 0.20775702$, $W_7(3) = 0.15291406$, $W_7(4) = 0.14554098$, $W_7(5) = 0.15905291$, $W_7(6) = 0.10261412$, and $W_7(7) = 0.14247050$, rounded to $8$ decimal places each.</p>

<p>Let $E(n)$ represent the expected number of dishes cooked in a competition with $n$ chefs. For instance, $E(7) = 42.28176050$.</p>

<p>Find $E(14)$ rounded to $8$ decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
