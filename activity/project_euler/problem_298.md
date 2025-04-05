+++
title = "P298"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_297/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_299/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Selective Amnesia</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 25th June 2010, 09:00 pm; Solved by 758;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=298">Problem 298</a></h3></div>
<div class="problem_content" role="problem">
<p>Larry and Robin play a memory game involving a sequence of random numbers between 1 and 10, inclusive, that are called out one at a time. Each player can remember up to 5 previous numbers. When the called number is in a player's memory, that player is awarded a point. If it's not, the player adds the called number to his memory, removing another number if his memory is full.</p>

<p>Both players start with empty memories. Both players always add new missed numbers to their memory but use a different strategy in deciding which number to remove:<br />
Larry's strategy is to remove the number that hasn't been called in the longest time.<br />
Robin's strategy is to remove the number that's been in the memory the longest time.</p>

<p>Example game:</p>
<table class="grid center"><tr><th>Turn</th>
  <th>Called<br />number</th>
  <th class="right">Larry's<br />memory</th>
  <th>Larry's<br />score</th>
  <th class="right">Robin's<br />memory</th>
  <th>Robin's<br />score</th>
</tr><tr><td>1</td>
  <td>1</td>
  <td class="right">1</td>
  <td>0</td>
  <td class="right">1</td>
  <td>0</td>
</tr><tr><td>2</td>
  <td>2</td>
  <td class="right">1,2</td>
  <td>0</td>
  <td class="right">1,2</td>
  <td>0</td>
</tr><tr><td>3</td>
  <td>4</td>
  <td class="right">1,2,4</td>
  <td>0</td>
  <td class="right">1,2,4</td>
  <td>0</td>
</tr><tr><td>4</td>
  <td>6</td>
  <td class="right">1,2,4,6</td>
  <td>0</td>
  <td class="right">1,2,4,6</td>
  <td>0</td>
</tr><tr><td>5</td>
  <td>1</td>
  <td class="right">1,2,4,6</td>
  <td>1</td>
  <td class="right">1,2,4,6</td>
  <td>1</td>
</tr><tr><td>6</td>
  <td>8</td>
  <td class="right">1,2,4,6,8</td>
  <td>1</td>
  <td class="right">1,2,4,6,8</td>
  <td>1</td>
</tr><tr><td>7</td>
  <td>10</td>
  <td class="right">1,4,6,8,10</td>
  <td>1</td>
  <td class="right">2,4,6,8,10</td>
  <td>1</td>
</tr><tr><td>8</td>
  <td>2</td>
  <td class="right">1,2,6,8,10</td>
  <td>1</td>
  <td class="right">2,4,6,8,10</td>
  <td>2</td>
</tr><tr><td>9</td>
  <td>4</td>
  <td class="right">1,2,4,8,10</td>
  <td>1</td>
  <td class="right">2,4,6,8,10</td>
  <td>3</td>
</tr><tr><td>10</td>
  <td>1</td>
  <td class="right">1,2,4,8,10</td>
  <td>2</td>
  <td class="right">1,4,6,8,10</td>
  <td>3</td>
</tr></table><p>Denoting Larry's score by <var>L</var> and Robin's score by <var>R</var>, what is the expected value of |<var>L</var>-<var>R</var>| after 50 turns? Give your answer rounded to eight decimal places using the format x.xxxxxxxx .</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
