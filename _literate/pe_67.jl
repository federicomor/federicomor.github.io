# Stesso metodo del problema 18.
cont = readlines(download("https://projecteuler.net/resources/documents/0067_triangle.txt"))
L = length(cont)
M = zeros(Int,L,L)

for i in 1:L
	M[i,1:i] .= parse.(Int,split(cont[i]," "))
end
M[1:10, 1:10] # giusto un'occhiata
#-

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
@show maximum(Msum[end,:])
# Traceback:
parent = zeros(Int,R, C)
for i in 2:R
    for j in 1:i
        if j == 1
            Msum[i,j] = Msum[i-1,j] + M[i,j]
            parent[i,j] = j
		## sciogliamo il max tra i due casi per aggiornare correttamente parent 
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