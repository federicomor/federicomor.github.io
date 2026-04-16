+++
title = "P162"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_161/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_163/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Hexadecimal Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 5th October 2007, 10:00 pm; Solved by 5912;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=162">Problem 162</a></h3></div>
<div class="problem_content" role="problem">
<p>In the hexadecimal number system numbers are represented using $16$ different digits:
$$0,1,2,3,4,5,6,7,8,9,\mathrm A,\mathrm B,\mathrm C,\mathrm D,\mathrm E,\mathrm F.$$</p>
<p>The hexadecimal number $\mathrm{AF}$ when written in the decimal number system equals $10 \times 16 + 15 = 175$.</p>
<p>In the $3$-digit hexadecimal numbers $10\mathrm A$, $1\mathrm A0$, $\mathrm A10$, and $\mathrm A01$ the digits $0$, $1$ and $\mathrm A$ are all present.<br>
Like numbers written in base ten we write hexadecimal numbers without leading zeroes.</p>
<p>How many hexadecimal numbers containing at most sixteen hexadecimal digits exist with all of the digits $0$, $1$, and $\mathrm A$ present at least once?<br>
Give your answer as a hexadecimal number.</p>
<p>(A, B, C, D, E and F in upper case, without any leading or trailing code that marks the number as hexadecimal and without leading zeroes, e.g. 1A3F and not: 1a3f and not 0x1a3f and not $1A3F and not #1A3F and not 0000001A3F)</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
