+++
title = "P426"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_425/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_427/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Box-Ball System</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 4th May 2013, 07:00 pm; Solved by 285;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=426">Problem 426</a></h3></div>
<div class="problem_content" role="problem">
<p>
Consider an infinite row of boxes. Some of the boxes contain a ball. For example, an initial configuration of 2 consecutive occupied boxes followed by 2 empty boxes, 2 occupied boxes, 1 empty box, and 2 occupied boxes can be denoted by the sequence (2, 2, 2, 1, 2), in which the number of consecutive occupied and empty boxes appear alternately.
</p>
<p>
A turn consists of moving each ball exactly once according to the following rule: Transfer the leftmost ball which has not been moved to the nearest empty box to its right.
</p>
<p>
After one turn the sequence (2, 2, 2, 1, 2) becomes (2, 2, 1, 2, 3) as can be seen below; note that we begin the new sequence starting at the first occupied box.
</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0426_baxball1.gif?1678992057" alt="0426_baxball1.gif"></div>

<p>
A system like this is called a <b>Box-Ball System</b> or <b>BBS</b> for short.
</p>
<p>
It can be shown that after a sufficient number of turns, the system evolves to a state where the consecutive numbers of occupied boxes is invariant. In the example below, the consecutive numbers of <b>occupied boxes</b> evolves to [1, 2, 3]; we shall call this the final state.
</p>

<div align="center">
<img src="https://projecteuler.net/resources/images/0426_baxball2.gif?1678992057" alt="0426_baxball2.gif"></div>

<p>
We define the sequence {<var>t</var><sub><var>i</var></sub>}:<br></p><ul><li><var>s</var><sub>0</sub> = 290797
</li><li><var>s</var><sub><var>k</var>+1</sub> = <var>s</var><sub><var>k</var></sub><sup>2</sup> mod 50515093
</li><li><var>t</var><sub><var>k</var></sub> = (<var>s</var><sub><var>k</var></sub> mod 64) + 1
</li></ul><p>
Starting from the initial configuration (<var>t</var><sub>0</sub>, <var>t</var><sub>1</sub>, …, <var>t</var><sub>10</sub>), the final state becomes [1, 3, 10, 24, 51, 75].<br>
Starting from the initial configuration (<var>t</var><sub>0</sub>, <var>t</var><sub>1</sub>, …, <var>t</var><sub>10 000 000</sub>), find the final state.<br>
Give as your answer the sum of the squares of the elements of the final state. For example, if the final state is [1, 2, 3] then 14 ( = 1<sup>2</sup> + 2<sup>2</sup> + 3<sup>2</sup>) is your answer.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
