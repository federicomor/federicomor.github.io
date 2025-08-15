# This file was generated, do not modify it. # hide
function big_test(ub_base, ub_exp)
	d = Dict{Tuple{Int, Int}, BigInt}()
	for base in 2:ub_base
		for exp in 2:ub_exp
			d[(base, exp)] = BigInt(base)^exp
		end
	end
	sorted_pairs = sort(collect(d), by = x -> x[2])
	i = 0
	for (k,v) in sorted_pairs
		if sum(digits(v)) == k[1]
			i += 1
			if v >= typemax(Int64)
				println("$i) $v = $(k[1])^$(k[2])")
			end
		end
	end
end
@time big_test(500,70)