# This file was generated, do not modify it. # hide
begin
	bowls = 4
	balls = 3
	println("Working with $bowls bowls and $balls balls.")
	println("All states and minimal representations:")
	for v in get_all_states(bowls,balls)
		println(v," => ", min_state(v))
	end
	println("Initial probabilities:")
	states, init_probs = get_states(bowls, balls,verbose=false)
	for i in 1:length(states)
		println(states[i], " => ", init_probs[i])
	end
end