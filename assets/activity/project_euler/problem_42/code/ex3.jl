# This file was generated, do not modify it. # hide
conteggio = 0
println("Triangular words:")
for w in clean_text
	tot = 0
	for c in w
		tot += Int(c)-64 # for upper case c
	end
	if tot in triangles
		println(w)
		global conteggio += 1
	end
end