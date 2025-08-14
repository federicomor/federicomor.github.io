# This file was generated, do not modify it.

i = 0
n = 11
@time while i<13
	global i, n # questione di scope
	sum_digits = sum(digits(n))
	if sum_digits != 1
		x = round(log10(n)/log10(sum_digits))
		if n == sum_digits^Int(x) # rifacciamo il controllo per evitare errori dovuti ad approssimazioni
			i += 1
			println("$i) $n = $sum_digits^$(Int(x))")
		end
	end
	n += 1
end

# creiamo il dizionario che contiene la chiave (base, esponente) e il valore corrispondente (base^esponente)
d = Dict{Tuple{Int, Int}, Int}()
# lo popoliamo, come precalcolo per lo step successivo
println("precomputation step")
@time for base in 2:70
	for exp in 2:30
		d[(base, exp)] = base^exp
	end
end

# lo ordiniamo per scorrere sui numeri in ordine crescente
sorted_pairs = sort(collect(d), by = x -> x[2])
i = 0
@time for (k,v) in sorted_pairs
	if sum(digits(v)) == k[1]
		global i += 1
		println("$i) $v = $(k[1])^$(k[2])")
	end
end

function test(ub_base, ub_exp)
	d = Dict{Tuple{Int, Int}, Int}()
	for base in 2:ub_base
		for exp in 2:ub_exp
			d[(base, exp)] = base^exp
		end
	end
	sorted_pairs = sort(collect(d), by = x -> x[2])
	i = 0
	for (k,v) in sorted_pairs
		if sum(digits(v)) == k[1]
			global i += 1
			println("$i) $v = $(k[1])^$(k[2])")
		end
	end
end
@time test(200,50)
