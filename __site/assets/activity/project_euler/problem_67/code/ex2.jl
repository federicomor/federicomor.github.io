# This file was generated, do not modify it. # hide
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