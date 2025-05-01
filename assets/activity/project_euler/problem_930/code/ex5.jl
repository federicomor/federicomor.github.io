# This file was generated, do not modify it. # hide
# generate all possible states of where balls can be located in the bowls
function get_all_states(n::Int, m::Int; verbose=false)
	if n == 1
		return [[m]]
	end
	ret = []
	for i in 0:m # loop balls' assignments from 0 to m
		if verbose @show i end
		# fill the n-1 left spots with the remaining m-i balls
		tmp = get_all_states(n-1, m-i, verbose=false)
		for t in tmp
			if verbose println("\tt=$t") end
			push!(t, i)
			push!(ret, t)
		end
	end
	return ret
end
get_all_states(3,2,verbose=true)