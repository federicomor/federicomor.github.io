+++
title = "P949"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_948/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_950/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Left vs Right II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 7th June 2025, 05:00 pm; Solved by 59;<br>Difficulty level: 38</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=949">Problem 949</a></h3></div>
<div class="problem_content" role="problem">
<p>Left and Right play a game with a number of words, each consisting of L's and R's, alternating turns. On Left's turn, <b>for each word</b>, Left can remove any number of letters (possibly zero), but not all the letters, from the left side of the word. However, at least one letter must be removed from at least one word. Right does the same on Right's turn except that Right removes letters from the right side of each word. The game continues until each word is reduced to a single letter. If there are more L's than R's remaining then Left wins; otherwise if there are more R's than L's then Right wins. In this problem we only consider games with an odd number of words, thus making ties impossible.</p>

<p>Let $G(n, k)$ be the number of ways of choosing $k$ words of length $n$, for which Right has a winning strategy when Left plays first. Different orderings of the same set of words are to be counted separately.</p>

<p>It can be seen that $G(2, 3)=14$ due to the following solutions (and their reorderings):
$$\begin{align}
(\texttt{LL},\texttt{RR},\texttt{RR})&amp;:3\text{ orderings}\\
(\texttt{LR},\texttt{LR},\texttt{LR})&amp;:1\text{ ordering}\\
(\texttt{LR},\texttt{LR},\texttt{RR})&amp;:3\text{ orderings}\\
(\texttt{LR},\texttt{RR},\texttt{RR})&amp;:3\text{ orderings}\\
(\texttt{RL},\texttt{RR},\texttt{RR})&amp;:3\text{ orderings}\\
(\texttt{RR},\texttt{RR},\texttt{RR})&amp;:1\text{ ordering}
\end{align}
$$You are also given $G(4, 3)=496$ and $G(8, 5)=26359197010$.</p>

<p>Find $G(20, 7)$ giving your answer modulo $1001001011$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
