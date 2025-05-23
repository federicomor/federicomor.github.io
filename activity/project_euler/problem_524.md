+++
title = "P524"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_523/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_525/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>First Sort II</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 6th September 2015, 07:00 am; Solved by 248;<br>Difficulty rating: 75%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=524">Problem 524</a></h3></div>
<div class="problem_content" role="problem">
<p>Consider the following algorithm for sorting a list:</p>
<ul style="list-style-type:none;"><li>1. Starting from the beginning of the list, check each pair of adjacent elements in turn.</li>
<li>2. If the elements are out of order:
<ul style="list-style-type:none;"><li>a. Move the smallest element of the pair at the beginning of the list.</li>
<li>b. Restart the process from step 1.</li></ul></li>
<li>3. If all pairs are in order, stop.</li></ul>
<p>For example, the list $\{\,4\,1\,3\,2\,\}$ is sorted as follows:</p>
<ul style="list-style-type:none;"><li>$\underline{4\,1}\,3\,2$ ($4$ and $1$ are out of order so move $1$ to the front of the list)</li>
<li>$1\,\underline{4\,3}\,2$ ($4$ and $3$ are out of order so move $3$ to the front of the list)</li>
<li>$\underline{3\,1}\,4\,2$ ($3$ and $1$ are out of order so move $1$ to the front of the list)</li>
<li>$1\,3\,\underline{4\,2}$ ($4$ and $2$ are out of order so move $2$ to the front of the list)</li>
<li>$\underline{2\,1}\,3\,4$ ($2$ and $1$ are out of order so move $1$ to the front of the list)</li>
<li>$1\,2\,3\,4$ (The list is now sorted)</li></ul>

<p>Let $F(L)$ be the number of times step 2a is executed to sort list $L$. For example, $F(\{\,4\,1\,3\,2\,\}) = 5$.</p>

<p>We can list all permutations $P$ of the integers $\{1, 2, \dots, n\}$ in <strong>lexicographical order</strong>, and assign to each permutation an index $I_n(P)$ from $1$ to $n!$ corresponding to its position in the list.

</p><p>Let $Q(n, k) = \min(I_n(P))$ for $F(P) = k$, the index of the first permutation requiring exactly $k$ steps to sort with First Sort. If there is no permutation for which $F(P) = k$, then $Q(n, k)$ is undefined.</p>

<p>For $n = 4$ we have:</p>

<p></p><table border="1" style="text-align:left;">
<tr><th><var>P</var></th><th><var>I</var><sub>4</sub>(<var>P</var>)</th><th><var>F</var>(<var>P</var>)</th><th></th></tr>
<tr><td>{1, 2, 3, 4}</td><td>1</td><td>0</td><td>Q(4, 0) = 1</td></tr>
<tr><td>{1, 2, 4, 3}</td><td>2</td><td>4</td><td>Q(4, 4) = 2</td></tr>
<tr><td>{1, 3, 2, 4}</td><td>3</td><td>2</td><td>Q(4, 2) = 3</td></tr>
<tr><td>{1, 3, 4, 2}</td><td>4</td><td>2</td><td></td></tr>
<tr><td>{1, 4, 2, 3}</td><td>5</td><td>6</td><td>Q(4, 6) = 5</td></tr>
<tr><td>{1, 4, 3, 2}</td><td>6</td><td>4</td><td></td></tr>
<tr><td>{2, 1, 3, 4}</td><td>7</td><td>1</td><td>Q(4, 1) = 7</td></tr>
<tr><td>{2, 1, 4, 3}</td><td>8</td><td>5</td><td>Q(4, 5) = 8</td></tr>
<tr><td>{2, 3, 1, 4}</td><td>9</td><td>1</td><td></td></tr>
<tr><td>{2, 3, 4, 1}</td><td>10</td><td>1</td><td></td></tr>
<tr><td>{2, 4, 1, 3}</td><td>11</td><td>5</td><td></td></tr>
<tr><td>{2, 4, 3, 1}</td><td>12</td><td>3</td><td>Q(4, 3) = 12</td></tr>
<tr><td>{3, 1, 2, 4}</td><td>13</td><td>3</td><td></td></tr>
<tr><td>{3, 1, 4, 2}</td><td>14</td><td>3</td><td></td></tr>
<tr><td>{3, 2, 1, 4}</td><td>15</td><td>2</td><td></td></tr>
<tr><td>{3, 2, 4, 1}</td><td>16</td><td>2</td><td></td></tr>
<tr><td>{3, 4, 1, 2}</td><td>17</td><td>3</td><td></td></tr>
<tr><td>{3, 4, 2, 1}</td><td>18</td><td>2</td><td></td></tr>
<tr><td>{4, 1, 2, 3}</td><td>19</td><td>7</td><td>Q(4, 7) = 19</td></tr>
<tr><td>{4, 1, 3, 2}</td><td>20</td><td>5</td><td></td></tr>
<tr><td>{4, 2, 1, 3}</td><td>21</td><td>6</td><td></td></tr>
<tr><td>{4, 2, 3, 1}</td><td>22</td><td>4</td><td></td></tr>
<tr><td>{4, 3, 1, 2}</td><td>23</td><td>4</td><td></td></tr>
<tr><td>{4, 3, 2, 1}</td><td>24</td><td>3</td><td></td></tr>
</table>

<p>Let $R(k) = \min(Q(n, k))$ over all $n$ for which $Q(n, k)$ is defined.</p>

<p>Find $R(12^{12})$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
