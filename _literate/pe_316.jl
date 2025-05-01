using LinearAlgebra

function g(n)
	# derive state space size
	d = length(digits(n)) - 1 + 1 # formally, minus last digit plus "useless" digit

	# create Q
	Q = zeros(Rational,d,d)
	Q[1,1] = 9
	Q[diagind(Q,1)] .= 1
	Q[2:end-1,2] .= 1
	Q[end,1] = 9
	Q[2:end,1] .= 9
	Q[2,1] = 8
	Q .//= 10 # shorthand for Q = Q * 1//10
	
	# solve for hitting times k
	h = (I(d)-Q) \ ones(Rational,d)

	# derive the answer
	# return h[1]*9/10 + h[2]*1/10 # this if we want the mean hitting time
	# but actually the problem asks the starting index of the sequence pₖ for which we get n
	return (h[1])*9/10 + h[2]*1/10

end
g(535)
sum(g(n) for n in Int.([floor(10^6/m) for m in 2:999]))