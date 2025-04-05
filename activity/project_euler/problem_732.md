+++
title = "P732"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_731/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_733/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Standing on the Shoulders of Trolls</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 31st October 2020, 01:00 pm; Solved by 239;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=732">Problem 732</a></h3></div>
<div class="problem_content" role="problem">
<p>
$N$ trolls are in a hole that is $D_N$ cm deep. The $n$-th troll is characterized by:
</p>
<ul><li>the distance from his feet to his shoulders in cm, $h_n$</li>
<li>the length of his arms in cm, $l_n$</li>
<li>his IQ (Irascibility Quotient), $q_n$.</li>
</ul><p>
Trolls can pile up on top of each other, with each troll standing on the shoulders of the one below him. A troll can climb out of the hole and escape if his hands can reach to the surface. Once a troll escapes he cannot participate any further in the escaping effort.
</p>
<p>
The trolls execute an optimal strategy for maximizing the total IQ of the escaping trolls, defined as $Q(N)$.
</p>
<p>
Let<br />
$r_n = \left[ \left( 5^n \bmod (10^9 + 7) \right) \bmod 101 \right] + 50$
<br />
$h_n = r_{3n}$
<br />
$l_n = r_{3n+1}$
<br />
$q_n = r_{3n+2}$
<br />
$D_N = \frac{1}{\sqrt{2} } \sum_{n=0}^{N-1} h_n$.
</p>
<p>
For example, the first troll ($n=0$) is 51cm tall to his shoulders, has 55cm long arms, and has an IQ of 75.
</p>
<p>
You are given that $Q(5) = 401$ and $Q(15)=941$.
</p>
<p>
Find $Q(1000)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
