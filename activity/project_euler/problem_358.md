+++
title = "P358"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_357/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_359/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Cyclic Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 12th November 2011, 07:00 pm; Solved by 1761;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=358">Problem 358</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>cyclic number</strong> with $n$ digits has a very interesting property:<br>
When it is multiplied by $1, 2, 3, 4, \dots, n$, all the products have exactly the same digits, in the same order, but rotated in a circular fashion!
</p>

<p>
The smallest cyclic number is the $6$-digit number $142857$:<br>
$142857 \times 1 = 142857$<br>
$142857 \times 2 = 285714$<br>
$142857 \times 3 = 428571$<br>
$142857 \times 4 = 571428$<br>
$142857 \times 5 = 714285$<br>
$142857 \times 6 = 857142$
</p>

<p>
The next cyclic number is $0588235294117647$ with $16$ digits :<br>
$0588235294117647 \times 1 = 0588235294117647$<br>
$0588235294117647 \times 2 = 1176470588235294$<br>
$0588235294117647 \times 3 = 1764705882352941$<br>
$\dots$<br>
$0588235294117647 \times 16 = 9411764705882352$
</p>

<p>
Note that for cyclic numbers, leading zeros are important.
</p>

<p>
There is only one cyclic number for which, the eleven leftmost digits are $00000000137$ and the five rightmost digits are $56789$ (i.e., it has the form $00000000137 \cdots 56789$ with an unknown number of digits in the middle). Find the sum of all its digits.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
