+++
title = "P950"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_949/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_951/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Pirate Treasure</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th June 2025, 08:00 pm; Solved by 124;<br>Difficulty level: 32</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=950">Problem 950</a></h3></div>
<div class="problem_content" role="problem">
<p>A band of pirates has come into a hoard of treasure, and must decide how to distribute it amongst themselves. The treasure consists of identical, indivisible gold coins.</p>

<p>According to pirate law, the distribution of treasure must proceed as follows:</p>
<ol>
<li>The most senior pirate proposes a distribution of the coins.</li>
<li>All pirates, including the most senior, vote on whether to accept the distribution.</li>
<li>If at least half of the pirates vote to accept, the distribution stands.</li>
<li>Otherwise, the most senior pirate must walk the plank, and the process resumes from step 1 with the next most senior pirate proposing another distribution.</li>
</ol>

<p>The <i>happiness</i> of a pirate is equal to $-\infty$ if he doesn't survive; otherwise, it is equal to $c + p\cdot w$, where $c$ is the number of coins that pirate receives in the distribution, $w$ is the total number of pirates who were made to walk the plank, and $p$ is the <i>bloodthirstiness</i> of the pirate.</p>

<p>The pirates have a number of characteristics:</p>
<ul>
<li>Greed: to maximise their happiness.</li>
<li>Ruthlessness: incapable of cooperation, making promises or maintaining any kind of reputation.</li>
<li>Shrewdness: perfectly rational and logical.</li>
</ul>

<p>Consider the happiness $c(n,C,p) + p\cdot w(n,C,p)$ of the most senior surviving pirate in the situation where $n$ pirates, all with equal bloodthirstiness $p$, have found $C$ coins. For example, $c(5,5,\frac{1}{10}) = 3$ and $w(5,5,\frac{1}{10})=0$ because it can be shown that if the most senior pirate proposes a distribution of $3,0,1,0,1$ coins to the pirates (in decreasing order of seniority), the three pirates receiving coins will all vote to accept. On the other hand, $c(5,1,\frac{1}{10}) = 0$ and $w(5,1,\frac{1}{10}) = 1$: the most senior pirate cannot survive with any proposal, and then the second most senior pirate must give the only coin to another pirate in order to survive.</p>

<p>Define $\displaystyle T(N,C,p) = \sum_{n=1}^N \left ( c(n,C,p) + w(n,C,p) \right )$. You are given that $T(30,3,\frac{1}{\sqrt{3} }) = 190$, $T(50,3,\frac{1}{\sqrt{31} }) = 385$, and $T(10^3, 101, \frac{1}{\sqrt{101} }) = 142427$.</p>

<p>Find $\displaystyle \sum_{k=1}^6 T(10^{16},10^k+1,\tfrac{1}{\sqrt{10^k+1} })$.  Give the last 9 digits as your answer.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
