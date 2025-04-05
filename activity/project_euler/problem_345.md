+++
title = "P345"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_344/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_346/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Matrix Sum</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 3rd September 2011, 04:00 pm; Solved by 6282;<br>Difficulty rating: 15%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=345">Problem 345</a></h3></div>
<div class="problem_content" role="problem">
<p>We define the <dfn>Matrix Sum</dfn> of a matrix as the maximum possible sum of matrix elements such that none of the selected elements share the same row or column.</p>

<p>For example, the Matrix Sum of the matrix below equals 3315 ( = 863 + 383 + 343 + 959 + 767):</p>

<p style="text-align:center;font-family:'courier new';">
  7  53 183 439 <span style="color:#00ff00;font-family:'courier new';"><b>863</b></span><br />
497 <span style="color:#00ff00;font-family:'courier new';"><b>383</b></span> 563  79 973<br />
287  63 <span style="color:#00ff00;font-family:'courier new';"><b>343</b></span> 169 583<br />
627 343 773 <span style="color:#00ff00;font-family:'courier new';"><b>959</b></span> 943<br /><span style="color:#00ff00;font-family:'courier new';"><b>767</b></span> 473 103 699 303<br /></p>

<p>
Find the Matrix Sum of:<br /></p>
<p style="text-align:center;font-family:'courier new';">
  7  53 183 439 863 497 383 563  79 973 287  63 343 169 583<br />
627 343 773 959 943 767 473 103 699 303 957 703 583 639 913<br />
447 283 463  29  23 487 463 993 119 883 327 493 423 159 743<br />
217 623   3 399 853 407 103 983  89 463 290 516 212 462 350<br />
960 376 682 962 300 780 486 502 912 800 250 346 172 812 350<br />
870 456 192 162 593 473 915  45 989 873 823 965 425 329 803<br />
973 965 905 919 133 673 665 235 509 613 673 815 165 992 326<br />
322 148 972 962 286 255 941 541 265 323 925 281 601  95 973<br />
445 721  11 525 473  65 511 164 138 672  18 428 154 448 848<br />
414 456 310 312 798 104 566 520 302 248 694 976 430 392 198<br />
184 829 373 181 631 101 969 613 840 740 778 458 284 760 390<br />
821 461 843 513  17 901 711 993 293 157 274  94 192 156 574<br />
 34 124   4 878 450 476 712 914 838 669 875 299 823 329 699<br />
815 559 813 459 522 788 168 586 966 232 308 833 251 631 107<br />
813 883 451 509 615  77 281 613 459 205 380 274 302  35 805<br /></p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
