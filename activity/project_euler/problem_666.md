+++
title = "P666"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_665/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_667/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Polymorphic Bacteria</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 20th April 2019, 01:00 pm; Solved by 322;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=666">Problem 666</a></h3></div>
<div class="problem_content" role="problem">
Members of a species of bacteria occur in two different types: $\alpha$ and $\beta$. Individual bacteria are capable of multiplying and mutating between the types according to the following rules:
<ul><li>Every minute, each individual will simultaneously undergo some kind of transformation.</li>
<li>Each individual $A$ of type $\alpha$ will, independently, do one of the following (at random with equal probability):
<ul><li>clone itself, resulting in a new bacterium of type $\alpha$ (alongside $A$ who remains)</li>
<li>split into 3 new bacteria of type $\beta$ (replacing $A$)</li>
</ul></li>

<li>Each individual $B$ of type $\beta$ will, independently, do one of the following (at random with equal probability):
<ul><li>spawn a new bacterium of type $\alpha$ (alongside $B$ who remains)</li>
<li>die</li>
</ul></li></ul><p>
If a population starts with a single bacterium of type $\alpha$, then it can be shown that there is a 0.07243802 probability that the population will eventually die out, and a 0.92756198 probability that the population will last forever. These probabilities are given rounded to 8 decimal places.
</p>
<p>
Now consider another species of bacteria, $S_{k,m}$ (where $k$ and $m$ are positive integers), which occurs in $k$ different types $\alpha_i$ for $0\le i&lt; k$. The rules governing this species' lifecycle involve the sequence $r_n$ defined by:
</p>
<ul style="list-style-type:none;"><li>$r_0 = 306$</li>
<li>$r_{n+1} = r_n^2 \bmod 10\,007$</li>
</ul><p>
Every minute, for each $i$, each bacterium $A$ of type $\alpha_i$ will independently choose an integer $j$ uniformly at random in the range $0\le j&lt;m$. What it then does depends on $q = r_{im+j} \bmod 5$:</p>
<ul><li>If $q=0$, $A$ dies.</li>
<li>If $q=1$, $A$ clones itself, resulting in a new bacterium of type $\alpha_i$ (alongside $A$ who remains).</li>
<li>If $q=2$, $A$ mutates, changing into type $\alpha_{(2i) \bmod k}$.</li>
<li>If $q=3$, $A$ splits into 3 new bacteria of type $\alpha_{(i^2+1) \bmod k}$ (replacing $A$).</li>
<li>If $q=4$, $A$ spawns a new bacterium of type $\alpha_{(i+1) \bmod k}$ (alongside $A$ who remains).</li>
</ul><p>
In fact, our original species was none other than $S_{2,2}$, with $\alpha=\alpha_0$ and $\beta=\alpha_1$.
</p>
<p>
Let $P_{k,m}$ be the probability that a population of species $S_{k,m}$, starting with a single bacterium of type $\alpha_0$, will eventually die out. So $P_{2,2} = 0.07243802$. You are also given that $P_{4,3} = 0.18554021$ and $P_{10,5} = 0.53466253$, all rounded to 8 decimal places.
</p>
<p>
Find $P_{500,10}$, and give your answer rounded to 8 decimal places.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
