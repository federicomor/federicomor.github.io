# This file was generated, do not modify it.

using Primes
function factor_terms(n)
	dict=factor(n)
	return keys(dict) .^ values(dict)
end
@show factor_terms(14)
@show factor_terms(15)
@show factor_terms(644)
@show factor_terms(645)
@show factor_terms(646)

s = []
i = 100
found = 0
@time while found != 1
	push!(s,factor_terms(i))
	if length(s) == 5
		# quando s contiene 5 elementi togliamo il primo,
		# per tenere gli ultimi 4 come quelli nuovi consecutivi che indaghiamo
		popfirst!(s)
	end
	if length.(s) == [4,4,4,4] && length(Set(vcat(s...))) == 16
		println("Soluzione: ", collect(i-3:i))
		println("I loro fattori sono: ", s)
		global found = 1
	end
	global i += 1
end
