+++
title = "P314"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_313/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_315/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>The Mouse on the Moon</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 12th December 2010, 07:00 am; Solved by 579;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=314">Problem 314</a></h3></div>
<div class="problem_content" role="problem">
<p>
The moon has been opened up, and land can be obtained for free, but there is a catch. You have to build a wall around the land that you stake out, and building a wall on the moon is expensive. Every country has been allotted a $\pu{500 m}$ by $\pu{500 m}$ square area, but they will possess only that area which they wall in. $251001$ posts have been placed in a rectangular grid with $1$ meter spacing. The wall must be a closed series of straight lines, each line running from post to post.
</p>
<p>
The bigger countries of course have built a $\pu{2000 m}$ wall enclosing the entire $\pu{250 000 m^2}$ area. The <a href="https://projecteuler.net/http://en.wikipedia.org/wiki/Grand_Fenwick">Duchy of Grand Fenwick</a>, has a tighter budget, and has asked you (their Royal Programmer) to compute what shape would get best maximum enclosed-area/wall-length ratio.
</p>
<p>
You have done some preliminary calculations on a sheet of paper.
For a $2000$ meter wall enclosing the $\pu{250 000 m^2}$ area the
enclosed-area/wall-length ratio is $125$.<br>
Although not allowed , but to get an idea if this is anything better:  if you place a circle inside the square area touching the four sides the area will be equal to $\pi \times \pu{250^2 m^2}$ and the perimeter will be $\pi \times \pu{500 m}$, so the enclosed-area/wall-length ratio will also be $125$.
</p>
<p>
However, if you cut off from the square four triangles with sides $\pu{75 m}$, $\pu{75 m}$ and $75\pu{\sqrt 2 m}$ the total area becomes $\pu{238750 m^2}$ and the perimeter becomes $1400+300\pu{\sqrt 2 m}$. So this gives an enclosed-area/wall-length ratio of $130.87$, which is significantly better.
</p>
<div align="center"><img src="https://projecteuler.net/resources/images/0314_landgrab.gif?1678992056" class="dark_img" alt="0314_landgrab.gif"></div>
<p>
Find the maximum enclosed-area/wall-length ratio.<br>
Give your answer rounded to $8$ places behind the decimal point in the form abc.defghijk.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
