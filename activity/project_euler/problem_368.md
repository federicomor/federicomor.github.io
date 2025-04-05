+++
title = "P368"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_367/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_369/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Kempner-like Series</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 22nd January 2012, 01:00 am; Solved by 604;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=368">Problem 368</a></h3></div>
<div class="problem_content" role="problem">
<p>The <strong>harmonic series</strong> $1 + \frac 1 2 + \frac 1 3 + \frac 1 4 + \cdots$ is well known to be divergent.</p>

<p>If we however omit from this series every term where the denominator has a $9$ in it, the series remarkably enough converges to approximately $22.9206766193$.<br>
This modified harmonic series is called the <strong>Kempner</strong> series.</p>

<p>Let us now consider another modified harmonic series by omitting from the harmonic series every term where the denominator has $3$ or more equal consecutive digits.
One can verify that out of the first $1200$ terms of the harmonic series, only $20$ terms will be omitted.<br>
These $20$ omitted terms are:</p>
<p>$$\frac 1 {111}, \frac 1 {222}, \frac 1 {333}, \frac 1 {444}, \frac 1 {555}, \frac 1 {666}, \frac 1 {777}, \frac 1 {888}, \frac 1 {999}, \frac 1 {1000}, \frac 1 {1110},$$
$$\frac 1 {1111}, \frac 1 {1112}, \frac 1 {1113}, \frac 1 {1114}, \frac 1 {1115}, \frac 1 {1116}, \frac 1 {1117}, \frac 1 {1118}, \frac 1 {1119}.$$</p>

<p>This series converges as well.</p>

<p>Find the value the series converges to.<br>
Give your answer rounded to $10$ digits behind the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
