# This file was generated, do not modify it. # hide
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