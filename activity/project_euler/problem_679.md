+++
title = "P679"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_678/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_680/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Freefarea</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 15th September 2019, 01:00 am; Solved by 995;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=679">Problem 679</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $S$ be the set consisting of the four letters $\{\texttt{`A'},\texttt{`E'},\texttt{`F'},\texttt{`R'}\}$.<br />
For $n\ge 0$, let $S^*(n)$ denote the set of words of length $n$ consisting of letters belonging to $S$.<br />
We designate the words $\texttt{FREE}, \texttt{FARE}, \texttt{AREA}, \texttt{REEF}$ as <i>keywords</i>.</p>

<p>Let $f(n)$ be the number of words in $S^*(n)$ that contains all four keywords exactly once.</p>

<p>This first happens for $n=9$, and indeed there is a unique 9 lettered word that contain each of the keywords once: $\texttt{FREEFAREA}$<br />
So, $f(9)=1$.</p>

<p>You are also given that $f(15)=72863$.</p>

<p>Find $f(30)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
