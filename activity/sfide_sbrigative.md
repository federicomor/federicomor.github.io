+++
title = "Sfide sbrigative"
hascode = true
hasplotly = true
+++

## Sfide sbrigative
Nella cittadina di Discrezione i duelli sono raramente fatali: ogni sfidante arriva a un momento casuale tra le 5:00 e le 6:00 del mattino, del giorno stabilito per il duello, e se ne va esattamente 5 minuti dopo, onorando così il proprio impegno, a meno che 	l’altro sfidante non arrivi durante questo intervallo di tempo. In tal caso, i due si affrontano in un vero scontro.
Qual è la probabilità che un duello finisca in uno scontro?

## Soluzione

```julia-repl
julia> function simula_sfide(n)
       prob = 0.
       for _ in 1:n
       	   # rand() genera un numero casuale tra 0 e 1
       	   # quindi il *60 lo scala nell'intervallo [0,60]
           x = rand()*60
           y = rand()*60
           prob += abs(x-y)<=5
       end
       return prob/n
       end
simula_sfide (generic function with 1 method)

julia> simula_sfide(100_000)
0.15971

julia> 23/144
0.1597222222222222
```