+++
title = "P1"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<!-- <a href="/activity/project_euler/problem_0/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a> -->
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_2/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Multiples of 3 or 5</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 5th October 2001, 06:00 pm; Solved by 1019924;<br>Difficulty rating: 5%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=1">Problem 1</a></h3></div>
<div class="problem_content" role="problem">
<p>If we list all the natural numbers below $10$ that are multiples of $3$ or $5$, we get $3, 5, 6$ and $9$. The sum of these multiples is $23$.</p>
<p>Find the sum of all the multiples of $3$ or $5$ below $1000$.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~

## Soluzione

Formalmente, vorremo trovare
$$
S = \sum_{\substack{n \in [1,1000) \\ n \equiv 0 \text{ mod } (3,5)}} n = 3+5+6+9+10+12+\ldots + 999
$$
Quindi l'idea è che possiamo raccogliere tutti i fattori di 3 e 5, ottenendo $3(1+2+\ldots+h)$ e $5(1+2+\ldots+k)$, con $h$ ($=333$) e $k$ ($=199$) i limiti opportuni per ottenere un loro multiplo ma senza sforare 1000. In questo modo però staremmo contando due volte i multipli di 3 _e_ 5, come 15, 30, 45, ecc; quindi occorre correggere sottraendo per i multipli di 15, anche lui fino al suo limite opportuno (che per lui corrisponde a 66, dato che $15\cdot66 = 990$). Dopodiché si può calcolare $S$ applicando sui vari contributi la formuletta 
$$
\sum_{i=1}^n i = \frac{n(n+1)}{2}
$$

Un approccio invece "informatico" consisterebbe nel seguente programmino:
```julia
# one-liner
sum([i for i in 1:999 if (i%3==0 || i%5==0)])

# forma estesa
S = 0
for i in 1:999
	if i%3 == 0 || i%5 == 0
		S += i
	end
end
@show S
```


{{ addcomments }}
