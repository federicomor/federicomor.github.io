# This file was generated, do not modify it. # hide
Q = P[2:end,2:end]
if size(Q)[1] > 1 # c'è davvero un sistema da risolvere
	k = (I(nstates-1)-Q)\ones(nstates-1) # metodo classico
	# k = bicgstabl(I(nstates-1)-Q, ones(nstates-1)) # biconjugate gradient method
else
	k = [1/(I(nstates-1)-Q)[1]]
end