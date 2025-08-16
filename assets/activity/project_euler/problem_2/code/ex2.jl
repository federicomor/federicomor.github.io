# This file was generated, do not modify it. # hide
function fib_naive(n, depth = 0)
    println("| "^depth * "calcolo F($n)")
    n <= 2 && return n
    return fib_naive(n-1, depth + 1) + fib_naive(n-2, depth + 1)
end
fib_naive(7)