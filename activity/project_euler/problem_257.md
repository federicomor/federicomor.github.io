+++
title = "P257"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_256/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_258/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Angular Bisectors</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 26th September 2009, 05:00 am; Solved by 810;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=257">Problem 257</a></h3></div>
<div class="problem_content" role="problem">
<p>Given is an integer sided triangle $ABC$ with sides $a \le b \le c$. 
($AB = c$, $BC = a$ and $AC = b$.)<br>
The angular bisectors of the triangle intersect the sides at points $E$, $F$ and $G$ (see picture below).
</p>
<div align="center">
<img src="https://projecteuler.net/resources/images/0257_bisector.gif?1678992056" class="dark_img" alt="0257_bisector.gif"><br></div>
<p>
The segments $EF$, $EG$ and $FG$ partition the triangle $ABC$ into four smaller triangles: $AEG$, $BFE$, $CGF$ and $EFG$.<br>
It can be proven that for each of these four triangles the ratio area($ABC$)/area(subtriangle) is rational.<br>
However, there exist triangles for which some or all of these ratios are integral.
</p>
<p>
How many triangles $ABC$ with perimeter $\le 100\,000\,000$ exist so that the ratio area($ABC$)/area($AEG$) is integral?
</p>





</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
