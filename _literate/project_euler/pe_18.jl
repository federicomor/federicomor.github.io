# Impostiamo i numeri dentro alla matrice $M$. Ci interessa trovare al somma massima ottenibile percorrendo $M$ da cima a fondo e spostandoci con passi adiacenti. L'idea quindi è di partire dal numero in cima e scendere calcolando tutti i possibili valori che possiamo ottenere sommando quel numero ai numeri a lui adiacenti nella riga sotto, ovvero quello in basso a sinitra e quello in basso a destra (nella rappresentazione originale a triangolo). Di questi risultati, ci salviamo (in un'altra matrice $M_\text{sum}$) il massimo tra di loro, ovvero quando ad una cella possono contribuire diversi "percorsi" di somme selezioniamo quello che conduce alla somma più alta. Alla fine prendiamo il massimo valore che incontriamo sulla sua ultima riga: questo corrisponderà infatti al valore di somma massimo ottenibile.\
# L'idea funziona perché è come se filtrassimo di volta in volta l'informazione contenuta in M: se siamo alla riga 5 non ci interessano precisamente tutti i numeri nelle righe dalla 1 alla 4, ma piuttosto solo il loro effetto, cioè le somme più alte che loro sono riusciti a generare.

# Ad esempio, nel caso che segue partiamo con la matrice $M$ che nella prima riga contiene il numero 75. La seconda riga di $M_\text{sum}$ conterrà quindi 75+95 e 75+64, senza troppi pensieri. La terza riga diventa ora interessante perché si aprono diversi percorsi. Ad esempio, nella prima cella di $M_\text{sum}$ mettiamo il massimo tra 75+95+17 (il percorso sempre dritto verso il basso) e 75+64+17 (il percorso che al secondo step devia verso destra). Allo stesso modo si procede nelle altre celle.
M =[
75 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
95 64 00 00 00 00 00 00 00 00 00 00 00 00 00 
17 47 82 00 00 00 00 00 00 00 00 00 00 00 00 
18 35 87 10 00 00 00 00 00 00 00 00 00 00 00
20 04 82 47 65 00 00 00 00 00 00 00 00 00 00
19 01 23 75 03 34 00 00 00 00 00 00 00 00 00
88 02 77 73 07 63 67 00 00 00 00 00 00 00 00
99 65 04 28 06 16 70 92 00 00 00 00 00 00 00
41 41 26 56 83 40 80 70 33 00 00 00 00 00 00
41 48 72 33 47 32 37 16 94 29 00 00 00 00 00
53 71 44 65 25 43 91 52 97 51 14 00 00 00 00
70 11 33 28 77 73 17 78 39 68 17 57 00 00 00
91 71 52 38 17 14 91 43 58 50 27 29 48 00 00
63 66 04 68 89 53 67 30 73 16 69 87 40 31 00
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
]

R, C = size(M)
Msum = copy(M)

@time for i in 2:R
	for j in 1:C
		if j==1
			Msum[i,j] = Msum[i-1,j] + M[i,j]
		else
			Msum[i,j] = max(Msum[i-1,j] + M[i,j], Msum[i-1,j-1] + M[i,j])
		end
	end
end
#-
for i in 1:R
	for j in 1:C
		print(rpad(Msum[i,j],5, " "))
	end
	println()
end
#-
@show maximum(Msum[end,:])

# Possiamo anche provare a ricostruire il percorso della soluzione scorrendo $M_\text{sum}$ dal basso verso l'alto e cofrontandola con $M$.
cfr = maximum(Msum[end,:])
## se siamo in fondo il target è il massimo valore, la somma più alta 
j_focus = argmax(Msum[end,:])
for i in R:-1:1
	if i<R
		global cfr = cfr - M[i+1,j_focus] 
		## altrimenti il target diventa la somma parziale meno il numero che c'era in M
		global j_focus = findfirst(x -> x==cfr, Msum[i,:])
	end
	for j in 1:C
		if j==j_focus
			print(rpad("[$(M[i,j])]",7, " "))
		else
			print(rpad(M[i,j],7, " "))
		end
	end
	println()
end
# Dicevo "provare" perché questo metodo a volte può sbagliare, dato che opera su confronti aritmetici, che possono risultare ambigui in caso ci siano più numeri che soddisfano la condizione. Perciò occorre invece aggiornare la funzione sopra che assembla la soluzione per tenere anche traccia dei predecessori usati nel percorso ottimale.
parent = zeros(Int,R, C)
for i in 2:R
    for j in 1:i
        if j == 1
            Msum[i,j] = Msum[i-1,j] + M[i,j]
            parent[i,j] = j
        else
			## sciogliamo il max tra i due casi per aggiornare correttamente parent 
            if Msum[i-1,j] > Msum[i-1,j-1]
                Msum[i,j] = Msum[i-1,j] + M[i,j]
                parent[i,j] = j
            else
                Msum[i,j] = Msum[i-1,j-1] + M[i,j]
                parent[i,j] = j-1
            end
        end
    end
end
j_focus = argmax(Msum[end, :])
path = Int[]
path_indices = zeros(Int,R)
for i in R:-1:1
	push!(path, M[i,j_focus])
    global path_indices[i] = j_focus
    global j_focus = parent[i,j_focus]
end
@show path sum(path)
#-
for i in 1:R
    for j in 1:i
        if j == path_indices[i]
            print(rpad("[$(M[i,j])]",5," "))
        else
            print(rpad(M[i,j],5," "))
        end
    end
    println()
end