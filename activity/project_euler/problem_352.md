+++
title = "P352"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_351/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_353/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Blood Tests</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 2nd October 2011, 01:00 am; Solved by 696;<br>Difficulty rating: 55%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=352">Problem 352</a></h3></div>
<div class="problem_content" role="problem">
<p>
Each one of the $25$ sheep in a flock must be tested for a rare virus, known to affect $2\%$ of the sheep population.
An accurate and extremely sensitive PCR test exists for blood samples, producing a clear positive / negative result, but it is very time-consuming and expensive.
</p>

<p>
Because of the high cost, the vet-in-charge suggests that instead of performing $25$ separate tests, the following procedure can be used instead:<br><br>
The sheep are split into $5$ groups of $5$ sheep in each group. 
For each group, the $5$ samples are mixed together and a single test is performed. Then,
</p><ul><li>If the result is negative, all the sheep in that group are deemed to be virus-free.</li>
<li>If the result is positive, $5$ additional tests will be performed (a separate test for each animal) to determine the affected individual(s).</li>
</ul><p>
Since the probability of infection for any specific animal is only $0.02$, the first test (on the pooled samples) for each group will be:
</p><ul><li>Negative (and no more tests needed) with probability $0.98^5 = 0.9039207968$.</li>
<li>Positive ($5$ additional tests needed) with probability $1 - 0.9039207968 = 0.0960792032$.</li>
</ul><p>
Thus, the expected number of tests for each group is $1 + 0.0960792032 \times 5 = 1.480396016$.<br>
Consequently, all $5$ groups can be screened using an average of only $1.480396016 \times 5 = \mathbf{7.40198008}$ tests, which represents a huge saving of more than $70\%$!
</p>

<p>
Although the scheme we have just described seems to be very efficient, it can still be improved considerably (always assuming that the test is sufficiently sensitive and that there are no adverse effects caused by mixing different samples). E.g.:
</p><ul><li>We may start by running a test on a mixture of all the $25$ samples. It can be verified that in about $60.35\%$ of the cases this test will be negative, thus no more tests will be needed. Further testing will only be required for the remaining $39.65\%$ of the cases.</li>
<li>If we know that at least one animal in a group of $5$ is infected and the first $4$ individual tests come out negative, there is no need to run a test on the fifth animal (we know that it must be infected).</li>
<li>We can try a different number of groups / different number of animals in each group, adjusting those numbers at each level so that the total expected number of tests will be minimised.</li>
</ul><p>
To simplify the very wide range of possibilities, there is one restriction we place when devising the most cost-efficient testing scheme: whenever we start with a mixed sample, all the sheep contributing to that sample must be fully screened (i.e. a verdict of infected / virus-free must be reached for all of them) before we start examining any other animals.
</p>
For the current example, it turns out that the most cost-efficient testing scheme (we'll call it the <dfn>optimal strategy</dfn>) requires an average of just $\mathbf{4.155452}$ tests!


<p>
Using the optimal strategy, let $T(s,p)$ represent the average number of tests needed to screen a flock of $s$ sheep for a virus having probability $p$ to be present in any individual.<br>
Thus, rounded to six decimal places, $T(25, 0.02) = 4.155452$ and $T(25, 0.10) = 12.702124$.
</p>

<p>
Find $\sum T(10000, p)$ for $p=0.01, 0.02, 0.03, \dots 0.50$.<br>
Give your answer rounded to six decimal places.
</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
