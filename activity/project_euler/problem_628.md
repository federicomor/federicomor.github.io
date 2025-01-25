+++
title = "P628"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_627/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_629/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Open Chess Positions</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 3rd June 2018, 01:00 am; Solved by 856;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=628">Problem 628</a></h3></div>
<div class="problem_content" role="problem">
<p>
A position in chess is an (orientated) arrangement of chess pieces placed on a chessboard of given size. In the following, we consider all positions in which $n$ pawns are placed on a  $n \times n$  
board in such a way, that there is a single pawn in every row and every column.

</p>
<p>
We call such a position an <dfn>open</dfn> position, if a rook, starting at the (empty) lower left corner and using only moves towards the right or upwards, can reach the upper right corner without moving onto any field occupied by a pawn. 
</p>
<p>Let $f(n)$ be the number of open positions for a $n \times n$ chessboard.<br>
For example, $f(3)=2$, illustrated by the two open positions for a $3 \times 3$ chessboard below.

</p>
<table align="center"><tr>
<td><img src="https://projecteuler.net/resources/images/0628_chess4.png?1678992054" alt="Open position 1"></td><td width="60"></td><td><img src="https://projecteuler.net/resources/images/0628_chess5.png?1678992054" alt="Open position 2"></td>
</tr>
</table>
<p>
You are also given $f(5)=70$.</p>
<p>Find $f(10^8)$ modulo $1\,008\,691\,207$.</p>




</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
