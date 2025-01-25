+++
title = "P394"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_393/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_395/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Eating Pie</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 15th September 2012, 08:00 pm; Solved by 592;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=394">Problem 394</a></h3></div>
<div class="problem_content" role="problem">
<p>
Jeff eats a pie in an unusual way.<br>
The pie is circular. He starts with slicing an initial cut in the pie along a radius.<br>
While there is at least a given fraction $F$ of pie left, he performs the following procedure:<br>
- He makes two slices from the pie centre to any point of what is remaining of the pie border, any point on the remaining pie border equally likely. This will divide the remaining pie into three pieces.<br> 
- Going counterclockwise from the initial cut, he takes the first two pie pieces and eats them.<br>
When less than a fraction $F$ of pie remains, he does not repeat this procedure. Instead, he eats all of the remaining pie.
</p>
<p align="center">
<img src="https://projecteuler.net/resources/images/0394_eatpie.gif?1678992056" alt="0394_eatpie.gif"></p>


<p>
For $x \ge 1$, let $E(x)$ be the expected number of times Jeff repeats the procedure above with $F = 1/x$.<br>
It can be verified that $E(1) = 1$, $E(2) \approx 1.2676536759$, and $E(7.5) \approx 2.1215732071$.
</p>
<p>
Find $E(40)$ rounded to $10$ decimal places behind the decimal point.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
