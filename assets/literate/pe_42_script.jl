# This file was generated, do not modify it.

triangles = [1/2*n*(n+1) for n in 1:20]

text = readlines(download("https://projecteuler.net/resources/documents/0042_words.txt"))[1]
clean_text = replace.(split(text,","),"\"" => "")
clean_text[1:10] # giusto un'occhiata

conteggio = 0
println("Triangular words:")
for w in clean_text
	tot = 0
	for c in w
		tot += Int(c)-64 # for upper case c
	end
	if tot in triangles
		println(rpad(w,15), " value: $tot")
		global conteggio += 1
	end
end

@show conteggio
