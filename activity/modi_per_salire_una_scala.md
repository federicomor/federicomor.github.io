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
Chiamando $S(n)$ questo numero di modi in funzione di $n$, risulta che la soluzione è data da
$$
S(n) = S(n-1) + S(n-2)
$$
perché moralmente come primo passo dobbiamo sempre fare un passo lungo 1 o lungo 2, indipendentemente da quanto la scala sia alta, e da quei passi poi possiamo osservare di fronte a noi una scala alta $n-1$ ed $n-2$ scalini, rispettivamente, e quindi riciclare i calcoli già fatti prima per le altre scale.

Mentre generalizzando il calcolo, supponendo cioè di avere un altro parametro $k$ che regola quanti scalini risuciamo a salire al massimo con un solo passo, la soluzione diventa
$$
S(n) = S(n-1) + S(n-2) + \ldots + S(n-k)
$$
dove però ora i vari valori $S(n-i)$ si devono trovare in modi a volte meno ovvi. Per capire tutto, insieme ad una semplice idea per convertire il calcolo in codice eseguibile da un computer vi rimando naturalmente al video.

\input{julia}{/assets/scripts/salendo_le_scale.jl}
\fig{/assets/scripts/output/scale.json}
<!-- rimuovere i commenti dai codici javascript, sembrano non farli funzionare-->
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



