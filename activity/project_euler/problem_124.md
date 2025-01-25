+++
title = "P124"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_123/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_125/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Ordered Radicals</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 14th July 2006, 06:00 pm; Solved by 14918;<br>Difficulty rating: 25%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=124">Problem 124</a></h3></div>
<div class="problem_content" role="problem">
<p>The radical of $n$, $\operatorname{rad}(n)$, is the product of the distinct prime factors of $n$. For example, $504 = 2^3 \times 3^2 \times 7$, so $\operatorname{rad}(504) = 2 \times 3 \times 7 = 42$.</p>
<p>If we calculate $\operatorname{rad}(n)$ for $1 \le n \le 10$, then sort them on $\operatorname{rad}(n)$, and sorting on $n$ if the radical values are equal, we get:</p>
<table class="center">
<tr>
   <th colspan="2">Unsorted</th>
   <td class="w25"> </td>
   <th colspan="3">Sorted</th>
</tr>
<tr>
   <th class="w50"><i>n</i></th>
   <th class="w50">rad(<i>n</i>)</th>
   <td> </td>
   <th class="w50"><i>n</i></th>
   <th class="w50">rad(<i>n</i>)</th>
   <th class="w50">k</th>
</tr>
<tr>
   <td>1</td><td>1</td>
   <td> </td>
   <td>1</td><td>1</td><td>1</td>
</tr>
<tr>
   <td>2</td><td>2</td>
   <td> </td>
   <td>2</td><td>2</td><td>2</td>
</tr>
<tr>
   <td>3</td><td>3</td>
   <td> </td>
   <td>4</td><td>2</td><td>3</td>
</tr>
<tr>
   <td>4</td><td>2</td>
   <td> </td>
   <td>8</td><td>2</td><td>4</td>
</tr>
<tr>
   <td>5</td><td>5</td>
   <td> </td>
   <td>3</td><td>3</td><td>5</td>
</tr>
<tr>
   <td>6</td><td>6</td>
   <td> </td>
   <td>9</td><td>3</td><td>6</td>
</tr>
<tr>
   <td>7</td><td>7</td>
   <td> </td>
   <td>5</td><td>5</td><td>7</td>
</tr>
<tr>
   <td>8</td><td>2</td>
   <td> </td>
   <td>6</td><td>6</td><td>8</td>
</tr>
<tr>
   <td>9</td><td>3</td>
   <td> </td>
   <td>7</td><td>7</td><td>9</td>
</tr>
<tr>
   <td>10</td><td>10</td>
   <td> </td>
   <td>10</td><td>10</td><td>10</td>
</tr>
</table>
<p>Let $E(k)$ be the $k$-th element in the sorted $n$ column; for example, $E(4) = 8$ and $E(6) = 9$.</p>
<p>If $\operatorname{rad}(n)$ is sorted for $1 \le n \le 100000$, find $E(10000)$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
