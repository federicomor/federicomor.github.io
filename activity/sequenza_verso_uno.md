+++
title = "In cammino verso l'unità"
hascode = true
hasplotly = true
+++

### In cammino verso l'unità
Dato un numero $n$ qualunque, sottraetegli 1 se è dispari, mentre dividetelo per 2 se è pari. Quanti passi sono necessari per arrivare a 1?

Per capire meglio il problema prendete come riferimento gli esempietti che seguono, oppure sperimentate col box interattivo (sempre qui sotto).
```julia
2 → 1 # steps=1
3 → 2 → 1 # steps=2
4 → 2 → 1 # steps=2
5 → 4 → 2 → 1 # steps=3
10 → 5 → 4 → 2 → 1 # steps=4
20 → 10 → 5 → 4 → 2 → 1 # steps=5
30 → 15 → 14 → 7 → 6 → 3 → 2 → 1 # steps=7
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

~~~

<label for="numberInput">Scegli tu n:</label>
<input type="number" id="numberInput" min="1">
<button onclick="showSteps()">calcola</button>
<div id="outputSteps"></div>

<script>
function steps(n) {
    if (isNaN(n) || n < 1) {
        return;
    }
    let steps = 0;
    let result = `${n} `;
    while (n > 1) {
        if (n % 2 === 0) {
            n = n / 2; // Divide by 2 if even
        } else {
            n = n - 1; // Subtract 1 if odd
        }
        steps++;
        result += `-> ${n} `;
    }
    result += ` (passi totali: ${steps})`;
    return result;
}
function showSteps() {
    let n = parseInt(document.getElementById("numberInput").value);
    let result = steps(n);
    document.getElementById("outputSteps").innerText = `${result}`; 
}
</script>

~~~

~~~
<br>
~~~

Tuttavia, simulare questi passaggi (sottrarre 1 o dividere per 2) può diventare dispendioso per numeri molto alti: vorremo quindi trovare un modo che, dato un numero $n$, ci dia una risposta più immediata per il numero di passi necessari per arrivare a 1. Esiste quindi una "formula" generale, in funzione di $n$, che calcoli direttamente la soluzione?


### Soluzione


{{ addcomments }}