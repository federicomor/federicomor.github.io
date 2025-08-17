# Qui l'idea è di vedere come si compone il numero definito, ottenuto concatenando tutti gli interi positivi, e considerare le cifre $d_1, d_{10}, d_{100}, \ldots$ quando le incontriamo. Per tenerne traccia, usiamo un cursore che si sposta di volta in volta, anche in base alla lunghezza del numero (se concateniamo 8 si sposterà di uno, se concateniamo 800 si sposterà di tre).

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