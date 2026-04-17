# This file was generated, do not modify it. # hide
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