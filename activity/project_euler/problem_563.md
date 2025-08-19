+++
title = "P563"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_562/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_564/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Robot Welders</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th June 2016, 04:00 am; Solved by 392;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=563">Problem 563</a></h3></div>
<div class="problem_content" role="problem">
<p>A company specialises in producing large rectangular metal sheets, starting from unit square metal plates.  The welding is performed by a range of robots of increasing size.  Unfortunately, the programming options of these robots are rather limited.  Each one can only process up to $25$ identical rectangles of metal, which they can weld along either edge to produce a larger rectangle.  The only programmable variables are the number of rectangles to be processed (up to and including $25$), and whether to weld the long or short edge.</p>

<p>For example, the first robot could be programmed to weld together $11$ raw unit square plates to make a $11 \times 1$ strip. The next could take $10$ of these $11 \times 1$ strips, and weld them either to make a longer $110 \times 1$ strip, or a $11 \times 10$ rectangle. Many, but not all, possible dimensions of  metal sheets can be constructed in this way.</p>

<p>One regular customer has a particularly unusual order: The finished product should have an exact area, and the long side must not be more than $10\%$ larger than the short side. If these requirements can be met in more than one way, in terms of the exact dimensions of the two sides, then the customer will demand that all variants be produced. For example, if the order calls for a metal sheet of area $889200$, then there are three final dimensions that can be produced: $900 \times 988$, $912 \times 975$ and $936 \times 950$. The target area of $889200$ is the smallest area which can be manufactured in three different variants, within the limitations of the robot welders.</p>

<p>Let $M(n)$ be the minimal area that can be manufactured in <u>exactly</u> $n$ variants with the longer edge not greater than $10\%$ bigger than the shorter edge. Hence $M(3) = 889200$.</p>

<p>Find $\sum_{n=2}^{100} M(n)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
