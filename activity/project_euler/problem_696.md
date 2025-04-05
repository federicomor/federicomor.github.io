+++
title = "P696"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_695/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_697/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Mahjong</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 5th January 2020, 01:00 am; Solved by 194;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=696">Problem 696</a></h3></div>
<div class="problem_content" role="problem">
<p>The game of Mahjong is played with tiles belonging to $s$ <dfn>suits</dfn>. Each tile also has a <dfn>number</dfn> in the range $1\ldots n$, and for each suit/number combination there are exactly four indistinguishable tiles with that suit and number. (The real Mahjong game also contains other bonus tiles, but those will not feature in this problem.)</p>

<p>A <dfn>winning hand</dfn> is a collection of $3t+2$ Tiles (where $t$ is a fixed integer) that can be arranged as $t$ <dfn>Triples</dfn> and one <dfn>Pair</dfn>, where:</p>
<ul>
<li>A <dfn>Triple</dfn> is either a <dfn>Chow</dfn> or a <dfn>Pung</dfn></li>
<li>A <dfn>Chow</dfn> is three tiles of the same suit and consecutive numbers</li>
<li>A <dfn>Pung</dfn> is three identical tiles (same suit and same number)</li>
<li>A <dfn>Pair</dfn> is two identical tiles (same suit and same number)</li>
</ul>

<p>For example, here is a winning hand with $n=9$, $s=3$, $t=4$, consisting in this case of two Chows, two Pungs, and one Pair:</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0696_mahjong_1.png?1678992054" alt="A winning Mahjong hand">
</div>

<p>Note that sometimes the same collection of tiles can be represented as $t$ Triples and one Pair in more than one way. This only counts as one winning hand. For example, this is considered to be the same winning hand as above, because it consists of the same tiles:</p>
<div class="center">
<img src="https://projecteuler.net/resources/images/0696_mahjong_2.png?1678992054" alt="Alternative arrangement of the same hand">
</div>

<p>Let $w(n, s, t)$ be the number of distinct winning hands formed of $t$ Triples and one Pair, where there are $s$ suits available and tiles are numbered up to $n$.</p>

<p>For example, with a single suit and tiles numbered up to $4$, we have $w(4, 1, 1) = 20$: there are $12$ winning hands consisting of a Pung and a Pair, and another $8$ containing a Chow and a Pair. You are also given that $w(9, 1, 4) = 13259$, $w(9, 3, 4) = 5237550$, and $w(1000, 1000, 5) \equiv 107662178 \pmod{1\,000\,000\,007}$.</p>

<p>Find $w(10^8, 10^8, 30)$. Give your answer modulo $1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
