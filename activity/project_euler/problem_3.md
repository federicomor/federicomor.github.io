+++
title = "P3"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_2/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_4/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Largest Prime Factor</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Friday, 2nd November 2001, 06:00 pm; Solved by 585221;<br>Difficulty rating: 5%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=3">Problem 3</a></h3></div>
<div class="problem_content" role="problem">
<p>The prime factors of $13195$ are $5, 7, 13$ and $29$.</p>
<p>What is the largest prime factor of the number $600851475143$?</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione
Qui propongo tre metodi: il primo _one-liner_ sfruttando le potenzialità offerte da Julia (moralmente, la libreria Primes); il secondo usando il primo metodo che (credo) verrebbe in mente, ma risulta molto costoso, inefficiente; il terzo una versione sempre a mano ma più ottimizzato e ragionato.

```julia
# metodo one-liner (usando le potenzialità di Julia)
using Primes
maximum(keys(factor(n)))

# metodo naive (il primo che verrebbe in mente)
function find_max_pfactor_naive(n)
	lim_initial = div(n,2)
	for i in lim_initial:-1:1
		if isprime(i) && n%i == 0
			@show i
			break
		end
	end
end
find_max_pfactor_naive(n)

# metodo efficiente
function find_max_pfactor_fast(n)
	i = 1
	while n != 1
		i += 1
		if n % i == 0
			println("n=$(rpad(n,20)) -> $i è un fattore primo di n")
			while n % i == 0
				n = n/i
			end
		end
	end
	println("n=$(rpad(n,20)) -> finito!")
	println("$i è il più alto fattore primo di n")
end
find_max_pfactor_fast(n)
```

```julia
# test performance
@time find_max_pfactor_naive(131956268)
@time find_max_pfactor_fast(131956268)
```
```julia-repl
julia> @time find_max_pfactor_naive(131956268)       
i = 82267
 13.582945 seconds (15 allocations: 456 bytes)

julia> @time find_max_pfactor_fast(131956268)        
n=131956268            -> 2 è un fattore primo di n
n=3.2989067e7          -> 401 è un fattore primo di n
n=82267.0              -> 82267 è un fattore primo di n
n=1.0                  -> finito!
82267 è il più alto fattore primo di n
  0.003454 seconds (71 allocations: 3.422 KiB)
```

{{ addcomments }}
