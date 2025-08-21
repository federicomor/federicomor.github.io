# Usando del codice:
sum_of_squares_100_nums = sum([i^2 for i in 1:100])
square_of_sum_100_nums = sum([i for i in 1:100])^2
println(Int64(square_of_sum_100_nums-sum_of_squares_100_nums))

# Mentre affidandoci alle formule matematiche più o meno note
# $$ \text{(sum of squares 1 to n)} = \sum_{i=1}^n i^2 = \dfrac{n(n+1)(2n+1)}{6} $$
# $$ \text{(sum 1 to n)} = \sum_{i=1}^n i = \dfrac{n(n+1)}{2} $$
# si ricava comunque la risposta:
f(n) = (n*(n+1)/2)^2 - n*(n+1)*(2n+1)/6
Int64(f(100))