# This file was generated, do not modify it. # hide
sum_of_squares_100_nums = sum([i^2 for i in 1:100])
square_of_sum_100_nums = sum([i for i in 1:100])^2
println(Int64(square_of_sum_100_nums-sum_of_squares_100_nums))