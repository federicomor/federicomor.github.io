# This file was generated, do not modify it. # hide
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