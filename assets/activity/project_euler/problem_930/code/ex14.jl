# This file was generated, do not modify it. # hide
Q = P[2:end,2:end]
# k = (I(nstates-1)-Q)\ones(nstates-1) # metodo classico
k = bicgstabl(I(nstates-1)-Q, ones(nstates-1))