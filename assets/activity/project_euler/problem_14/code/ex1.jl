# This file was generated, do not modify it. # hide
function simple_collatz(n; verbose=false)
	steps = 1
	if verbose println("(step=$steps) $n") end
	while true
		if iseven(n)
			n = div(n,2)
		else
			n = 3n+1
		end
		steps += 1

		if verbose println("(step=$steps) $n") end
		if n==1
			break
		end
	end
	return steps
end
simple_collatz(50, verbose=true)