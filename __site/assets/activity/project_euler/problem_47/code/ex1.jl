# This file was generated, do not modify it. # hide
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