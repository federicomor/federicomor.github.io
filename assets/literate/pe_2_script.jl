# This file was generated, do not modify it.

S = 0
fibs = [2 1]
while fibs[1] <= 4_000_000
	if iseven(fibs[1])
		global S += fibs[1]
	end
	fibs[1], fibs[2] = sum(fibs), fibs[1]
end
@show S

function fib_naive(n, depth = 0)
    println("| "^depth * "calcolo F($n)")
    n <= 2 && return n
    return fib_naive(n-1, depth + 1) + fib_naive(n-2, depth + 1)
end
fib_naive(7)

function fib_smart(n, memo = Dict{Int,Int}(), depth = 0)
    println("| "^depth * "calcolo F($n)")
    n <= 2 && return n
    if haskey(memo, n)
        println("| "^depth * "ce l'avevo già salvato!")
        return memo[n]
    else
        memo[n-1] = fib_smart(n-1, memo, depth + 1)
        memo[n-2] = fib_smart(n-2, memo, depth + 1)
    end
    return memo[n-1] + memo[n-2]
end
fib_smart(7)
