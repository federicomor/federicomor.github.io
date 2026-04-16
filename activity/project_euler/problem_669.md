+++
title = "P669"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_668/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_670/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The King's Banquet</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 11th May 2019, 10:00 pm; Solved by 349;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=669">Problem 669</a></h3></div>
<div class="problem_content" role="problem">
<p>The Knights of the Order of Fibonacci are preparing a grand feast for their king. There are $n$ knights, and each knight is assigned a distinct number from $1$ to $n$.</p>

<p>When the knights sit down at the roundtable for their feast, they follow a peculiar seating rule: two knights can only sit next to each other if their respective numbers sum to a Fibonacci number.</p>

<p>When the $n$ knights all try to sit down around a circular table with $n$ chairs, they are unable to find a suitable seating arrangement for any $n&gt;2$ despite their best efforts. Just when they are about to give up, they remember that the king will sit on his throne at the table as well.</p>

<p>Suppose there are $n=7$ knights and $7$ chairs at the roundtable, in addition to the king’s throne. After some trial and error, they come up with the following seating arrangement ($K$ represents the king):</p>

<div class="center">
<img src="https://projecteuler.net/resources/images/0669_roundtable.png?1678992054" alt="Roundtable">
</div>

<p>Notice that the sums $4+1$, $1+7$, $7+6$, $6+2$, $2+3$, and $3+5$ are all Fibonacci numbers, as required. It should also be mentioned that the king always prefers an arrangement where the knight to the his left has a smaller number than the knight to his right. With this additional rule, the above arrangement is unique for $n=7$, and the knight sitting in the 3rd chair from the king’s left is knight number $7$.</p>

<p>Later, several new knights are appointed to the Order, giving $34$ knights and chairs in addition to the king's throne. The knights eventually determine that there is a unique seating arrangement for $n=34$ satisfying the above rules, and this time knight number $30$ is sitting in the 3rd chair from the king's left.</p>

<p>Now suppose there are $n=99\,194\,853\,094\,755\,497$ knights and the same number of chairs at the roundtable (not including the king’s throne). After great trials and tribulations, they are finally able to find the unique seating arrangement for this value of $n$ that satisfies the above rules.</p>

<p>Find the number of the knight sitting in the $10\,000\,000\,000\,000\,000$th chair from the king’s left.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
