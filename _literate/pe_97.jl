# Il problema ci chiede di trovare le ultime 10 cifre di $28433 \cdot 2^{7830457} + 1$. In Julia basta una riga:
(powermod(2,7830457,10^10) * 28433 + 1) % 10^10

# dove il modulo $10^{10}$ indica che vogliamo filtrare solo le ultime 10 cifre. Questa soluzione molto comoda e veloce si appoggia all funzione `powermod`, che si occupa proprio di calcolare in modo efficiente delle potenze quando però non ci interessa il numero esatto ma piuttosto solo il risultato modulo un qualche altro numero, in questo caso $10^{10}$.

# Se non volessimo appoggiarci troppo alle funzioni built-in, allora un'implementazione a mano e immediata sarebbe la seguente: 
function my_powermod(x, p, m)
    result = 1
    base = mod(x, m)
    exp = p
    while exp > 0
        result = mod(result * base, m)
        exp -= 1
    end
    return result
end
# che ovviamente funziona ma risulta più lenta di quella ufficiale presente in Julia, che infatti usa un metodo più efficace per calcolare le potenze (l'[Exponentiation by squaring](https://simple.wikipedia.org/wiki/Exponentiation_by_squaring)).
@time my_powermod(2,7830457,10^10)
#-
@time powermod(2,7830457,10^10)
#-