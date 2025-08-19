+++
title = "P633"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_632/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_634/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Square Prime Factors II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 28th July 2018, 01:00 pm; Solved by 368;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=633">Problem 633</a></h3></div>
<div class="problem_content" role="problem">
<p>For an integer $n$, we define the <dfn>square prime factors</dfn> of $n$ to be the primes whose square divides $n$. For example, the square prime factors of $1500=2^2 \times 3 \times 5^3$ are $2$ and $5$.</p>

<p>Let $C_k(N)$ be the number of integers between $1$ and $N$ inclusive with exactly $k$ square prime factors. It can be shown that with growing $N$ the ratio $\frac{C_k(N)}{N}$ gets arbitrarily close to a constant $c_{k}^{\infty}$, as suggested by the table below.</p>

$$\begin{array}{|c|c|c|c|c|c|}
\hline
&amp; k = 0 &amp; k = 1 &amp; k = 2 &amp; k = 3 &amp; k = 4 \\
\hline
C_k(10) &amp; 7 &amp; 3 &amp; 0 &amp; 0 &amp; 0 \\
\hline
C_k(10^2) &amp; 61 &amp; 36 &amp; 3 &amp; 0 &amp; 0 \\
\hline
C_k(10^3) &amp; 608 &amp; 343 &amp; 48 &amp; 1 &amp; 0 \\
\hline
C_k(10^4) &amp; 6083 &amp; 3363 &amp; 533 &amp; 21 &amp; 0 \\
\hline
C_k(10^5) &amp; 60794 &amp; 33562 &amp; 5345 &amp; 297 &amp; 2 \\
\hline
C_k(10^6) &amp; 607926 &amp; 335438 &amp; 53358 &amp; 3218 &amp; 60 \\
\hline
C_k(10^7) &amp; 6079291 &amp; 3353956 &amp; 533140 &amp; 32777 &amp; 834 \\
\hline
C_k(10^8) &amp; 60792694 &amp; 33539196 &amp; 5329747 &amp;  329028 &amp; 9257 \\
\hline
C_k(10^9) &amp; 607927124 &amp; 335389706 &amp; 53294365 &amp; 3291791 &amp; 95821 \\
\hline
c_k^{\infty} &amp; \frac{6}{\pi^2} &amp; 3.3539\times 10^{-1} &amp; 5.3293\times 10^{-2} &amp; 3.2921\times 10^{-3} &amp; 9.7046\times 10^{-5}\\
\hline
\end{array}$$
Find $c_{7}^{\infty}$. Give the result in scientific notation rounded to $5$ significant digits, using a $e$ to separate mantissa and exponent. E.g. if the answer were $0.000123456789$, then the answer format would be $1.2346\mathrm e{-4}$.

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
