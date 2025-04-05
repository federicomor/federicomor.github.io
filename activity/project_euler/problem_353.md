+++
title = "P353"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_352/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_354/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Risky Moon</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th October 2011, 04:00 am; Solved by 554;<br>Difficulty rating: 50%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=353">Problem 353</a></h3></div>
<div class="problem_content" role="problem">
<p>
A moon could be described by the sphere $C(r)$ with centre $(0,0,0)$ and radius $r$. 
</p>

<p>
There are stations on the moon at the points on the surface of $C(r)$ with integer coordinates. The station at $(0,0,r)$ is called North Pole station, the station at $(0,0,-r)$ is called South Pole station.
</p>

<p>
All stations are connected with each other via the shortest road on the great arc through the stations. A journey between two stations is risky. If <var>d</var> is the length of the road between two stations, $\left(\frac{d}{\pi r}\right)^2$ is a measure for the risk of the journey (let us call it the risk of the road). If the journey includes more than two stations, the risk of the journey is the sum of risks of the used roads.
</p>

<p>
A direct journey from  the North Pole station to the South Pole station has the length $\pi r$ and risk $1$. The journey from the North Pole station to the South Pole station via $(0,r,0)$ has the same length, but a smaller risk:</p>
\[
\left(\frac{\frac{1}{2}\pi r}{\pi r}\right)^2+\left(\frac{\frac{1}{2}\pi r}{\pi r}\right)^2=0.5
\]

<p>
The minimal risk of a journey from the North Pole station to the South Pole station on $C(r)$ is $M(r)$.
</p>

<p>
You are given that $M(7)=0.1784943998$ rounded to $10$ digits behind the decimal point. 
</p>

<p>
Find $\displaystyle{\sum_{n=1}^{15}M(2^n-1)}$.
</p>

<p>
Give your answer rounded to $10$ digits behind the decimal point in the form a.bcdefghijk.
</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
