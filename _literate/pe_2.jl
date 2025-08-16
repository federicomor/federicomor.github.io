# Qui l'idea è di generare, in qualche modo, in numeri di Fibonacci fino a quattro milioni, e filtrare quelli pari per sommarli ad S. La parte interessante è come generare i numeri della sequenza di Fibonacci: un primo modo è di aggiornarli _in place_, cioè direttamente nel codice, come fa la linea `fibs[1], fibs[2] = sum(fibs), fibs[1]`. Altrimenti potremmo affidarci a delle funzioni, che calcolano l'$n$-esimo numero di Fibonacci. La creazione di questa funzione nella forma immediata è molto inefficiente, mentre in quella veloce è ottimizzata conservando i valori creati e richiamandoli per i futuri calcoli.  
S = 0
fibs = [2 1]
while fibs[1] <= 4_000_000
	if iseven(fibs[1])
		global S += fibs[1]
	end
	fibs[1], fibs[2] = sum(fibs), fibs[1]
end
@show S


# Se volessimo invece appoggiarci a delle funzioni, per generare i numeri della sequenza, queste sarebbero due possibili definizioni (scritte in forma didattica, con le varie print e il parametro depth per mostrare cosa accade materialmente quando le eseguiamo):
function fib_naive(n, depth = 0)
    println("| "^depth * "calcolo F($n)")
    n <= 2 && return n
    return fib_naive(n-1, depth + 1) + fib_naive(n-2, depth + 1)
end
fib_naive(7)
#-
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
