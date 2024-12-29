+++
title = "Testando la resistenza delle uova"
hascode = true
hasplotly = true
+++

## Testando la resistenza delle uova
Immaginate di essere un allevatore che, incrociando varie razze di gallina, è riuscito ad ottenerne una che depone delle uova particolarmente forti. Volete quindi testare di preciso quanto siano resistenti queste uova, e per farlo decidete di lanciarle dai vari piani di un edificio di 100 piani con l'obiettivo di trovare il piano più alto da cui un uovo può cadere senza rompersi.

Se aveste un solo uovo sapreste subito come fare: lanciate l'uovo dal primo piano, se non si rompe passate al secondo, se non si rompe ancora passate al terzo, poi al quarto, e così via, fino a incontrare il primo piano in cui si rompe (o non incontrarne nessuno nel caso in cui anche al 100esimo piano l'uovo non si rompa). Ci vorrebbero, nel caso peggiore, 100 lanci per trovare la soluzione. 

Ma ora supponiamo che voi abbiate 2 uova. Quale strategia utilizzereste ora per trovare la risposta in modo da minimizzare il caso peggiore del numero di lanci da effettuare?
Supponete infine di avere $k$ uova. Quale strategia utilizzereste, in questo caso (sempre per minimizzare il caso peggiore del numero di lanci da effettuare)?

\fig{/assets/img/gallina2_cut.png}

> Problema ispirato da [https://plus.maths.org/content/dropping-eggs](https://plus.maths.org/content/dropping-eggs).

## Soluzione
<!-- ~~~ 
<div class="solution" tabindex="0"><p>
~~~  -->

Chiamiamo "piano critico" il massimo piano da cui l'uovo può essere lanciato senza che si rompa. Il nostro obiettivo, meglio precisarlo, è trovare la strategia che individui questo piano critico minimizzando il _numero massimo di lanci_ da effettuare _nel caso peggiore_. 
<!-- Quindi ci interessa un metodo che sia robusto, ovvero che anche nel caso peggiore, in cui il piano critico si trovi ad un piano tale che con la mia strategia lo raggiungo dopo tante mosse) -->

Con due uova, un'idea semplice ed immediata sarebbe la seguente
> Lancio il primo uovo dal piano 25: se si rompe allora riparto col secondo uovo dal piano 1 a salire, se non si rompe passo al piano 50. Se lanciando dal 50 si rompe, allora riparto col secondo uovo dal piano 26 a salire; se non si rompe passo al piano 75. Se lanciando dal 75 si rompe, allora riparto col secondo uovo dal piano 51 a salire, altrimenti dal piano 76 a salire.

Questo garantirebbe un numero massimo di lanci da effettuare, nel caso peggiore, pari a 28 (si pensi al caso in cui il piano critico sia il 99, che costringerebbe a testare $25 \to 50 \to 75 \to 100 \to 76 \to 77 \to \ldots \to 98 \to 99$).

Questo metodo è quindi ancora lontano dall'essere ottimale; tuttavia suggerisce l'intuizione corretta: avendo più uova, possiamo permetterci di partire con dei test saltando diversi piani, ovvero investire il primo uovo per test più rischiosi (in quanto lanciandolo da piani più alti c'è rischio che si rompa) ma che riducano lo spazio di ricerca su cui poi impiegare il secondo uovo. 

Quando abbiamo un solo uovo, infatti, siamo costretti a testare ogni piano uno per volta, ottenendo così uno spazio di ricerca $[1,100]$. Quando invece abbiamo due uova, possiamo usare il primo per testare un piano ogni $n$. Seguendo l'idea di sopra, con $n=25$, riusciamo infatti a spezzettare lo spazio di ricerca su sottoinsiemi più piccoli, ovvero $[1,25]$, $[26,50]$, $[51,75]$ e $[76,100]$. In questo modo otteniamo che il numero massimo di lanci da effettuare nel caso peggiore è pari a 28, che è già un bell'incremento rispetto al 100 del caso con un solo uovo! Ma possiamo fare di meglio scegliendo un diverso $n$, rispetto al 25 deciso a intuito, e rifinendo anche la strategia degli incrementi in modo più opportuno? In effetti sì.



---

La funzione che segue (che è stata complicatuccia da scrivere) simula l'esecuzione del lancio di $k$ uova, usando un _jump\_size_ diverso in funzione del numero di uova rimaste. Per esempio, `strat_vector = [14,1]` corrisponde al caso in cui abbiamo 2 uova, e finché ne abbiamo due saltiamo di 14, poi 13, poi 12 piani, mentre quando ci rimane un solo uovo allora facciamo passi alti sempre 1. Mentre `strat_vector = [18,7,1]` corrisponde alla simulazione in cui abbiamo 3 uova, e se ne finché ne abbiamo tre effettuiamo salti alti 18, poi 17, 16, ecc; quando ne abbbiamo due salti alti 7, poi 6, 5, ecc; e infine quando ne abbbiamo solo uno salti alti 1.

```julia
function the_egg_breaks(testing_floor, critical_floor)
    return testing_floor>critical_floor
end

function print_summary(eggs::Integer, floor::Integer, steps::Integer, jump_size::Integer, solution)
    println("jump size = $(rpad(jump_size,2)), ",
            "🏯=$(rpad(string(floor),3)), ",
            "🥚=$(rpad(string(eggs),2)), ",
            "🪜=$(rpad(string(steps),2))")
end

function foundable(solution::Vector, verbose=false)
    if verbose println(join(map(string, solution))); end
    # 2 was the default value
    # 1 is for floors where the egg breaks
    # 0 is for floors where the egg does not break
    return occursin("01",join(map(string, solution))) || 
           join(map(string, solution)) == repeat('0',100)
end

function stratk(divs_strat::Vector, critical_floor::Integer, verbose::Bool; decrement=true)
  solution = 2 .* ones(Int,100)
  eggs = length(divs_strat)
  steps = 0
  strats = reverse(copy(divs_strat))
  previous_floor = 0
  current_floor = strats[end]
  jump_size = strats[eggs]

  while !foundable(solution,verbose) && steps<=100
    interval_focus = findlast(x->x=='2',join(map(string, solution))) - 
                     findfirst(x->x=='2',join(map(string, solution))) + 1
    eggs<1 && return NaN
    jump_size<1 && return NaN
    current_floor<1 && return NaN
    # current_floor=min(current_floor,100)

    if isnothing(findlast(x->x=='1',join(map(string,solution))))
      max_index = 100
    else
      max_index = findlast(x->x=='1',join(map(string,solution)))-1
    end
    current_floor=min(current_floor,max_index)
  
    if the_egg_breaks(current_floor, critical_floor)
      eggs -= 1
      steps += 1
      solution[current_floor:end] .= 1
      if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
      current_floor = previous_floor +1
      jump_size = eggs>=1 ? strats[eggs] : 1
    else
      solution[1:current_floor] .= 0
      steps += 1
      if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
      if (eggs>1 || jump_size>1) && decrement jump_size -= 1 end
      previous_floor = current_floor
      current_floor += jump_size
    end
  end
  return steps
end

```
```julia-repl
# with two eggs
julia> stratk([14,1],41,true,decrement=false)
jump size = 14, 🏯=14 , 🥚=2 , 🪜=1
jump size = 14, 🏯=28 , 🥚=2 , 🪜=2
jump size = 14, 🏯=42 , 🥚=1 , 🪜=3
jump size = 1 , 🏯=29 , 🥚=1 , 🪜=4
jump size = 1 , 🏯=30 , 🥚=1 , 🪜=5
jump size = 1 , 🏯=31 , 🥚=1 , 🪜=6
jump size = 1 , 🏯=32 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=33 , 🥚=1 , 🪜=8
jump size = 1 , 🏯=34 , 🥚=1 , 🪜=9
jump size = 1 , 🏯=35 , 🥚=1 , 🪜=10
jump size = 1 , 🏯=36 , 🥚=1 , 🪜=11
jump size = 1 , 🏯=37 , 🥚=1 , 🪜=12
jump size = 1 , 🏯=38 , 🥚=1 , 🪜=13
jump size = 1 , 🏯=39 , 🥚=1 , 🪜=14
jump size = 1 , 🏯=40 , 🥚=1 , 🪜=15
jump size = 1 , 🏯=41 , 🥚=1 , 🪜=16
16

julia> stratk([14,1],41,true,decrement=true)
jump size = 14, 🏯=14 , 🥚=2 , 🪜=1
jump size = 13, 🏯=27 , 🥚=2 , 🪜=2
jump size = 12, 🏯=39 , 🥚=2 , 🪜=3
jump size = 11, 🏯=50 , 🥚=1 , 🪜=4
jump size = 1 , 🏯=40 , 🥚=1 , 🪜=5
jump size = 1 , 🏯=41 , 🥚=1 , 🪜=6
jump size = 1 , 🏯=42 , 🥚=0 , 🪜=7
7

# now with three eggs
julia> stratk([18,7,1],58,true,decrement=false)
jump size = 18, 🏯=18 , 🥚=3 , 🪜=1
jump size = 18, 🏯=36 , 🥚=3 , 🪜=2
jump size = 18, 🏯=54 , 🥚=3 , 🪜=3
jump size = 18, 🏯=72 , 🥚=2 , 🪜=4
jump size = 7 , 🏯=55 , 🥚=2 , 🪜=5
jump size = 7 , 🏯=62 , 🥚=1 , 🪜=6
jump size = 1 , 🏯=56 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=57 , 🥚=1 , 🪜=8
jump size = 1 , 🏯=58 , 🥚=1 , 🪜=9
jump size = 1 , 🏯=59 , 🥚=0 , 🪜=10
10

julia> stratk([18,7,1],58,true,decrement=true)
jump size = 18, 🏯=18 , 🥚=3 , 🪜=1
jump size = 17, 🏯=35 , 🥚=3 , 🪜=2
jump size = 16, 🏯=51 , 🥚=3 , 🪜=3
jump size = 15, 🏯=66 , 🥚=2 , 🪜=4
jump size = 7 , 🏯=52 , 🥚=2 , 🪜=5
jump size = 6 , 🏯=58 , 🥚=2 , 🪜=6
jump size = 5 , 🏯=63 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=59 , 🥚=0 , 🪜=8
8
```


<!-- \input{julia}{/assets/scripts/dropping_eggs.jl} -->
\fig{/assets/scripts/output/dropping_eggs_all.json}

<!-- ~~~ 
</p></div>
~~~  -->