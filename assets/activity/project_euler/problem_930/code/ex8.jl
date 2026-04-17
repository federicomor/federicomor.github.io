# This file was generated, do not modify it. # hide
# check if a state is absorbing
function is_absorbing(state::Vector)
	return sum(state .== 0) == length(state)-1
end

states, probs = get_states(4,2)
for st in states
	println(st, " -> is_absorbing? ", is_absorbing(st))
end