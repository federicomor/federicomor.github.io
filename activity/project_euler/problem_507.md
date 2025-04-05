+++
title = "P507"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_506/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_508/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Shortest Lattice Vector</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 15th March 2015, 07:00 am; Solved by 238;<br>Difficulty rating: 90%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=507">Problem 507</a></h3></div>
<div class="problem_content" role="problem">
<p>
Let $t_n$ be the <b>tribonacci numbers</b> defined as:<br>
$t_0 = t_1 = 0$;<br>
$t_2 = 1$;<br>
$t_n = t_{n-1} + t_{n-2} + t_{n-3}$ for $n \ge 3$<br>
and let $r_n = t_n \text{ mod } 10^7$.
</p>
<p>
For each pair of Vectors $V_n=(v_1,v_2,v_3)$ and $W_n=(w_1,w_2,w_3)$ with $v_1=r_{12n-11}-r_{12n-10}, v_2=r_{12n-9}+r_{12n-8}, v_3=r_{12n-7} \cdot r_{12n-6}$  and <br> $w_1=r_{12n-5}-r_{12n-4}, w_2=r_{12n-3}+r_{12n-2}, w_3=r_{12n-1} \cdot r_{12n}$
<br>

we define $S(n)$ as the minimal value of the manhattan length of the vector $D=k \cdot V_n+l \cdot W_n$ measured as $|k \cdot v_1+l \cdot w_1|+|k \cdot v_2+l \cdot w_2|+|k \cdot v_3+l \cdot w_3|$
 for any integers $k$ and $l$ with $(k,l)\neq (0,0)$.
</p><p>
The first vector pair  is $(-1, 3, 28)$, $(-11, 125, 40826)$.<br>
You are given that $S(1)=32$ and $\sum_{n=1}^{10} S(n)=130762273722$.
</p>
<p>
Find $\sum_{n=1}^{20000000} S(n)$.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
