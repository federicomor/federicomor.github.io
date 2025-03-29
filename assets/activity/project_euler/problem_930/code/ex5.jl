# This file was generated, do not modify it. # hide
# generate all possible states of where balls can be located in the bowls
function get_all_states(m::Int, n::Int; verbose=false)
	if m == 1
		return [[n]]
	end
	ret = []
	for i in 0:n
		if verbose @show i end
		tmp = get_all_states(m - 1, n - i, verbose=false)
		for t in tmp
			if verbose println("\tt=$t") end
			push!(t, i)
			push!(ret, t)
		end
	end
	return ret
end
get_all_states(3,2,verbose=true)