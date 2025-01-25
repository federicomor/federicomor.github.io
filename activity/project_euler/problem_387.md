+++
title = "P387"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_386/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_388/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Harshad Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 3rd June 2012, 11:00 am; Solved by 5062;<br>Difficulty rating: 10%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=387">Problem 387</a></h3></div>
<div class="problem_content" role="problem">
<p>A <strong>Harshad or Niven number</strong> is a number that is divisible by the sum of its digits.
<br>$201$ is a Harshad number because it is divisible by $3$ (the sum of its digits.)
<br>When we truncate the last digit from $201$, we get $20$, which is a Harshad number.
<br>When we truncate the last digit from $20$, we get $2$, which is also a Harshad number.
<br>Let's call a Harshad number that, while recursively truncating the last digit, always results in a Harshad number a <dfn>right truncatable Harshad number</dfn>.</p>  

<p>Also:
<br>$201/3=67$ which is prime.
<br>Let's call a Harshad number that, when divided by the sum of its digits, results in a prime a <dfn>strong Harshad number</dfn>.</p>

<p>Now take the number $2011$ which is prime.
<br>When we truncate the last digit from it we get $201$, a strong Harshad number that is also right truncatable.
<br>Let's call such primes <dfn>strong, right truncatable Harshad primes</dfn>.</p>

<p>You are given that the sum of the strong, right truncatable Harshad primes less than $10000$ is $90619$.</p>

<p>Find the sum of the strong, right truncatable Harshad primes less than $10^{14}$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
