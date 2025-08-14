# This file was generated, do not modify it. # hide
# lo ordiniamo per scorrere sui numeri in ordine crescente
sorted_pairs = sort(collect(d), by = x -> x[2])
i = 0
@time for (k,v) in sorted_pairs
	if sum(digits(v)) == k[1]
		global i += 1
		println("$i) $v = $(k[1])^$(k[2])")
	end
end