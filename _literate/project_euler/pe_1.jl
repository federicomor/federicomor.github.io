# Formalmente, vorremo trovare
# $$
# S = \sum_{\substack{n \in [1,1000) \\ n \equiv 0 \text{ mod } (3,5)}} n = 3+5+6+9+10+12+\ldots + 999
# $$
# Quindi l'idea è che possiamo calcolare questa somma raccogliendo tutti i fattori di 3 e 5, ottenendo $3(1+2+\ldots+h)+5(1+2+\ldots+k)$, con $h$ e $k$ i limiti opportuni per ottenere un loro multiplo senza sforare 1000, quindi $h=333$ e $k=199$. In questo modo però staremmo contando due volte i multipli di 3 _e_ 5, come 15, 30, 45, ecc; quindi occorre correggere il calcolo sottraendo per i multipli di 15, ovvero $15(1+2+\ldots+r)$, dove il limite $r$ ora corrisponde a 66 (dato che $15\cdot66 = 990$ mentre $15\cdot 67 = 1005$). Dopodiché, si può calcolare $S$ applicando sulle varie somme la formuletta 
# $$
# \sum_{i=1}^n i = \frac{n(n+1)}{2}
# $$

# Questo esercizio si può quindi risolvere tranquillamente su carta, e questa sarebbe la sua formulazione equivalente in codice
sum_to_n(n) = n*(n+1)/2 # o anche solo sum(collect(1:n))
S = 3*sum_to_n(333) + 5*sum_to_n(199) - 15*sum_to_n(66)

# ma comunque ci si può ovviamente arrivare anche con approcci puramente informatici:
## one-liner
sum([i for i in 1:999 if (i%3==0 || i%5==0)])
#-
## simulazione estesa
S = 0
for i in 1:999
	if i%3 == 0 || i%5 == 0
		global S += i
	end
end
@show S