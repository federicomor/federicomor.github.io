+++
title = "Tennis tie-break probability"
hascode = true
hasplotly = true
+++

### Tennis tie-break probability

<!-- {{ calcoli /assets/img/tennis.jpg }} -->
{{ youtube https://youtu.be/ra9LTkehYk4 }}

Siamo in una partita di tennis... i due giocatori A e B sono arrivati 6-6 e ora tutto si deciderà al tie-break... durante la partita, da bravi (ingegneri) matematici, siamo riusciti a stimare due parametri $a$ e $b$ che descrivono le probabilità, per il giocatore A, di vincere un punto quando lui è al servizio o quando B è al servizio, rispettivamente... ma eccoci, il giocatore A si sta apprestando a iniziare il tie-break! sarà lui infatti a iniziare a servire per primo... 

Dato questo contesto e questi dati, qual è la probabilità che il giocatore A vinca il tie-break?

### Soluzione
Da raccontare a parole è molto lunga, quindi vi suggerisco caldamente il video molto dettagliato. L'idea è comunque intanto di decomporre l'evento vittoria nei possibili casi in cui può manifestarsi, ovvero
$$
\begin{align*}
\prob(\text{vincere}) &= \prob(\text{vincere 7-0}) + \prob(\text{vincere 7-1}) + \ldots + \prob(\text{vincere 7-5}) +\\
& + \prob(\text{vincere 8-6}) + \prob(\text{vincere 9-7}) + \ldots\\
\prob(\text{vincere}) &= \prob(\text{vincere 7-0}) + \prob(\text{vincere 7-1}) + \ldots + \prob(\text{vincere 7-5}) + \\
&+\prob(\text{arrivare 6-6})\prob(\text{vincere da 6-6})
\end{align*}
$$
e poi di studiare ogni termine lavorando con la distribuzione Binomiale. Infatti, una variabile aleatoria $X$ ha legge Binomiale di parametri $n$ e $p$ (e scriviamo $X\sim\text{Bin}(n,p)$) quando $X$ conta il numero di successi che otteniamo quando replichiamo per $n$ volte un esperimento che può avere esito di successo con probabilità pari a $p$. Quindi l'idea è di trattare $n$ come il numero di volte in cui un giocatore è al servizio o in risposta, mentre $p$ come la probabilità dell'evento di "successo", ovvero vincere il punto, ovvero i parametri $a$ o $b$. 

a bb aa bb
Per esempio, per vincere 7-0, il giocatore A deve vincere tutti i punti, dei quali 3 sono quando lui è al servizio mentre 4 quando B è al servizio. Usando quindi la legge binomiale, che ha densità di probabilità $p_X(k) = \prob(X=k) = \tbinom{n}{k}p^k(1-p)^{n-k}$, si ricava che
$$
\begin{align*}
\prob(\text{vincere 7-0}) &= \prob(\text{vincere 3 punti su 3 di quando A è al servizio}) + \\ 
&+ \prob(\text{vincere 4 punti su 4 di quando B è al servizio}) \\
&= \binom{3}{3}a^3 \binom{4}{4}b^4 = a^3 b^4
\end{align*}
$$

Ovviamente questo era il caso facile. Gli altri sono un po' più complicati (c'è da separare il fatto di arrivare a 6 e poi fare l'ultimo punto vincente, e c'è da capire in quanti modi possono distribuirsi i punti per poter vincere con un certo punteggio) ma seguono la stessa logica.

L'ultimo termine segue invece un calcolo interessante, tramite una definizione ricorsiva. Infatti, pensando all'evento (vincere da 6-6) come in generale un evento del tipo (vincere dal pareggio), abbiamo che
$$
\begin{align*}
\prob(\text{vincere dal pareggio}) &= \prob(\text{vincere i due punti successivi}) +\\ &+ \prob(\text{tornare al pareggio})\prob(\text{vincere dal pareggio})
\end{align*}
$$

dove quindi si può ricavare $\prob(\text{vincere dal pareggio})$ da questa sua definizione ricorsiva. Assemblando tutti i pezzi si arriva alle parti che ora seguono (codice e grafici). Ad esempio si nota come all'aumentare di $a$ e $b$ aumentano anche le probabilità di vittoria, come è naturale che sia.

\input{julia}{/assets/scripts/tennis_tiebreak_prob.jl} 
Il grafico che segue mostra la probabilità di vittoria per il giocatore A, indicata come valori sull'asse $z$, in funzione dei parametri $a$ e $b$ posti sugli assi $x$ e $y$.
\fig{/assets/scripts/output/tennis_surface.json}
\fig{/assets/scripts/output/tennis_contourf.json}

Notiamo anche come il tie-break, in cui il primo a servire fa solo un servizio e poi dal primo punto in poi ci si alterna due servizi a testa (quindi la sequenza di battute sarebbe ABBAABBAA...), ha questa apparentemente strana regola che in realtà funziona benissimo. Infatti il tie-break in questo modo è equo: chiunque cominci al servizio non ha un vantaggio a priori. Questo lo si vede anche dai calcoli (naturalmente 😉), in cui leggendo il calcolo dalla prospettiva di B, simulando quindi che sia lui a servire per primo e quindi invertendo i parametri $a$, e $b$, otterremo le stesse probabilità di vittoria.

Usando i numeri decimali classici (i Float64) sembra che escano valori diversi; ma in realtà sono solo dovuti ad approssimazioni numeriche: passando ad una rappresentazione più precisa (i BigFloat) tutto torna.
```julia-repl
julia> ptiebreak(0.60,0.70)
0.8881752145777776

julia> ptiebreak(0.70,0.60)
0.8881752145777777

julia> ptiebreak(BigFloat(0.60),BigFloat(0.70))
0.8881752145777777236370136878239485198844074151971728203443474502251501326155067

julia> ptiebreak(BigFloat(0.70),BigFloat(0.60))
0.8881752145777777236370136878239485198844074151971728203443474502251501326155067
```

A questo punto magari vi chiederete: ma perché allora in informatica non si usano sempre i BigFloat o comunque queste rappresentazioni più precise? La risposta è sia perché ok sono più precise ma molto più dispensiose, in termini di memoria e tempo di esecuzione,
```julia-repl
julia> @time ptiebreak(BigFloat(0.60),BigFloat(0.70))
  0.012136 seconds (15.61 k allocations: 573.875 KiB)
0.8881752145777777236370136878239485198844074151971728203443474502251501326155067

julia> @time ptiebreak(0.60,0.70)
  0.000018 seconds (6 allocations: 576 bytes)
0.8881752145777776
```
e sia perché la precisione base in genere è sufficiente, non ci sono infatti molti scenari in cui i calcoli effettuati da un computer devono avere un così alto livello di precisione.

{{ addcomments }}

