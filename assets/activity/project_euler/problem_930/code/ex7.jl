# This file was generated, do not modify it. # hide
# compute initial probabilities for the states
function get_states(bowls::Int, balls::Int; verbose=false)
	allStates = get_all_states(bowls, balls)
	multiStates = OrderedDict{Vector{Real},Int}()
	states = Vector{Vector{Int64}}()
	for s in allStates
		min_s = min_state(s)
		multiStates[min_s] = get(multiStates, min_s, 0) + 1
		if !(min_s in states)
			push!(states, min_s)
		end
		if verbose @show multiStates end
	end
	prob = factorial(balls) / (bowls ^ balls)
	if verbose
		@show states
		@show prob
	end
	init_probs = Float64[]
	for x in states
		if verbose print(x) end
		p = multiStates[x] * prob
		for y in x
			p *= 1 / factorial(y)
		end
		if verbose print(" -> p: $p") end
		push!(init_probs, p)
		if verbose println() end
	end
	return states, init_probs
end
states, probs = get_states(5,2,verbose=true);