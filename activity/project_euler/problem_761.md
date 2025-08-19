+++
title = "P761"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_760/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_762/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Runner and Swimmer</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 11th July 2021, 05:00 am; Solved by 183;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=761">Problem 761</a></h3></div>
<div class="problem_content" role="problem">
<p>Two friends, a runner and a swimmer, are playing a sporting game: The swimmer is swimming within a circular pool while the runner moves along the pool edge.
While the runner tries to catch the swimmer at the very moment that the swimmer leaves the pool, the swimmer tries to reach the edge before the runner arrives there. They start the game with the swimmer located in the middle of the pool, while the runner is located anywhere at the edge of the pool.</p>

<p>We assume that the swimmer can move with any velocity up to $1$ in any direction and the runner can move with any velocity up to $v$ in either direction around the edge of the pool. Moreover we assume that both players can react immediately to any change of movement of their opponent.</p>

<p>Assuming optimal strategy of both players, it can be shown that the swimmer can always win by escaping the pool at some point at the edge before the runner gets there, if $v$ is less than the critical speed $V_{Circle} \approx 4.60333885$ and can never win if $v&gt;V_{Circle}$.</p>

<p>Now the two players play the game in a perfectly square pool. Again the swimmer starts in the middle of the pool, while the runner starts at the midpoint of one of the edges of the pool. It can be shown that the critical maximal speed of the runner below which the swimmer can always escape and above which the runner can always catch the swimmer when trying to leave the pool is $V_{Square} \approx 5.78859314$.</p>

<p>At last, both players decide to play the game in a pool in the form of regular hexagon. Giving the same conditions as above, with the swimmer starting in the middle of the pool and the runner at the midpoint of one of the edges of the pool, find the critical maximal speed $V_{Hexagon}$ of the runner, below which the swimmer can always escape and above which the runner can always catch the swimmer.
Give your answer rounded to 8 digits after the decimal point.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
