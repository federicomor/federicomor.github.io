+++
title = "P962"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_961/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_963/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Angular Bisector and Tangent 2</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 28th September 2025, 08:00 am; Solved by 115;<br>Difficulty level: 35</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=962">Problem 962</a></h3></div>
<div class="problem_content" role="problem">
<p>
Given is an integer sided triangle $ABC$ with $BC \le AC \le AB$.<br>$k$ is the angular bisector of angle $ACB$.<br>$m$ is the tangent at $C$ to the circumscribed circle of $ABC$.<br>$n$ is a line parallel to $m$ through $B$.<br>
The intersection of $n$ and $k$ is called $E$.
</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0296_bisector.gif?1678992056" class="dark_img" alt="0296_bisector.gif"></div>
<p>
How many triangles $ABC$ with a perimeter not exceeding $1\,000\,000$ exist such that $CE$ has integral length?</p>

<p class="note"><b>Note</b>: This problem is a more difficult version of <a href="https://projecteuler.net/problem=296">Problem 296</a>. Please pay close attention to the differences between the two statements.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
