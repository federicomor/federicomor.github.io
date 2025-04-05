+++
title = "P186"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_185/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_187/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Connectedness of a Network</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 15th March 2008, 05:00 am; Solved by 3186;<br>Difficulty rating: 60%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=186">Problem 186</a></h3></div>
<div class="problem_content" role="problem">
<p>Here are the records from a busy telephone system with one million users:</p>
<div class="center">
<table class="grid" style="margin:0 auto;"><tr><th>RecNr</th><th width="60" align="center">Caller</th><th width="60" align="center">Called</th></tr>
<tr><td align="center">$1$</td><td align="center">$200007$</td><td align="center">$100053$</td></tr><tr><td align="center">$2$</td><td align="center">$600183$</td><td align="center">$500439$</td></tr><tr><td align="center">$3$</td><td align="center">$600863$</td><td align="center">$701497$</td></tr><tr><td align="center">$\cdots$</td><td align="center">$\cdots$</td><td align="center">$\cdots$</td></tr></table></div>
<p>The telephone number of the caller and the called number in record $n$ are $\operatorname{Caller}(n) = S_{2n-1}$ and $\operatorname{Called}(n) = S_{2n}$ where $S_{1,2,3,\dots}$ come from the "Lagged Fibonacci Generator":</p>

<p>For $1 \le k \le 55$, $S_k = [100003 - 200003k + 300007k^3] \pmod{1000000}$.<br>
For $56 \le k$, $S_k = [S_{k-24} + S_{k-55}] \pmod{1000000}$.</p>

<p>If $\operatorname{Caller}(n) = \operatorname{Called}(n)$ then the user is assumed to have misdialled and the call fails; otherwise the call is successful.</p>

<p>From the start of the records, we say that any pair of users $X$ and $Y$ are friends if $X$ calls $Y$ or vice-versa. Similarly, $X$ is a friend of a friend of $Z$ if $X$ is a friend of $Y$ and $Y$ is a friend of $Z$; and so on for longer chains.</p>

<p>The Prime Minister's phone number is $524287$. After how many successful calls, not counting misdials, will $99\%$ of the users (including the PM) be a friend, or a friend of a friend etc., of the Prime Minister?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
