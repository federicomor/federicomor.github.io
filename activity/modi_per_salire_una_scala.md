+++
title = "Modi per salire una scala"
hascode = true
hasplotly = true
+++

### Modi per salire una scala
{{ youtube https://www.youtube.com/watch?v=HWJOsKOcUJk }}

In quanti modi si può salire una scala lunga $n$ gradini, potendo salire al massimo 2 scalini per volta? E salendone al massimo $k$ per volta?

> Problema ispirato da [https://plus.maths.org/content/its-long-way-top](https://plus.maths.org/content/its-long-way-top).

### Soluzione
Partiamo dal caso in cui possiamo fare al massimo due scalini per volta. Chiamando $S(n)$ questo numero di modi in funzione di $n$, risulta che la soluzione è data da
$$
S(n) = S(n-1) + S(n-2)
$$
perché moralmente come primo passo dobbiamo sempre fare un passo lungo 1 o lungo 2, indipendentemente da quanto la scala sia alta, e da quei passi poi possiamo osservare di fronte a noi una scala o alta $n-1$ o alta $n-2$ scalini, rispettivamente, e quindi riciclare i calcoli già fatti prima per le altre scale. Quindi è una formula ricorsiva, in cui i calcoli per $n$ più alti si appoggiano ai calcoli fatti per gli $n$ più bassi, dove come casi base abbiamo che una scala alta uno la possiamo salire in un solo modo, e quindi $S(1)=1$, mentre una scala alta due la possiamo salire in due soli modi, e quindi $S(2)=2$.

Mentre generalizzando il calcolo, supponendo cioè di avere un altro parametro $k$ che regola quanti scalini risuciamo a salire al massimo con un solo passo, la soluzione diventa
$$
S(n) = S(n-1) + S(n-2) + \ldots + S(n-k)
$$
dove però ora i vari valori $S(n-i)$ si devono trovare in modi a volte meno ovvi. Per capire tutto, insieme ad una semplice idea per convertire il calcolo in codice eseguibile da un computer vi rimando naturalmente al video.

\input{julia}{/assets/scripts/salendo_le_scale.jl}
\fig{/assets/scripts/output/scale.json}
<!-- rimuovere i commenti dai codici javascript, sembrano non farli funzionare-->

La scrittura della funzione in forma ricorsiva è utile, didattica, perché rispecchia la soluzione matematica che abbiamo trovato. Tuttavia, per una implementazione più efficiente c'è un altro modo, che al posto della ricorsione usa una tecnica un po' più avanzata (memoization) appartenente al mondo del "dynamic programming". L'idea è infatti che usando la ricorsione molti calcoli vengono ripetuti; in quest'altra versione invece i calcoli vengono salvati e riutilizzati.

```julia

function S_fast(n, k, memo=Dict{Tuple{Int, Int}, Int}())
	# casi base, come prima
	n==0 && return 0
	n==1 && return 1

	# se il risultato è stato già calcolato, ritornalo
	if haskey(memo, (n, k))
		return memo[(n, k)]
	end
	# altrimenti calcolalo...
	result = if n < k
		S(n, n, memo)
	elseif n == k
		S(n, k - 1, memo) + 1
	else
		sum(S(n - i, k, memo) for i in 1:k)
	end
	# ... e salvalo in memo
	memo[(n, k)] = result
	return result
end
```
```julia-repl
julia> @time S(32,5)
 19.574231 seconds
1333610936

julia> @time S_fast(32,5)
  0.000019 seconds (58 allocations: 4.156 KiB)
1333610936
```
~~~

<label for="inputN">n:</label>
<input type="number" id="inputN" min="1">
<label for="inputK">k:</label>
<input type="number" id="inputK" min="1">
<button onclick="calculate()">Calcola</button>
<div id="result"></div>
    
<script>
function S(n, k) {
    let dp = Array.from({ length: n + 1 }, () => Array(k + 1).fill(0));
    for (let j = 1; j <= k; j++) {
        dp[1][j] = 1;
    }
    for (let i = 2; i <= n; i++) {
        for (let j = 1; j <= k; j++) {
            if (i < j) {
                dp[i][j] = dp[i][i];
            } else if (i == j) {
                dp[i][j] = dp[i][j - 1] + 1;
            } else {
                dp[i][j] = 0;
                for (let m = 1; m <= j; m++) {
                    dp[i][j] += dp[i - m][j];
                }
            }
        }
    }
    return dp[n][k];
}

function calculate() {
    let n = parseInt(document.getElementById("inputN").value);
    let k = parseInt(document.getElementById("inputK").value);
    let result = S(n, k);
    document.getElementById("result").innerText = `Risultato: ${result}`;
}
</script>

~~~



{{ addcomments }}