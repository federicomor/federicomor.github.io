# This file was generated, do not modify it. # hide
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