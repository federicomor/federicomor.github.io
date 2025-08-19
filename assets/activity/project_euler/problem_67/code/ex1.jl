# This file was generated, do not modify it. # hide
cont = readlines(download("https://projecteuler.net/resources/documents/0067_triangle.txt"))
L = length(cont)
M = zeros(Int,L,L)

for i in 1:L
	M[i,1:i] .= parse.(Int,split(cont[i]," "))
end
M[1:10, 1:10] # giusto un'occhiata