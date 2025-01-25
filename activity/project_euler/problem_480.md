+++
title = "P480"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_479/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_481/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The Last Question</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 14th September 2014, 01:00 am; Solved by 638;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=480">Problem 480</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider all the words which can be formed by selecting letters, in any order, from the phrase:</p>
<p></p><div class="center"><b>thereisasyetinsufficientdataforameaningfulanswer</b></div>
<p>Suppose those with 15 letters or less are listed in <b>alphabetical order</b> and numbered sequentially starting at 1.<br />
The list would include:</p>
<ul style="list-style-type:none;"><li>1 : a</li>
<li>2 : aa</li>
<li>3 : aaa</li>
<li>4 : aaaa</li>
<li>5 : aaaaa</li>
<li>6 : aaaaaa</li>
<li>7 : aaaaaac</li>
<li>8 : aaaaaacd</li>
<li>9 : aaaaaacde</li>
<li>10 : aaaaaacdee</li>
<li>11 : aaaaaacdeee</li>
<li>12 : aaaaaacdeeee</li>
<li>13 : aaaaaacdeeeee</li>
<li>14 : aaaaaacdeeeeee</li>
<li>15 : aaaaaacdeeeeeef</li>
<li>16 : aaaaaacdeeeeeeg</li>
<li>17 : aaaaaacdeeeeeeh</li>
<li>...</li>
<li>28 : aaaaaacdeeeeeey</li>
<li>29 : aaaaaacdeeeeef</li>
<li>30 : aaaaaacdeeeeefe</li>
<li>...</li>
<li>115246685191495242: euleoywuttttsss</li>
<li>115246685191495243: euler</li>
<li>115246685191495244: eulera</li>
<li>...</li>
<li>525069350231428029: ywuuttttssssrrr</li></ul><p>Define <var>P</var>(<var>w</var>) as the position of the word <var>w</var>.<br />
Define <var>W</var>(<var>p</var>) as the word in position <var>p</var>.<br />
We can see that <var>P</var>(<var>w</var>) and <var>W</var>(<var>p</var>) are inverses: <var>P</var>(<var>W</var>(<var>p</var>)) = <var>p</var> and <var>W</var>(<var>P</var>(<var>w</var>)) = <var>w</var>.</p>
<p>Examples:</p>
<ul style="list-style-type:none;"><li><var>W</var>(10) = aaaaaacdee</li>
<li><var>P</var>(aaaaaacdee) = 10</li>
<li><var>W</var>(115246685191495243) = euler</li>
<li><var>P</var>(euler) = 115246685191495243</li></ul><p>Find <var>W</var>(<var>P</var>(legionary) + <var>P</var>(calorimeters) - <var>P</var>(annihilate) + <var>P</var>(orchestrated) - <var>P</var>(fluttering)).<br />
Give your answer using lowercase characters (no punctuation or space).</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
