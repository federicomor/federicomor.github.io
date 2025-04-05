+++
title = "P219"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_218/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_220/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Skew-cost Coding</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 29th November 2008, 05:00 am; Solved by 1652;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=219">Problem 219</a></h3></div>
<div class="problem_content" role="problem">
<p>Let <span style="font-weight:bold;">A</span> and <span style="font-weight:bold;">B</span> be bit strings (sequences of 0's and 1's).<br>
If <span style="font-weight:bold;">A</span> is equal to the <span style="text-decoration:underline;">left</span>most length(<span style="font-weight:bold;">A</span>) bits of <span style="font-weight:bold;">B</span>, then <span style="font-weight:bold;">A</span> is said to be a <span style="font-style:italic;">prefix</span> of <span style="font-weight:bold;">B</span>.<br>
For example, 00110 is a prefix of <span style="text-decoration:underline;">00110</span>1001, but not of 00111 or 100110.</p>

<p>A <span style="font-style:italic;">prefix-free code of size</span> <var>n</var> is a collection of <var>n</var> distinct bit strings such that no string is a prefix of any other.  For example, this is a prefix-free code of size 6:</p>

<p class="center">0000, 0001, 001, 01, 10, 11</p>

<p>Now suppose that it costs one penny to transmit a '0' bit, but four pence to transmit a '1'.<br>
Then the total cost of the prefix-free code shown above is 35 pence, which happens to be the cheapest possible for the skewed pricing scheme in question.<br>
In short, we write Cost(6) = 35.</p>

<p>What is Cost(10<sup>9</sup>) ?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
