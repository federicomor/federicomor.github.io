+++
title = "P483"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_482/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_484/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Repeated Permutation</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th October 2014, 10:00 am; Solved by 291;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=483">Problem 483</a></h3></div>
<div class="problem_content" role="problem">
<p>
We define a <dfn>permutation</dfn> as an operation that rearranges the order of the elements $\{1, 2, 3, ..., n\}$.
There are $n!$ such permutations, one of which leaves the elements in their initial order.
For $n = 3$ we have $3! = 6$ permutations:
</p><ul>
<li>$P_1 =$ keep the initial order</li>
<li>$P_2 =$ exchange the 1<sup>st</sup> and 2<sup>nd</sup> elements</li>
<li>$P_3 =$ exchange the 1<sup>st</sup> and 3<sup>rd</sup> elements</li>
<li>$P_4 =$ exchange the 2<sup>nd</sup> and 3<sup>rd</sup> elements</li>
<li>$P_5 =$ rotate the elements to the right</li>
<li>$P_6 =$ rotate the elements to the left</li></ul>

<p>
If we select one of these permutations, and we re-apply the <u>same</u> permutation repeatedly, we eventually restore the initial order.<br>For a permutation $P_i$, let $f(P_i)$ be the number of steps required to restore the initial order by applying the permutation $P_i$ repeatedly.<br>For $n = 3$, we obtain:</p>
<ul>
<li>$f(P_1) = 1$ : $(1,2,3) \to (1,2,3)$</li>
<li>$f(P_2) = 2$ : $(1,2,3) \to (2,1,3) \to (1,2,3)$</li>
<li>$f(P_3) = 2$ : $(1,2,3) \to (3,2,1) \to (1,2,3)$</li>
<li>$f(P_4) = 2$ : $(1,2,3) \to (1,3,2) \to (1,2,3)$</li>
<li>$f(P_5) = 3$ : $(1,2,3) \to (3,1,2) \to (2,3,1) \to (1,2,3)$</li>
<li>$f(P_6) = 3$ : $(1,2,3) \to (2,3,1) \to (3,1,2) \to (1,2,3)$</li></ul>

<p>
Let $g(n)$ be the average value of $f^2(P_i)$ over all permutations $P_i$ of length $n$.<br>$g(3) = (1^2 + 2^2 + 2^2 + 2^2 + 3^2 + 3^2)/3! = 31/6 \approx 5.166666667\mathrm e0$<br>$g(5) = 2081/120 \approx 1.734166667\mathrm e1$<br>$g(20) = 12422728886023769167301/2432902008176640000 \approx 5.106136147\mathrm e3$
</p>
<p>
Find $g(350)$ and write the answer in scientific notation rounded to $10$ significant digits, using a lowercase e to separate mantissa and exponent, as in the examples above.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
