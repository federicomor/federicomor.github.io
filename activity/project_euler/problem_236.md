+++
title = "P236"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_235/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_237/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Luxury Hampers</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 14th March 2009, 09:00 am; Solved by 1054;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=236">Problem 236</a></h3></div>
<div class="problem_content" role="problem">
<p>Suppliers 'A' and 'B' provided the following numbers of products for the luxury hamper market:</p>

<p></p><center><table class="p236"><tr><th>Product</th><th class="center">'A'</th><th class="center">'B'</th></tr><tr><td>Beluga Caviar</td><td>5248</td><td>640</td></tr><tr><td>Christmas Cake</td><td>1312</td><td>1888</td></tr><tr><td>Gammon Joint</td><td>2624</td><td>3776</td></tr><tr><td>Vintage Port</td><td>5760</td><td>3776</td></tr><tr><td>Champagne Truffles</td><td>3936</td><td>5664</td></tr></table></center>

<p>Although the suppliers try very hard to ship their goods in perfect condition, there is inevitably some spoilage - <i>i.e.</i> products gone bad.</p>

<p>The suppliers compare their performance using two types of statistic:</p><ul><li>The five <i>per-product spoilage rates</i> for each supplier are equal to the number of products gone bad divided by the number of products supplied, for each of the five products in turn.</li>
  <li>The <i>overall spoilage rate</i> for each supplier is equal to the total number of products gone bad divided by the total number of products provided by that supplier.</li></ul><p>To their surprise, the suppliers found that each of the five per-product spoilage rates was worse (higher) for 'B' than for 'A' by the same factor (ratio of spoilage rates), <var>m</var>&gt;1; and yet, paradoxically, the overall spoilage rate was worse for 'A' than for 'B', also by a factor of <var>m</var>.</p>

<p>There are thirty-five <var>m</var>&gt;1 for which this surprising result could have occurred, the smallest of which is 1476/1475.</p>

<p>What's the largest possible value of <var>m</var>?<br />
Give your answer as a fraction reduced to its lowest terms, in the form <var>u</var>/<var>v</var>.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
