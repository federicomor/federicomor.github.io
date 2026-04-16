+++
title = "P277"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_276/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_278/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Modified Collatz Sequence</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 6th February 2010, 01:00 am; Solved by 3606;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=277">Problem 277</a></h3></div>
<div class="problem_content" role="problem">
<p>
A modified Collatz sequence of integers is obtained from a starting value $a_1$ in the following way:</p>
<p>
$a_{n+1} = \, \,\, \frac {a_n} 3 \quad$ if $a_n$ is divisible by $3$. We shall denote this as a large downward step, "D".</p>
<p>
$a_{n+1} = \frac {4 a_n+2} 3 \, \,$ if $a_n$ divided by $3$ gives a remainder of $1$. We shall denote this as an upward step, "U".
</p>
<p>
$a_{n+1} = \frac {2 a_n -1} 3 \, \,$ if $a_n$ divided by $3$ gives a remainder of $2$. We shall denote this as a small downward step, "d".
</p>


<p>
The sequence terminates when some $a_n = 1$.
</p>
<p>
Given any integer, we can list out the sequence of steps.<br>
For instance if $a_1=231$, then the sequence $\{a_n\}=\{231,77,51,17,11,7,10,14,9,3,1\}$ corresponds to the steps "DdDddUUdDD".
</p>
<p>
Of course, there are other sequences that begin with that same sequence "DdDddUUdDD....".<br>
For instance, if $a_1=1004064$, then the sequence is DdDddUUdDDDdUDUUUdDdUUDDDUdDD.<br>
In fact, $1004064$ is the smallest possible $a_1 &gt; 10^6$ that begins with the sequence DdDddUUdDD.
</p>
<p>
What is the smallest $a_1 &gt; 10^{15}$ that begins with the sequence "UDDDUdddDDUDDddDdDddDDUDDdUUDd"?
</p>









</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
