+++
title = "P775"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_774/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_776/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Saving Paper</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th December 2021, 01:00 am; Solved by 260;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=775">Problem 775</a></h3></div>
<div class="problem_content" role="problem">
<p>When wrapping several cubes in paper, it is more efficient to wrap them all together than to wrap each one individually. For example, with 10 cubes of unit edge length, it would take 30 units of paper to wrap them in the arrangement shown below, but 60 units to wrap them separately.</p>

<div style="text-align:center;">
<img src="https://projecteuler.net/project/images/p775_wrapping_cubes.png" class="dark_img" alt="" /></div>


<p>Define $g(n)$ to be the maximum amount of paper that can be saved by wrapping $n$ identical $1\times 1\times 1$ cubes in a compact arrangement, compared with wrapping them individually. We insist that the wrapping paper is in contact with the cubes at all points, without leaving a void.</p>

<p>With 10 cubes, the arrangement illustrated above is optimal, so $g(10)=60-30=30$. With 18 cubes, it can be shown that the optimal arrangement is as a $3\times 3\times 2$, using 42 units of paper, whereas wrapping individually would use 108 units of paper; hence $g(18) = 66$.</p>

<p>Define
$$G(N) = \sum_{n=1}^N g(n)$$
You are given that $G(18) = 530$, and $G(10^6) \equiv 951640919 \pmod {1\,000\,000\,007}$.</p>

<p>Find $G(10^{16})$. Give your answer modulo $1\,000\,000\,007$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
