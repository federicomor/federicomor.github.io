# This file was generated, do not modify it.

P = 1 # risposta, il prodotto da calcolare
cursore = 0 # puntatore alla cifra corrente
n = 1 # variabile su cui scorriamo per definire il decimale
stops = 10 .^ [0,1,2,3,4,5,6] # posti in cui fermarsi a prendere dₙ
while cursore < 10^6
	cifre = reverse(digits(n))
	for i in 1:length(cifre)
		global cursore += 1
		if cursore in stops
			println("La cifra $cursore-esima era $(cifre[i])")
			global P = P * cifre[i]
		end
	end
	global n += 1
end
@show P
