# This file was generated, do not modify it. # hide
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