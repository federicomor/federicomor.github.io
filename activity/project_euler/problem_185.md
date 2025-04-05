+++
title = "P185"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_184/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_186/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Number Mind</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 8th March 2008, 01:00 am; Solved by 3496;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=185">Problem 185</a></h3></div>
<div class="problem_content" role="problem">
<p>The game Number Mind is a variant of the well known game Master Mind.</p>
<p>Instead of coloured pegs, you have to guess a secret sequence of digits. After each guess you're only told in how many places you've guessed the correct digit. So, if the sequence was 1234 and you guessed 2036, you'd be told that you have one correct digit; however, you would NOT be told that you also have another digit in the wrong place.</p>

<p>For instance, given the following guesses for a 5-digit secret sequence,</p>
<p class="margin_left">90342 ;2 correct<br />
70794 ;0 correct<br />
39458 ;2 correct<br />
34109 ;1 correct<br />
51545 ;2 correct<br />
12531 ;1 correct</p>
<p>The correct sequence 39542 is unique.</p>

<p>Based on the following guesses,</p>

<p class="margin_left">5616185650518293 ;2 correct<br />
3847439647293047 ;1 correct<br />
5855462940810587 ;3 correct<br />
9742855507068353 ;3 correct<br />
4296849643607543 ;3 correct<br />
3174248439465858 ;1 correct<br />
4513559094146117 ;2 correct<br />
7890971548908067 ;3 correct<br />
8157356344118483 ;1 correct<br />
2615250744386899 ;2 correct<br />
8690095851526254 ;3 correct<br />
6375711915077050 ;1 correct<br />
6913859173121360 ;1 correct<br />
6442889055042768 ;2 correct<br />
2321386104303845 ;0 correct<br />
2326509471271448 ;2 correct<br />
5251583379644322 ;2 correct<br />
1748270476758276 ;3 correct<br />
4895722652190306 ;1 correct<br />
3041631117224635 ;3 correct<br />
1841236454324589 ;3 correct<br />
2659862637316867 ;2 correct</p>

<p>Find the unique 16-digit secret sequence.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
