+++
title = "P155"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_154/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_156/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Counting Capacitor Circuits</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th May 2007, 02:00 am; Solved by 4005;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=155">Problem 155</a></h3></div>
<div class="problem_content" role="problem">
<p>An electric circuit uses exclusively identical capacitors of the same value $C$.
<br>
The capacitors can be connected in series or in parallel to form sub-units, which can then be connected in series or in parallel with other capacitors or other sub-units to form larger sub-units, and so on up to a final circuit.</p>
<p>Using this simple procedure and up to $n$ identical capacitors, we can make circuits having a range of different total capacitances. For example, using up to $n=3$ capacitors of $\pu{60 \mu F}$ each, we can obtain the following $7$ distinct total capacitance values: </p>
<div class="center"><img src="https://projecteuler.net/resources/images/0155_capacitors1.gif?1678992055" class="dark_img" alt=""></div>
<p>If we denote by $D(n)$ the number of distinct total capacitance values we can obtain when using up to $n$ equal-valued capacitors and the simple procedure described above, we have: $D(1)=1$, $D(2)=3$, $D(3)=7$, $\dots$</p>
<p>Find $D(18)$.</p>
<p><i>Reminder:</i> When connecting capacitors $C_1, C_2$ etc in parallel, the total capacitance is $C_T = C_1 + C_2 + \cdots$,
<br>
whereas when connecting them in series, the overall capacitance is given by: $\dfrac{1}{C_T} = \dfrac{1}{C_1} + \dfrac{1}{C_2} + \cdots$</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
