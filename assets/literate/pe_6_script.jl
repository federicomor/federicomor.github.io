# This file was generated, do not modify it.

sum_of_squares_100_nums = sum([i^2 for i in 1:100])
square_of_sum_100_nums = sum([i for i in 1:100])^2
println(Int64(square_of_sum_100_nums-sum_of_squares_100_nums))

f(n) = (n*(n+1)/2)^2 - n*(n+1)*(2n+1)/6
Int64(f(100))
