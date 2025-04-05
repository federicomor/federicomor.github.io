+++
title = "P315"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_314/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_316/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Digital Root Clocks</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th December 2010, 10:00 am; Solved by 3692;<br>Difficulty rating: 20%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=315">Problem 315</a></h3></div>
<div class="problem_content" role="problem">
<p></p><div align="center"><img src="https://projecteuler.net/resources/images/0315_clocks.gif?1678992056" alt="0315_clocks.gif"></div>

<p>Sam and Max are asked to transform two digital clocks into two "digital root" clocks.<br>
A digital root clock is a digital clock that calculates digital roots step by step.</p>

<p>When a clock is fed a number, it will show it and then it will start the calculation, showing all the intermediate values until it gets to the result.<br>
For example, if the clock is fed the number 137, it will show: "<b>137</b>" → "<b>11</b>" → "<b>2</b>" and then it will go black, waiting for the next number.</p>

<p>Every digital number consists of some light segments: three horizontal (top, middle, bottom) and four vertical (top-left, top-right, bottom-left, bottom-right).<br>
Number "<b>1</b>" is made of vertical top-right and bottom-right, number "<b>4</b>" is made by middle horizontal and vertical top-left, top-right and bottom-right. Number "<b>8</b>" lights them all.</p>

<p>The clocks consume energy only when segments are turned on/off.<br>
To turn on a "<b>2</b>" will cost 5 transitions, while a "<b>7</b>" will cost only 4 transitions.</p>

<p>Sam and Max built two different clocks.</p>

<p>Sam's clock is fed e.g. number 137: the clock shows "<b>137</b>", then the panel is turned off, then the next number ("<b>11</b>") is turned on, then the panel is turned off again and finally the last number ("<b>2</b>") is turned on and, after some time, off.<br>
For the example, with number 137, Sam's clock requires:<br></p><table><tr><td>"<b>137</b>"</td>
<td>:</td>
<td>(2 + 5 + 4) × 2 = 22 transitions ("<b>137</b>" on/off).</td>
</tr><tr><td>"<b>11</b>"</td>
<td>:</td>
<td>(2 + 2) × 2 = 8 transitions ("<b>11</b>" on/off).</td>
</tr><tr><td>"<b>2</b>"</td>
<td>:</td>
<td>(5) × 2 = 10 transitions ("<b>2</b>" on/off).</td>
</tr></table>
For a grand total of 40 transitions.

<p>Max's clock works differently. Instead of turning off the whole panel, it is smart enough to turn off only those segments that won't be needed for the next number.<br>
For number 137, Max's clock requires:<br></p><table><tr><td>"<b>137</b>"<br><br></td>
<td>:<br><br></td>
<td>2 + 5 + 4 = 11 transitions ("<b>137</b>" on)<br>
7 transitions (to turn off the segments that are not needed for number "<b>11</b>").</td>
</tr><tr><td>"<b>11</b>"<br><br><br></td>
<td>:<br><br><br></td>
<td>0 transitions (number "<b>11</b>" is already turned on correctly)<br>
3 transitions (to turn off the first "<b>1</b>" and the bottom part of the second "<b>1</b>"; <br>
the top part is common with number "<b>2</b>").</td>
</tr><tr><td>"<b>2</b>"<br><br></td>
<td>:<br><br></td>
<td>4 transitions (to turn on the remaining segments in order to get a "<b>2</b>")<br>
5 transitions (to turn off number "<b>2</b>").</td>
</tr></table>
For a grand total of 30 transitions.

<p>Of course, Max's clock consumes less power than Sam's one.<br>
The two clocks are fed all the prime numbers between A = 10<sup>7</sup> and B = 2×10<sup>7</sup>. <br>
Find the difference between the total number of transitions needed by Sam's clock and that needed by Max's one.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
