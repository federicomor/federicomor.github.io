+++
title = "Tennis tie-break probability"
hascode = true
hasplotly = true
+++

### Tennis tie-break probability

<!-- {{ calcoli /assets/img/tennis.jpg }} -->
{{ youtube https://youtu.be/ra9LTkehYk4 }}

Siamo in una partita di tennis... i due giocatori A e B sono arrivati 6-6 e quindi questo set decisivo dovrà decidersi con un tie-break... durante la partita, da bravi (ingegneri) matematici, siamo riusciti a stimare due parametri $a$ e $b$ che descrivono le probabilità, per il giocatore A, di vincere un punto quando lui è al servizio o quando B è al servizio, rispettivamente... ma eccoci, il giocatore A si sta apprestando a iniziare il tie-break! sarà lui infatti a iniziare a servire per primo... 

Dato questo contesto e questi dati, qual è la probabilità che il giocatore A vinca il tie-break?

### Soluzione
Da raccontare a parole è molto lunga, quindi vi suggerisco caldamente il video molto dettagliato. L'idea è comunque è intanto di decomporre l'evento vittoria nei possibili casi in cui può manifestarsi, ovvero
$$
P(\text{vincere}) = P(\text{vincere 7-0}) + P(\text{vincere 7-1}) + \ldots + P(\text{vincere 7-5}) + P(\text{arrivare 6-6})P(\text{vincere da 6-6})
$$
e poi di studiare ogni termine lavorando con la distribuzione Binomiale. Infatti, una variabile aleatoria $X$ ha legge Binomiale di parametro $p$ (e scriviamo $X\sim\text{Bin}(n,p)$) quando $X$ conta il numero di successi che otteniamo quando replichiamo per $n$ volte un esperimento che può avere esito di successo con probabilità pari a $p$. Quindi l'idea è di trattare $n$ come il numero di volte in cui un giocatore è al servizio o in risposta, mentre $p$ come la probabilità dell'evento di "successo", ovvero vincere il punto, ovvero i parametri $a$ o $b$.

\input{julia}{/assets/scripts/tennis_tiebreak_prob.jl} 
Il grafico che segue mostra la probabilità di vittoria per il giocatore A, come valori sull'asse $z$, in funzione dei parametri $a$ e $b$ (posti sugli assi $x$ e $y$).
\fig{/assets/scripts/output/tennis_surface.json}
\fig{/assets/scripts/output/tennis_contourf.json}

{{ addcomments }}

