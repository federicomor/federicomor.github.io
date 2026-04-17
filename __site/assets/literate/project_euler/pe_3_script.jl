# This file was generated, do not modify it.

n_test = 131956268 # giusto un numero di test

using Primes
@time maximum(keys(factor(n_test)))

function find_max_pfactor_naive(n)
	lim_initial = div(n,2)
	for i in lim_initial:-1:1
		if isprime(i) && n%i == 0
			@show i
			break
		end
	end
end
@time find_max_pfactor_naive(n_test)

function find_max_pfactor_fast(n)
	i = 1
	while n != 1
		i += 1
		if n % i == 0
			println("n = $(rpad(Int64(n),20)) -> $i è un fattore primo di n")
			while n % i == 0
				n = n/i
			end
		end
	end
	println("n = $(rpad(Int64(n),20)) -> finito!")
	println("=> $i è il più alto fattore primo di n")
end
@time find_max_pfactor_fast(n_test)

@time find_max_pfactor_fast(600851475143)
