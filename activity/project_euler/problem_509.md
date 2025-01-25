+++
title = "P509"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_508/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_510/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Divisor Nim</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 28th March 2015, 01:00 pm; Solved by 657;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=509">Problem 509</a></h3></div>
<div class="problem_content" role="problem">
<p>
Anton and Bertrand love to play three pile Nim.<br>
However, after a lot of games of Nim they got bored and changed the rules somewhat.<br>
They may only take a number of stones from a pile that is a <dfn class="tooltip">proper divisor<span class="tooltiptext">a proper divisor of $n$ is a divisor of $n$ smaller than $n$</span></dfn> of the number of stones present in the pile.<br> E.g. if a pile at a certain moment contains $24$ stones they may take only $1,2,3,4,6,8$ or $12$ stones from that pile.<br>
So if a pile contains one stone they can't take the last stone from it as $1$ isn't a proper divisor of $1$.<br>
The first player that can't make a valid move loses the game.<br>
Of course both Anton and Bertrand play optimally.</p>
<p>
The triple $(a, b, c)$ indicates the number of stones in the three piles.<br>
Let $S(n)$ be the number of winning positions for the next player for $1 \le a, b, c \le n$.<br>$S(10) = 692$ and $S(100) = 735494$.</p>
<p>
Find $S(123456787654321)$ modulo $1234567890$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
