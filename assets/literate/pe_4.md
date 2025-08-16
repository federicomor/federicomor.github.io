<!--This file was generated, do not modify it.-->
Qui basta convertire la richiesta in sintassi di Julia: ci interessa il più alto numero palindromo $n$ ottenuto come il prodotto di due numeri $i$ e $j$ da tre cifre, quindi possiamo fare un loop con $i$ e $j$ sul range dei numeri da 3 cifre e controllare se il loro prodotto è palindromo e se è maggiore del candidato trovato finora (dato che ci interessa trovare il massimo numero che soddisfa questi criteri). Il controllo sull'essere palindromo si può fare confrontando la stringa del numero con sè stessa invertita (tipo 121 è uguale a 121, mentre 123 è diverso da 321).

````julia:ex1
max_n = 1 # n=i*j
max_i = 1; max_j = 1

for i in 100:998
	for j in (i+1):999
		n = i*j
		if string(n) == reverse(string(n)) && n>max_n
			global max_n = n
			global max_i = i; global max_j = j
		end
	end
end
@show max_n, max_i, max_j
````

