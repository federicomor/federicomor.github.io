+++
title = "P610"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_609/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_611/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Roman Numerals II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 23rd September 2017, 07:00 pm; Solved by 657;<br>Difficulty rating: 35%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=610">Problem 610</a></h3></div>
<div class="problem_content" role="problem">
<p>A random generator produces a sequence of symbols drawn from the set {<span style="font-family:'courier new', monospace;">I</span>, <span style="font-family:'courier new', monospace;">V</span>, <span style="font-family:'courier new', monospace;">X</span>, <span style="font-family:'courier new', monospace;">L</span>, <span style="font-family:'courier new', monospace;">C</span>, <span style="font-family:'courier new', monospace;">D</span>, <span style="font-family:'courier new', monospace;">M</span>, <span style="font-family:'courier new', monospace;">#</span>}. Each item in the sequence is determined by selecting one of these symbols at random, independently of the other items in the sequence. At each step, the seven letters are equally likely to be selected, with probability 14% each, but the <span style="font-family:'courier new', monospace;">#</span> symbol only has a 2% chance of selection.</p>

<p>We write down the sequence of letters from left to right as they are generated, and we stop at the first occurrence of the <span style="font-family:'courier new', monospace;">#</span> symbol (without writing it). However, we stipulate that what we have written down must always (when non-empty) be a valid Roman numeral representation in minimal form. If appending the next letter would contravene this then we simply skip it and try again with the next symbol generated.</p>

<p>Please take careful note of <a href="https://projecteuler.net/about=roman_numerals">About... Roman Numerals</a> for the definitive rules for this problem on what constitutes a "valid Roman numeral representation" and "minimal form". For example, the (only) sequence that represents 49 is <span style="font-family:'courier new', monospace;">XLIX</span>. The subtractive combination <span style="font-family:'courier new', monospace;">IL</span> is invalid because of rule (ii), while <span style="font-family:'courier new', monospace;">XXXXIX</span> is valid but not minimal. The rules do not place any restriction on the number of occurrences of <span style="font-family:'courier new', monospace;">M</span>, so all positive integers have a valid representation. These are the same rules as were used in <a href="https://projecteuler.net/problem=89">Problem 89</a>, and members are invited to solve that problem first.</p>

<p>Find the expected value of the number represented by what we have written down when we stop. (If nothing is written down then count that as zero.) Give your answer rounded to 8 places after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
