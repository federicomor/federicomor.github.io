+++
title = "P105"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_104/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_106/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Special Subset Sums: Testing</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 23rd September 2005, 06:00 pm; Solved by 9109;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=105">Problem 105</a></h3></div>
<div class="problem_content" role="problem">
<p>Let $S(A)$ represent the sum of elements in set $A$ of size $n$. We shall call it a special sum set if for any two non-empty disjoint subsets, $B$ and $C$, the following properties are true:</p>
<ol><li>$S(B) \ne S(C)$; that is, sums of subsets cannot be equal.</li>
<li>If $B$ contains more elements than $C$ then $S(B) \gt S(C)$.</li>
</ol><p>For example, $\{81, 88, 75, 42, 87, 84, 86, 65\}$ is not a special sum set because $65 + 87 + 88 = 75 + 81 + 84$, whereas $\{157, 150, 164, 119, 79, 159, 161, 139, 158\}$ satisfies both rules for all possible subset pair combinations and $S(A) = 1286$.</p>
<p>Using <a href="https://projecteuler.net/resources/documents/0105_sets.txt">sets.txt</a> (right click and "Save Link/Target As..."), a 4K text file with one-hundred sets containing seven to twelve elements (the two examples given above are the first two sets in the file), identify all the special sum sets, $A_1, A_2, \dots, A_k$, and find the value of $S(A_1) + S(A_2) + \cdots + S(A_k)$.</p>
<p class="smaller">NOTE: This problem is related to <a href="https://projecteuler.net/problem=103">Problem 103</a> and <a href="https://projecteuler.net/problem=106">Problem 106</a>.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
