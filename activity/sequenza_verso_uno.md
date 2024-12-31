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
<!-- <label for="inputK">k:</label> -->
<!-- <input type="number" id="inputK" min="1"> -->
<button onclick="calculate()">Calcola</button>
<div id="result"></div>
    
<script>
function S(n, k) {
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

function calculate() {
    let n = parseInt(document.getElementById("inputN").value);
    // let k = parseInt(document.getElementById("inputK").value);
    let result = S(n);
    document.getElementById("result").innerText = `${result}`;
}
</script>

~~~

~~~
<br>
~~~

Tuttavia, simulare questi passaggi (sottrarre 1 o dividere per 2) può diventare dispendioso per numeri molto alti: vorremo quindi trovare un modo che, dato un numero $n$, ci dia una risposta più immediata per il numero di passi necessari per arrivare a 1. Esiste quindi una "formula" generale, in funzione di $n$, che calcoli direttamente la soluzione?


### Soluzione


{{ addcomments }}