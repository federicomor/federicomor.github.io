+++
title = "P698"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_697/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_699/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>123 Numbers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th January 2020, 07:00 am; Solved by 499;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=698">Problem 698</a></h3></div>
<div class="problem_content" role="problem">
<p>
We define <i>123-numbers</i> as follows:
</p>

<ul><li>1 is the smallest 123-number.</li>
<li>When written in base 10 the only digits that can be present are "1", "2" and "3" and if present the number of times they each occur is also a 123-number.</li>
</ul><p>
So 2 is a 123-number, since it consists of one  digit "2" and 1 is a 123-number. Therefore, 33 is a 123-number as well since it consists of two digits "3" and 2 is a 123-number.<br />
On the other hand, 1111 is not a 123-number, since it contains 4 digits "1" and 4 is not a 123-number.
</p>
<p>
In ascending order, the first 123-numbers are:<br />
$1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 111, 112, 113, 121, 122, 123, 131, \ldots$
</p>
<p>
Let $F(n)$ be the $n$-th 123-number. For example $F(4)=11$, $F(10)=31$, $F(40)=1112$, $F(1000)=1223321$ and $F(6000)= 2333333333323$.
</p>
<p>
Find $F(111\,111\,111\,111\,222\,333)$. Give your answer modulo $123\,123\,123$.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
