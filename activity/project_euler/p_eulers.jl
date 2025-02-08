# Find the difference between 
# - the sum of the squares (A)
# - and the square of the sum (B)
# of the first one hundred natural numbers
# quindi B-A

# one liner
D = (sum([i for i in 1:100]))^2 - sum([i^2 for i in 1:100])

# a mano
cur_sum = 0
cur_sum_sq = 0
for i in 1:100
	cur_sum += i
	cur_sum_sq += i^2
end
D = cur_sum^2 - cur_sum_sq


# metodo matematico
# D = (∑i)^2 - (∑i^2)
n = 100
D = ( n*(n+1)/2 )^2 - n*(n+1)*(2n+1)/6