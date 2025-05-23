+++
title = "P196"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_195/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_197/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Prime Triplets</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 30th May 2008, 06:00 pm; Solved by 2905;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=196">Problem 196</a></h3></div>
<div class="problem_content" role="problem">
<p>Build a triangle from all positive integers in the following way:</p>

<p style="font-family:'courier new', monospace;font-weight:bold;margin-left:50px;"> 1<br>
 <span style="color:#FF0000;">2</span>  <span style="color:#FF0000;">3</span><br>
 4  <span style="color:#FF0000;">5</span>  6<br>
 <span style="color:#FF0000;">7</span>  8  9 10<br><span style="color:#FF0000;">11</span> 12 <span style="color:#FF0000;">13</span> 14 15<br>
16 <span style="color:#FF0000;">17</span> 18 <span style="color:#FF0000;">19</span> 20 21<br>
22 <span style="color:#FF0000;">23</span> 24 25 26 27 28<br><span style="color:#FF0000;">29</span> 30 <span style="color:#FF0000;">31</span> 32 33 34 35 36<br><span style="color:#FF0000;">37</span> 38 39 40 <span style="color:#FF0000;">41</span> 42 <span style="color:#FF0000;">43</span> 44 45<br>
46 <span style="color:#FF0000;">47</span> 48 49 50 51 52 <span style="color:#FF0000;">53</span> 54 55<br>
56 57 58 <span style="color:#FF0000;">59</span> 60 <span style="color:#FF0000;">61</span> 62 63 64 65 66<br>
. . .</p>

<p>Each positive integer has up to eight neighbours in the triangle.</p>

<p>A set of three primes is called a <dfn>prime triplet</dfn> if one of the three primes has the other two as neighbours in the triangle.</p>

<p>For example, in the second row, the prime numbers $2$ and $3$ are elements of some prime triplet.</p>

<p>If row $8$ is considered, it contains two primes which are elements of some prime triplet, i.e. $29$ and $31$.<br>
If row $9$ is considered, it contains only one prime which is an element of some prime triplet: $37$.</p>

<p>Define $S(n)$ as the sum of the primes in row $n$ which are elements of any prime triplet.<br>
Then $S(8)=60$ and $S(9)=37$.</p>

<p>You are given that $S(10000)=950007619$.</p>

<p>Find $S(5678027) + S(7208785)$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
