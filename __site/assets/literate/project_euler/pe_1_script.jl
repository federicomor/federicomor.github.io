# This file was generated, do not modify it.

sum_to_n(n) = n*(n+1)/2 # o anche solo sum(collect(1:n))
S = 3*sum_to_n(333) + 5*sum_to_n(199) - 15*sum_to_n(66)

# one-liner
sum([i for i in 1:999 if (i%3==0 || i%5==0)])

# simulazione estesa
S = 0
for i in 1:999
	if i%3 == 0 || i%5 == 0
		global S += i
	end
end
@show S
