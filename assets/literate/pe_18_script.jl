# This file was generated, do not modify it.

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

for i in 1:R
	for j in 1:C
		print(rpad(Msum[i,j],5, " "))
	end
	println()
end

@show maximum(Msum[end,:])

cfr = maximum(Msum[end,:])
# se siamo in fondo il target è il massimo valore, la somma più alta
j_focus = argmax(Msum[end,:])
for i in R:-1:1
	if i<R
		global cfr = cfr - M[i+1,j_focus]
		# altrimenti il target diventa la somma parziale meno il numero che c'era in M
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

parent = zeros(Int,R, C)
for i in 2:R
    for j in 1:i
        if j == 1
            Msum[i,j] = Msum[i-1,j] + M[i,j]
            parent[i,j] = j
		# sciogliamo il max tra i due casi per aggiornare correttamente parent
        elseif j == i
            Msum[i,j] = Msum[i-1,j-1] + M[i,j]
            parent[i,j] = j-1
        else
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
