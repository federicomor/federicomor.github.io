+++
title = "P667"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_666/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_668/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Moving Pentagon</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th April 2019, 04:00 pm; Solved by 222;<br>Difficulty rating: 80%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=667">Problem 667</a></h3></div>
<div class="problem_content" role="problem">
<p>
After buying a <i>Gerver Sofa</i> from the <i>Moving Sofa Company</i>, Jack wants to buy a matching cocktail table from the same company. Most important for him is that the table can be pushed through his L-shaped corridor into the living room without having to be lifted from its table legs. <br />
Unfortunately, the simple square model offered to him is too small for him, so he asks for a bigger model.<br />
He is offered the new pentagonal model illustrated below:</p>
<img src="https://projecteuler.net/project/images/p667_MovingPentagon.png" alt="p667.png" /><p>
Note, while the shape and size can be ordered individually, due to the production process,<b> all edges of the pentagonal table have to have the same length.</b></p>
<p>
Given optimal form and size, what is the biggest pentagonal cocktail table (in terms of area) that Jack can buy that still fits through his unit wide L-shaped corridor?</p>
<p>
Give your answer rounded to 10 digits after the decimal point (if Jack had choosen the square model instead the answer would have been 1.0000000000).</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
