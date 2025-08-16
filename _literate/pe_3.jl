# Qui propongo tre metodi: il primo _one-liner_ sfruttando le potenzialità offerte da Julia (moralmente, la libreria Primes); il secondo usando il primo metodo che (credo) verrebbe in mente, ma risulta molto costoso, inefficiente; il terzo una versione sempre a mano ma più ottimizzato e ragionato.

n_test = 131956268 # giusto un numero di test

# **Metodo one-liner**: usando le potenzialità di Julia.
using Primes
@time maximum(keys(factor(n_test)))
#-
# **Metodo naive** (il primo che verrebbe in mente): scorriamo dal più alto candidato fattore primo (ovvero $n/2$) a scendere, e ci fermiamo appena troviamo il primo, dato che stiamo scorrendo verso il basso e quindi il primo che incontriamo sarà di certo quello massimo. 
function find_max_pfactor_naive(n)
	lim_initial = div(n,2)
	for i in lim_initial:-1:1
		if isprime(i) && n%i == 0
			@show i
			break
		end
	end
end
@time find_max_pfactor_naive(n_test)

# **Metodo efficiente:** scorriamo sui numeri $i$ da 2 a salire, e se questi dividono il numero target $n$ allora trasformiamo $n$ come $n/i$ per tutte le volte possibili, ovvero finché non esauriamo l'esponente di quel fattore primo $i$. Quando $n$ sarà diventato uguale a 1 vorrà dire che avremo trovato il fattore primo più grande, dato che sarà l'ultimo per cui potremo dividere $n$.
function find_max_pfactor_fast(n)
	i = 1
	while n != 1
		i += 1
		if n % i == 0
			println("n=$(rpad(n,20)) -> $i è un fattore primo di n")
			while n % i == 0
				n = n/i
			end
		end
	end
	println("n = $(rpad(Int64(n),20)) -> finito!")
	println("$i è il più alto fattore primo di n")
end
@time find_max_pfactor_fast(n_test)


# E quindi la vera soluzione è
@time find_max_pfactor_fast(600851475143)
