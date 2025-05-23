+++
title = "P863"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_862/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_864/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Different Dice</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th November 2023, 07:00 pm; Solved by 233;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=863">Problem 863</a></h3></div>
<div class="problem_content" role="problem">
<p>Using only a six-sided fair dice and a five-sided fair dice, we would like to emulate an $n$-sided fair dice.</p>
<p>For example, one way to emulate a 28-sided dice is to follow this procedure:</p>
<ol>
<li>Roll both dice, obtaining integers $1\le p\le 6$ and $1\le q\le 5$.</li>
<li>Combine them using $r = 5(p-1) + q$ to obtain an integer $1\le r\le 30$.</li>
<li>If $r\le 28$, return the value $r$ and stop.</li>
<li>Otherwise ($r$ being 29 or 30), roll both dice again, obtaining integers $1\le s\le 6$ and $1\le t\le 5$.</li>
<li>Compute $u = 30(r-29) + 5(s-1) + t$ to obtain an integer $1\le u\le 60$.</li>
<li>If $u&gt;4$, return the value $((u-5)\bmod 28) + 1$ and stop.</li>
<li>Otherwise (with $1\le u\le 4$), roll the six-sided dice twice, obtaining integers $1\le v\le 6$ and $1\le w\le 6$.</li>
<li>Compute $x = 36(u-1) + 6(v-1) + w$ to obtain an integer $1\le x\le 144$.</li>
<li>If $x&gt;4$, return the value $((x-5)\bmod 28) + 1$ and stop.</li>
<li>Otherwise (with $1\le x\le 4$), assign $u:=x$ and go back to step 7.</li>
</ol>

<p>The expected number of dice rolls in following this procedure is 2.142476 (rounded to 6 decimal places). Note that rolling both dice at the same time is still counted as two dice rolls.</p>

<p>There exist other more complex procedures for emulating a 28-sided dice that entail a smaller average number of dice rolls. However, the above procedure has the attractive property that the sequence of dice rolled is predetermined: regardless of the outcome, it follows (D5,D6,D5,D6,D6,D6,D6,...), truncated wherever the process stops. In fact, amongst procedures for $n=28$ with this restriction, this one is optimal in the sense of minimising the expected number of rolls needed.</p>

<p>Different values of $n$ will in general use different predetermined sequences. For example, for $n=8$, the sequence (D5,D5,D5,...) gives an optimal procedure, taking 2.083333... dice rolls on average.</p>

<p>Define $R(n)$ to be the expected number of dice rolls for an optimal procedure for emulating an $n$-sided dice using only a five-sided and a six-sided dice, considering only those procedures where the sequence of dice rolled is predetermined. So, $R(8) \approx 2.083333$ and $R(28) \approx 2.142476$.</p>

<p>Let $S(n) = \displaystyle\sum_{k=2}^n R(k)$. You are given that $S(30) \approx 56.054622$.</p>

<p>Find $S(1000)$. Give your answer rounded to 6 decimal places.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
