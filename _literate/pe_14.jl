# Potremmo semplicemente scorrere sui numeri da uno a un milione, usare questa funzione per generare la sequenza di numeri prodotti, e guardare il numero che produce quella più lunga.
function simple_collatz(n; verbose=false)
	steps = 1
	if verbose println("(step=$steps) $n") end
	while true
		if iseven(n)
			n = div(n,2) 
		else
			n = 3n+1
		end
		steps += 1

		if verbose println("(step=$steps) $n") end
		if n==1
			break
		end
	end
	return steps
end
simple_collatz(50, verbose=true)
#-
# E quindi fare così: 
max_len = 1
max_idx = 1
@time for i in 1:1_000_000
	cur_len = simple_collatz(i)
	if cur_len > max_len
		global max_len = cur_len
		global max_idx = i
	end
end
@show max_len, max_idx
#-
# Questo metodo in effetti funziona, ma diventerebbe molto lento se il limite fosse ben più alto di un milione. In tal caso, l'idea sarebbe di passare ad una versione ricorsiva: per calcolare la lunghezza della sequenza generata, ad esempio, da 50, consideriamo $1 + $ la lunghezza della sequenza generata dal numero a cui conduce 50, ovvero 25. Se questo valore ci è già noto lo usiamo, altrimenti lo calcoliamo e ce lo salviamo (se c'è una cella disponibile per lui nell'array di appoggio, altrimenti lo calcoliamo al volo e basta) in modo che sarà eventualmente utile al calcolo della lunghezza delle sequenze generate dai numeri successivi.
function collatz(n, lens; verbose=false)
    if n <= length(lens) && lens[n] != 0
        if verbose println("    lui ci conduce a $n che sappiamo già produrre una sequenza lunga $(lens[n])") end
        return lens[n]
    end

    if verbose println("Incontriamo $n per la prima volta, continuiamo con la ricorsione") end
    nextn = iseven(n) ? div(n,2) : 3n+1
    val = 1 + collatz(nextn, lens; verbose=verbose)

    if n <= length(lens)
        lens[n] = val
    end
    return val
end


# Esempio didattico:
lens = zeros(Int, 20)
lens[1] = 1
for i in 2:20
    collatz(i, lens; verbose=true)
end

#- 
# Vera soluzione:
lens = zeros(Int, 1_000_000)
lens[1] = 1
for i in 2:1_000_000
    collatz(i, lens)
end
#-
risp = findmax(lens)
@show risp
#-
println("La catena più lunga parte da n=$(risp[2]) ed è lunga $(risp[1])")