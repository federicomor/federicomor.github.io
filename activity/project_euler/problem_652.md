+++
title = "P652"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_651/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_653/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Distinct Values of a Proto-logarithmic Function</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 19th January 2019, 10:00 pm; Solved by 183;<br>Difficulty rating: 70%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=652">Problem 652</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the values of $\log_2(8)$, $\log_4(64)$ and $\log_3(27)$. All three are equal to $3$.</p>

<p>Generally, the function $f(m,n)=\log_m(n)$ over integers $m,n \ge 2$ has the property that <br>
$f(m_1,n_1)=f(m_2,n_2)$ if
</p><ol>
<li>$\, m_1=a^e, n_1=a^f, m_2=b^e,n_2=b^f \,$ for some integers $a,b,e,f \, \,$ or </li>
<li> $ \, m_1=a^e, n_1=b^e, m_2=a^f,n_2=b^f \,$ for some integers $a,b,e,f \,$ </li></ol>


<p>We call a function $g(m,n)$ over integers $m,n \ge 2$ <dfn>proto-logarithmic</dfn>  if 
</p><ul><li>$\quad  \, \, \, \, g(m_1,n_1)=g(m_2,n_2)$ if any integers $a,b,e,f$ fulfilling 1. or 2. can be found</li>
<li><b>and</b> $\, g(m_1,n_1) \ne g(m_2,n_2)$ if no integers $a,b,e,f$ fulfilling 1. or 2. can be found.</li>
</ul>
<p>Let $D(N)$ be the number of distinct values that any proto-logarithmic function $g(m,n)$ attains over $2\le m, n\le N$.<br>
For example, $D(5)=13$, $D(10)=69$, $D(100)=9607$ and $D(10000)=99959605$.</p>

<p>Find $D(10^{18})$, and give the last $9$ digits as answer.</p>


<p><br>
<font size="2"><b>Note:</b> According to the <strong>four exponentials conjecture</strong> the function $\log_m(n)$ is <dfn>proto-logarithmic</dfn>.<br> While this conjecture is yet unproven in general, $\log_m(n)$ can be used to calculate $D(N)$ for small values of $N$.</font></p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
