+++
title = "P907"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_906/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_908/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Stacking Cups</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th September 2024, 11:00 pm; Solved by 257;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=907">Problem 907</a></h3></div>
<div class="problem_content" role="problem">
<p>
An infant's toy consists of $n$ cups, labelled $C_1,\dots,C_n$ in increasing order of size.
</p>
<img src="https://projecteuler.net/resources/images/0907_four_cups.png?1723769212" alt="0907_four_cups.png" height="162">
<p>
The cups may be stacked in various combinations and orientations to form towers. The cups are shaped such that the following means of stacking are possible:
</p>
<ul>
<li>Nesting: $C_k$ may sit snugly inside $C_{k+1}$.<br>
<img src="https://projecteuler.net/resources/images/0907_nesting.png?1723769266" alt="0907_nesting.png" height="150">
</li>

<li>Base-to-base: $C_{k+2}$ or $C_{k-2}$ may sit, right-way-up, on top of an up-side-down $C_k$, with their bottoms fitting together snugly.<br>
<img src="https://projecteuler.net/resources/images/0907_base_to_base.png?1723769276" alt="0907_base_to_base.png" height="198">
</li>
<li>Rim-to-rim: $C_{k+2}$ or $C_{k-2}$ may sit, up-side-down, on top of a right-way-up $C_k$, with their tops fitting together snugly.<br>
<img src="https://projecteuler.net/resources/images/0907_rim_to_rim.png?1723769283" alt="0907_rim_to_rim.png" height="198">
</li>
<li>For the purposes of this problem, it is <b>not</b> permitted to stack <b>both</b> $C_{k+2}$ and $C_{k-2}$ rim-to-rim on top of $C_k$, despite the schematic diagrams appearing to allow it:<br>
<img src="https://projecteuler.net/resources/images/0907_rim_to_rim_counter_example.png?1740699245" alt="0907_rim_to_rim_counter_example.png" height="267"><br>
</li></ul>
<p>
Define $S(n)$ to be the number of ways to build a single tower using all $n$ cups according to the above rules.<br>
You are given $S(4)=12$, $S(8)=58$, and $S(20)=5560$.
</p>
<p>
Find $S(10^7)$, giving your answer modulo $1\,000\,000\,007$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
