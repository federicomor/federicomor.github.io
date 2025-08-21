<!--This file was generated, do not modify it.-->
Questo si può fare in realtà tranquillamente su carta. Questo numero target $n$ vogliamo che sia divisibile per ogni numero da 1 a 20, ma se ad esempio è divisibile per 8 di sicuro sarà divisibile anche per 2 e 4. L'idea è quindi di filtrare i fattori più "vincolanti", ovvero quelli che necessariamente dovremo prendere rispetto invece ad altri che verranno implicati. Un altro esempio, se prendiamo un multiplo di 2 e 5 allora possiamo ignorare 10, dato che sarà implicato.\
Ragionando in questo modo si arriva a questo schema, che contiene i singoli fattori candidati, da 1 a 20 (partendo dall'alto per prendere subito quelli più vincolanti), seguiti da un commento e da quelli che via via ci salviamo.
\[
\begin{array}{rcll}
19 &                 & \text{manca}   & \implies 19 \\
18 & = 3^2 \cdot 2   & \text{mancano} & \implies 19, 3^2, 2 \\
17 &                 & \text{manca}   & \implies 19, 17, 3^2, 2 \\
16 & = 2^4           & \text{aggiorniamo l'esponente del 2} & \implies 19, 17, 3^2, 2^4 \\
15 & = 3             & \text{c'è già} & \\
14 & = 2\cdot 7      & \text{manca il 7} & \implies 19, 17, 7, 3^2, 2^4 \\
13 &                 & \text{manca}   & \implies 19, 17, 13, 7, 3^2, 2^4 \\
12 & = 2^2 \cdot 3   & \text{c'è già tutto} & \\
11 &                 & \text{manca}   & \implies 19, 17, 13, 11, 7, 3^2, 2^4 \\
10 & = 2 \cdot 5     & \text{manca il 5} & \implies 19, 17, 13, 11, 7, 5, 3^2, 2^4 \\
 9 & = 3^2           & \text{c'è già tutto} & \\
 8 & = 2^3           & \text{c'è già tutto} & \\
 7 &                 & \text{c'è già tutto} & \\
 6 &                 & \text{c'è già tutto} & \\
 5 &                 & \text{c'è già tutto} & \\
 4 &                 & \text{c'è già tutto} & \\
 3 &                 & \text{c'è già tutto} & \\
 2 &                 & \text{c'è già tutto} & \\
\end{array}
\]
Quindi la risposta è $ n = 19\cdot 17\cdot 13\cdot 11\cdot 7\cdot5\cdot 3^2\cdot 2^4 $ ovvero

````julia:ex1
19 * 17 * 13 * 11 * 7 * 5 * 3^2 * 2^4
````

