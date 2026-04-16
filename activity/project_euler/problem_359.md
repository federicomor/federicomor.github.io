+++
title = "P359"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_358/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_360/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Hilbert's New Hotel</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th November 2011, 10:00 pm; Solved by 1711;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=359">Problem 359</a></h3></div>
<div class="problem_content" role="problem">
<p>
An infinite number of people (numbered $1$, $2$, $3$, etc.) are lined up to get a room at Hilbert's newest infinite hotel. The hotel contains an infinite number of floors (numbered $1$, $2$, $3$, etc.), and each floor contains an infinite number of rooms (numbered $1$, $2$, $3$, etc.). 
</p>

<p>
Initially the hotel is empty. Hilbert declares a rule on how the $n$<sup>th</sup> person is assigned a room: person $n$ gets the first vacant room in the lowest numbered floor satisfying either of the following:
</p><ul><li>the floor is empty</li>
<li>the floor is not empty, and if the latest person taking a room in that floor is person $m$, then $m + n$ is a perfect square</li>
</ul><p>
Person $1$ gets room $1$ in floor $1$ since floor $1$ is empty.
<br>Person $2$ does not get room $2$ in floor $1$ since $1 + 2 = 3$ is not a perfect square.
<br>Person $2$ instead gets room $1$ in floor $2$ since floor $2$ is empty.
<br>Person $3$ gets room $2$ in floor $1$ since $1 + 3 = 4$ is a perfect square.
</p>

<p>
Eventually, every person in the line gets a room in the hotel.
</p>

<p>
Define $P(f, r)$ to be $n$ if person $n$ occupies room $r$ in floor $f$, and $0$ if no person occupies the room. Here are a few examples:
<br>$P(1, 1) = 1$
<br>$P(1, 2) = 3$
<br>$P(2, 1) = 2$
<br>$P(10, 20) = 440$
<br>$P(25, 75) = 4863$
<br>$P(99, 100) = 19454$
</p>

<p>
Find the sum of all $P(f, r)$ for all positive $f$ and $r$ such that $f \times r = 71328803586048$ and give the last $8$ digits as your answer.
</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
