+++
title = "Darts"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_108/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_110/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</p>
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
<h2>Darts</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 18th November 2005, 06:00 pm; Solved by 9085;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=109">Problem 109</a></h3></div>
<div class="problem_content" role="problem">
<p>In the game of darts a player throws three darts at a target board which is split into twenty equal sized sections numbered one to twenty.</p>
<div class="center">
<img src="https://projecteuler.net/project/images/p109.png" class="dark_img" alt="" /><br /></div>
<p>The score of a dart is determined by the number of the region that the dart lands in. A dart landing outside the red/green outer ring scores zero. The black and cream regions inside this ring represent single scores. However, the red/green outer ring and middle ring score double and treble scores respectively.</p>
<p>At the centre of the board are two concentric circles called the bull region, or bulls-eye. The outer bull is worth 25 points and the inner bull is a double, worth 50 points.</p>
<p>There are many variations of rules but in the most popular game the players will begin with a score 301 or 501 and the first player to reduce their running total to zero is a winner. However, it is normal to play a "doubles out" system, which means that the player must land a double (including the double bulls-eye at the centre of the board) on their final dart to win; any other dart that would reduce their running total to one or lower means the score for that set of three darts is "bust".</p>
<p>When a player is able to finish  on their current score it is called a "checkout" and the highest checkout is 170: T20 T20 D25 (two treble 20s and double bull).</p>
<p>There are exactly eleven distinct ways to checkout on a score of 6:</p>
<div class="center monospace">
<table class="center"><tr><td>     </td>
<td>     </td>
<td>     </td>
</tr><tr><td>D3</td><td></td><td></td></tr><tr><td>D1</td><td>D2</td><td></td></tr><tr><td>S2</td><td>D2</td><td></td></tr><tr><td>D2</td><td>D1</td><td></td></tr><tr><td>S4</td><td>D1</td><td></td></tr><tr><td>S1</td><td>S1</td><td>D2</td></tr><tr><td>S1</td><td>T1</td><td>D1</td></tr><tr><td>S1</td><td>S3</td><td>D1</td></tr><tr><td>D1</td><td>D1</td><td>D1</td></tr><tr><td>D1</td><td>S2</td><td>D1</td></tr><tr><td>S2</td><td>S2</td><td>D1</td></tr></table></div>
<p>Note that D1 D2 is considered <b>different</b> to D2 D1 as they finish on different doubles. However, the combination S1 T1 D1 is considered the <b>same</b> as T1 S1 D1.</p>
<p>In addition we shall not include misses in considering combinations; for example, D3 is the <b>same</b> as 0 D3 and 0 0 D3.</p>
<p>Incredibly there are 42336 distinct ways of checking out in total.</p>
<p>How many distinct ways can a player checkout with a score less than 100?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
