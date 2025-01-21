+++
title = "Intersections"
hascode = true
hasplotly = true
+++

~~~
<p style="margin-bottom: -85px; color: black; text-decoration: none; font-size: 20px; text-align: right;">
<a href="/activity/project_euler/problem_164/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_166/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</p>
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
<h2>Intersections</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 27th October 2007, 10:00 am; Solved by 2905;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=165">Problem 165</a></h3></div>
<div class="problem_content" role="problem">
<p>A segment is uniquely defined by its two endpoints.<br> By considering two line segments in plane geometry there are three possibilities:<br> 
the segments have zero points, one point, or infinitely many points in common.</p>
<p>Moreover when two segments have exactly one point in common it might be the case that that common point is an endpoint of either one of the segments or of both. If a common point of two segments is not an endpoint of either of the segments it is an interior point of both segments.<br>
We will call a common point $T$ of two segments $L_1$ and $L_2$ a true intersection point of $L_1$ and $L_2$ if $T$ is the only common point of $L_1$ and $L_2$ and $T$ is an interior point of both segments.
</p>
<p>Consider the three segments $L_1$, $L_2$, and $L_3$:</p>
<ul style="list-style-type:none;">
<li>$L_1$: $(27, 44)$ to $(12, 32)$</li>
<li>$L_2$: $(46, 53)$ to $(17, 62)$</li>
<li>$L_3$: $(46, 70)$ to $(22, 40)$</li></ul>
<p>It can be verified that line segments $L_2$ and $L_3$ have a true intersection point. We note that as the one of the end points of $L_3$: $(22,40)$ lies on $L_1$ this is not considered to be a true point of intersection. $L_1$ and $L_2$ have no common point. So among the three line segments, we find one true intersection point.</p>
<p>Now let us do the same for $5000$ line segments. To this end, we generate $20000$ numbers using the so-called "Blum Blum Shub" pseudo-random number generator.</p>
\begin{align}
s_0 &amp;= 290797\\
s_{n + 1} &amp;= s_n \times s_n \pmod{50515093}\\
t_n &amp;= s_n \pmod{500}
\end{align}
<p>To create each line segment, we use four consecutive numbers $t_n$. That is, the first line segment is given by:</p>
<p>$(t_1, t_2)$ to $(t_3, t_4)$.</p>
<p>The first four numbers computed according to the above generator should be: $27$, $144$, $12$ and $232$. The first segment would thus be $(27,144)$ to $(12,232)$.</p>
<p>How many distinct true intersection points are found among the $5000$ line segments?</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
