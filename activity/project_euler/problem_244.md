+++
title = "P244"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_243/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_245/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Sliders</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 9th May 2009, 02:00 pm; Solved by 1470;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=244">Problem 244</a></h3></div>
<div class="problem_content" role="problem">
<p>You probably know the game <strong>Fifteen Puzzle</strong>. Here, instead of numbered tiles, we have seven red tiles and eight blue tiles.</p>
<p>A move is denoted by the uppercase initial of the direction (Left, Right, Up, Down) in which the tile is slid, e.g. starting from configuration (<b>S</b>), by the sequence <b>LULUR</b> we reach the configuration (<b>E</b>):</p>
<p></p><div class="center">
<table cellspacing="0" cellpadding="2" border="0" align="center"><tr><td width="25">(<b>S</b>)</td><td width="100"><img src="https://projecteuler.net/resources/images/0244_start.gif?1678992055?1678992055" class="dark_img" alt="0244_start.gif"></td><td width="25">, (<b>E</b>)</td><td width="100"><img src="https://projecteuler.net/resources/images/0244_example.gif?1678992055" class="dark_img" alt="0244_example.gif"></td>
</tr></table></div>

<p>For each path, its checksum is calculated by (pseudocode):
</p>
\begin{align}
\mathrm{checksum} &amp;= 0\\
\mathrm{checksum} &amp;= (\mathrm{checksum} \times 243 + m_1) \bmod 100\,000\,007\\
\mathrm{checksum} &amp;= (\mathrm{checksum} \times 243 + m_2) \bmod 100\,000\,007\\
\cdots &amp;\\
\mathrm{checksum} &amp;= (\mathrm{checksum} \times 243 + m_n) \bmod 100\,000\,007
\end{align}
where $m_k$ is the ASCII value of the $k$<sup><var>th</var></sup> letter in the move sequence and the ASCII values for the moves are:

<div class="center">
<table cellspacing="0" cellpadding="2" border="1" align="center"><tr><td width="30"><b>L</b></td><td width="30">76</td></tr><tr><td><b>R</b></td><td>82</td></tr><tr><td><b>U</b></td><td>85</td></tr><tr><td><b>D</b></td><td>68</td></tr></table></div>

<p>For the sequence <b>LULUR</b> given above, the checksum would be $19761398$.</p>
<p>Now, starting from configuration (<b>S</b>),
find all shortest ways to reach configuration (<b>T</b>).</p>
<p></p><div class="center">
<table cellspacing="0" cellpadding="2" border="0" align="center"><tr><td width="25">(<b>S</b>)</td><td width="100"><img src="https://projecteuler.net/resources/images/0244_start.gif?1678992055?1678992055" class="dark_img" alt="0244_start.gif"></td><td width="25">, (<b>T</b>)</td><td width="100"><img src="https://projecteuler.net/resources/images/0244_target.gif?1678992055" class="dark_img" alt="0244_target.gif"></td>
</tr></table></div>

<p>What is the sum of all checksums for the paths having the minimal length?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
