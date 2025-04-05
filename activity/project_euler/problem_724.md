+++
title = "P724"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_723/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_725/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Drone Delivery</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th September 2020, 02:00 pm; Solved by 438;<br>Difficulty rating: 30%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=724">Problem 724</a></h3></div>
<div class="problem_content" role="problem">
<p>A depot uses $n$ drones to disperse packages containing essential supplies along a long straight road.<br />
Initially all drones are stationary, loaded with a supply package.<br />
Every second, the depot selects a drone at random and sends it this instruction:</p>
<ul><li>If you are stationary, start moving at one centimetre per second along the road.</li>
<li>If you are moving, increase your speed by one centimetre per second along the road without changing direction.</li>
</ul><p>The road is wide enough that drones can overtake one another without risk of collision.</p>
<p>Eventually, there will only be one drone left at the depot waiting to receive its first instruction. As soon as that drone has flown one centimetre along the road, all drones drop their packages and return to the depot.</p>

<p>Let $E(n)$ be the expected distance in centimetres from the depot that the supply packages land.<br />
For example, $E(2) = \frac{7}{2}$, $E(5) = \frac{12019}{720}$, and $E(100) \approx 1427.193470$.</p>
<p>Find $E(10^8)$. Give your answer rounded to the nearest integer.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
