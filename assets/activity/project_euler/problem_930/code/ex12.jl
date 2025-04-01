# This file was generated, do not modify it. # hide
for i in 1:size(P)[1]
	P[i,:] = P[i,:]/sum(P[i,:])
end
P ## dopo