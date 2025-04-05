+++
title = "P746"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_745/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_747/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>A Messy Dinner</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 7th February 2021, 07:00 am; Solved by 309;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=746">Problem 746</a></h3></div>
<div class="problem_content" role="problem">
<p>$n$ families, each with four members, a father, a mother, a son and a daughter, were invited to a restaurant. They were all seated at a large circular table with $4n$ seats such that men and women alternate.</p>

<p>Let $M(n)$ be the number of ways the families can be seated such that none of the families were seated together. A family is considered to be seated together only when all the members of a family sit next to each other.</p>

<p>For example, $M(1)=0$, $M(2)=896$, $M(3)=890880$ and $M(10) \equiv 170717180 \pmod {1\,000\,000\,007}$.</p>

<p>Let $S(n)=\displaystyle \sum_{k=2}^nM(k)$.</p>

<p>For example, $S(10) \equiv 399291975 \pmod {1\,000\,000\,007}$.</p>

<p>Find $S(2021)$. Give your answer modulo $1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
