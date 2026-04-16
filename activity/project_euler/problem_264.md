+++
title = "P264"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_263/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_265/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Triangle Centres</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th November 2009, 05:00 am; Solved by 667;<br>Difficulty rating: 85%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=264">Problem 264</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider all the triangles having:
</p><ul><li>All their vertices on <strong class="tooltip">lattice points<span class="tooltiptext">Integer coordinates</span></strong>.</li>
<li><strong class="tooltip">Circumcentre<span class="tooltiptext">Centre of the circumscribed circle</span></strong> at the origin $O$.</li>
<li><strong class="tooltip">Orthocentre<span class="tooltiptext">Point where the three altitudes meet</span></strong> at the point $H(5, 0)$.</li>
</ul><p>There are nine such triangles having a perimeter $\le 50$.<br>
Listed and shown in ascending order of their perimeter, they are:</p>

<p></p><table><tr><td>$A(-4, 3)$, $B(5, 0)$, $C(4, -3)$<br>
$A(4, 3)$, $B(5, 0)$, $C(-4, -3)$<br>
$A(-3, 4)$, $B(5, 0)$, $C(3, -4)$<br><br><br>
$A(3, 4)$, $B(5, 0)$, $C(-3, -4)$<br>
$A(0, 5)$, $B(5, 0)$, $C(0, -5)$<br>
$A(1, 8)$, $B(8, -1)$, $C(-4, -7)$<br><br><br>
$A(8, 1)$, $B(1, -8)$, $C(-4, 7)$<br>
$A(2, 9)$, $B(9, -2)$, $C(-6, -7)$<br>
$A(9, 2)$, $B(2, -9)$, $C(-6, 7)$<br></td>
<td><img src="https://projecteuler.net/resources/images/0264_TriangleCentres.gif?1678992056" class="dark_img" alt="0264_TriangleCentres.gif"></td>
</tr></table>

<p>The sum of their perimeters, rounded to four decimal places, is $291.0089$.</p>

<p>Find all such triangles with a perimeter $\le 10^5$.<br>
Enter as your answer the sum of their perimeters rounded to four decimal places.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
