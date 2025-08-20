# Nel caso 2x2, i possibili percorsi sono dati dagli anagrammi delle mosse che dobbiamo compiere, ovvero due verso il basso (sud, sud) e due verso destra (est, est). Quindi 
# $$ \text{# anagrammi SSEE} = \frac{4!}{2! \cdot 2!} = 6 $$
# Allo stesso modo, nel caso 20x20 avremo da calcolare gli anagrammi della parola S..SE..E
BigInt(factorial(big(40)) / (factorial(big(20)) * factorial(big(20))))
