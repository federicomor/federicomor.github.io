+++
title = "P505"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_504/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_506/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Bidirectional Recurrence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 1st March 2015, 01:00 am; Solved by 243;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=505">Problem 505</a></h3></div>
<div class="problem_content" role="problem">
<p>Let:</p>
<p style="margin-left:32px;">$\begin{array}{ll} x(0)&amp;=0 \\ x(1)&amp;=1 \\ x(2k)&amp;=(3x(k)+2x(\lfloor \frac k 2 \rfloor)) \text{ mod } 2^{60} \text{ for } k \ge 1 \text {, where } \lfloor \text { } \rfloor \text { is the floor function} \\ x(2k+1)&amp;=(2x(k)+3x(\lfloor \frac k 2 \rfloor)) \text{ mod } 2^{60} \text{ for } k \ge 1 \\ y_n(k)&amp;=\left\{ {\begin{array}{lc} x(k) &amp;&amp; \text{if } k \ge n \\ 2^{60} - 1 - max(y_n(2k),y_n(2k+1)) &amp;&amp; \text{if } k &lt; n \end{array} } \right. \\ A(n)&amp;=y_n(1) \end{array}$</p>
<p>You are given:</p>
<p style="margin-left:32px;">$\begin{array}{ll} x(2)&amp;=3 \\ x(3)&amp;=2 \\ x(4)&amp;=11 \\ y_4(4)&amp;=11 \\ y_4(3)&amp;=2^{60}-9\\ y_4(2)&amp;=2^{60}-12 \\ y_4(1)&amp;=A(4)=8 \\ A(10)&amp;=2^{60}-34\\ A(10^3)&amp;=101881 \end{array}$</p>
Find $A(10^{12})$.
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
