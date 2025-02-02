+++
title = "P4"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_3/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_5/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Largest Palindrome Product</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 16th November 2001, 06:00 pm; Solved by 517221;<br>Difficulty rating: 5%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=4">Problem 4</a></h3></div>
<div class="problem_content" role="problem">
<p>A palindromic number reads the same both ways. The largest palindrome made from the product of two $2$-digit numbers is $9009 = 91 \times 99$.</p>
<p>Find the largest palindrome made from the product of two $3$-digit numbers.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
Qui basta convertire la richiesta in sintassi di Julia: ci interessa il più alto numero palindromo $n$ ottenuto come il prodotto di due numeri $i$ e $j$ da tre cifre? facciamo un loop con $i$ e $j$ sul range dei numeri da 3 cifre, e controlliamo se il loro prodotto è palindromo e se è maggiore del candidato trovato finora (perché ci interessa trovare il massimo numero che ha questa caratteristica). Il controllo sulla palindromia lo si fa confrontando la stringa del numero con sè stessa invertita (tipo 121 è uguale a 121, mentre 123 è diverso da 321).

```julia
max_n = 1 # n=i*j
max_i = 1; max_j = 1

for i in 100:998
	for j in (i+1):999
		n = i*j
		if string(n) == reverse(string(n)) && n>max_n
			max_n = n
			max_i = i; max_j = j
		end
	end
end
@show max_n, max_i, max_j
```

{{ addcomments }}
