+++
title = "P891"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_890/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_892/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Ambiguous Clock</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 19th May 2024, 05:00 am; Solved by 150;<br>Difficulty rating: 65%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=891">Problem 891</a></h3></div>
<div class="problem_content" role="problem">
<p>
A round clock only has three hands: hour, minute, second. All hands look identical and move continuously. Moreover, there is no number or reference mark so that the "upright position" is unknown. The clock functions the same as a normal 12-hour analogue clock.</p>

<p>
Despite the inconvenient design, for most time it is possible to tell the correct time (within a 12-hour cycle) from the clock, just by measuring accurately the angles between the hands. For example, if all three hands coincide, then the time must be 12:00:00.</p>

<p>
Nevertheless, there are several moments where the clock shows an ambiguous reading. For example, the following moment could be either 1:30:00 or 7:30:00 (with the clock rotated $180^\circ$). Thus both 1:30:00 and 7:30:00 are ambiguous moments.<br>
Note that even if two hands perfectly coincide, we can still see them as two distinct hands in the same position. Thus for example 3:00:00 and 9:00:00 are not ambiguous moments.
</p>

<div style="text-align:center;"><img src="https://projecteuler.net/resources/images/0891_clock.png?1714250610" alt="0891_clock.png"></div>

<p>
How many ambiguous moments are there within a 12-hour cycle?</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
