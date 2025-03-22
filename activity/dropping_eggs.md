+++
title = "Testando la resistenza delle uova"
hascode = true
hasplotly = true
+++

## Testando la resistenza delle uova
Immaginate di essere un allevatore che, incrociando varie razze di gallina, è riuscito ad ottenerne una che depone delle uova particolarmente forti. Volete quindi testare di preciso quanto siano resistenti queste uova, e per farlo decidete di lanciarle dai vari piani di un edificio di 100 piani con l'obiettivo di trovare il piano più alto da cui un uovo può cadere senza rompersi.

Se aveste un solo uovo sapreste subito come fare: lanciate l'uovo dal primo piano, se non si rompe passate al secondo, se non si rompe ancora passate al terzo, poi al quarto, e così via, fino a incontrare il primo piano in cui si rompe (o non incontrarne nessuno nel caso in cui anche al 100esimo piano l'uovo non si rompa). Ci vorrebbero, nel caso peggiore, 100 lanci per trovare la soluzione. 

Ma ora supponiamo che voi abbiate 2 uova. Quale strategia utilizzereste ora per trovare la risposta in modo da minimizzare il caso peggiore del numero di lanci da effettuare?\
Supponete infine di avere $k$ uova. Quale strategia utilizzereste, in questo caso? (sempre per minimizzare il caso peggiore del numero di lanci da effettuare)

\fig{/assets/img/gallina2_cut.png}

> Problema ispirato da [https://plus.maths.org/content/dropping-eggs](https://plus.maths.org/content/dropping-eggs) e da [https://spencermortensen.com/articles/egg-problem/](https://spencermortensen.com/articles/egg-problem/)

## Soluzione intuitiva
<!-- ~~~ 
<div class="solution" tabindex="0"><p>
~~~  -->

Chiamiamo "piano critico" il massimo piano da cui l'uovo può essere lanciato senza che si rompa. Il nostro obiettivo è trovare la strategia che individui questo piano critico minimizzando il _numero massimo di lanci_ da effettuare _nel caso peggiore_. In altri termini, il metodo che alla peggio ci metta meno lanci.
<!-- Quindi ci interessa un metodo che sia robusto, ovvero che anche nel caso peggiore, in cui il piano critico si trovi ad un piano tale che con la mia strategia lo raggiungo dopo tante mosse) -->

Se avessimo un solo uovo, saremmo forzati a testare un piano per volta partendo dal primo, come descritto nel testo. In questo modo, alla peggio ci metteremo 100 lanci per trovare il piano critico (il caso peggiore è infatti se il piano critico è proprio il piano 100).

Invece, con due uova, l'idea è che possiamo permetterci di partire lanciando il primo uovo da piani più alti, investendolo cioè in test più rischiosi in quanto c'è maggiore rischio che si rompi, ma che poi riducano lo spazio di ricerca su cui impiegare il secondo uovo. Nel caso di rottura del primo uovo, infatti, ritorneremo al caso di un solo uovo e saremo nuovamente costretti a testare un piano per volta, ma impiegando questa strategia ci saremo garantiti una finestra di ricerca ora molto più ristretta rispetto all'originale $[0,100]$. Il punto è: da quanto in alto far saltare il primo uovo? e se non si rompe, di quanto salire per i lanci successivi?

Per esempio, consideriamo la strategia di partire lanciando il primo uovo dal piano 20, con incrementi successivi, in caso di integrità, di 20 piani (ovvero, se non si rompe passare al 40, poi al 60, all'80, e infine al 100). In questo modo, se l'uovo si rompesse al primo lancio impiegheremo il secondo sulla finestra di piani identificata come rilevante, ovvero $[0,19]$, in quanto di sicuro lì apparterrà il piano critico. Se si rompesse invece al secondo lancio, dal piano 40, ci concentreremo sulla nuova finestra $[21,39]$, e così via. Con questo metodo, il caso peggiore sarebbe quello in cui il piano critico è il 99 (o anche il 100), che comporterebbe 5 lanci col primo uovo (20, 40, 60, 80, 100) e 19 col secondo uovo (dall'81 al 99). 

Segue un esempio di esecuzione della strategia appena descritta:
```julia-repl
julia> stratk([20,1],99,true,decrement=false)
jump size = 20, 🏯=20 , 🥚=2 , 🪜=1
jump size = 20, 🏯=40 , 🥚=2 , 🪜=2
jump size = 20, 🏯=60 , 🥚=2 , 🪜=3
jump size = 20, 🏯=80 , 🥚=2 , 🪜=4
jump size = 20, 🏯=100, 🥚=1 , 🪜=5
jump size = 1 , 🏯=81 , 🥚=1 , 🪜=6
jump size = 1 , 🏯=82 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=83 , 🥚=1 , 🪜=8
jump size = 1 , 🏯=84 , 🥚=1 , 🪜=9
jump size = 1 , 🏯=85 , 🥚=1 , 🪜=10
jump size = 1 , 🏯=86 , 🥚=1 , 🪜=11
jump size = 1 , 🏯=87 , 🥚=1 , 🪜=12
jump size = 1 , 🏯=88 , 🥚=1 , 🪜=13
jump size = 1 , 🏯=89 , 🥚=1 , 🪜=14
jump size = 1 , 🏯=90 , 🥚=1 , 🪜=15
jump size = 1 , 🏯=91 , 🥚=1 , 🪜=16
jump size = 1 , 🏯=92 , 🥚=1 , 🪜=17
jump size = 1 , 🏯=93 , 🥚=1 , 🪜=18
jump size = 1 , 🏯=94 , 🥚=1 , 🪜=19
jump size = 1 , 🏯=95 , 🥚=1 , 🪜=20
jump size = 1 , 🏯=96 , 🥚=1 , 🪜=21
jump size = 1 , 🏯=97 , 🥚=1 , 🪜=22
jump size = 1 , 🏯=98 , 🥚=1 , 🪜=23
jump size = 1 , 🏯=99 , 🥚=1 , 🪜=24
```
Questa strada sembra in effetti sensata, ma per arrivare a quella ottimale occorre eseguire un ultimo passettino. Notiamo infatti che, col metodo appena descritto nell'esempio, la finestra di ricerca per il secondo uovo rimane fissa, costantemente ampia 19 piani. Tuttavia, ogni volta che il primo uovo non si rompe, stiamo di fatto sprecando dei lanci, che si andranno ad aggiungere al conteggio totale dei lanci effettuati. Perciò qui arriva l'ideona: se anziché saltare di un numero fisso di piani (di 20 in 20), saltassimo con salti decrescenti (di 20, poi 19, poi 18, ecc)? In questo modo, più test effettuiamo col primo uovo, più la finestra di ricerca si restringe col secondo uovo man mano che saliamo, compensando l'aver investito per più lanci il primo uovo. 

Notiamo infatti già un bell'effetto impostando, nella funzione precedente, il parametro `decrement` su `true` in modo da scalare di uno l'ampiezza dei salti effettuati col primo uovo: 
```julia-repl
julia> stratk([20,1],99,true,decrement=true)
jump size = 20, 🏯=20 , 🥚=2 , 🪜=1
jump size = 19, 🏯=39 , 🥚=2 , 🪜=2
jump size = 18, 🏯=57 , 🥚=2 , 🪜=3
jump size = 17, 🏯=74 , 🥚=2 , 🪜=4
jump size = 16, 🏯=90 , 🥚=2 , 🪜=5
jump size = 15, 🏯=100, 🥚=1 , 🪜=6
jump size = 1 , 🏯=91 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=92 , 🥚=1 , 🪜=8
jump size = 1 , 🏯=93 , 🥚=1 , 🪜=9
jump size = 1 , 🏯=94 , 🥚=1 , 🪜=10
jump size = 1 , 🏯=95 , 🥚=1 , 🪜=11
jump size = 1 , 🏯=96 , 🥚=1 , 🪜=12
jump size = 1 , 🏯=97 , 🥚=1 , 🪜=13
jump size = 1 , 🏯=98 , 🥚=1 , 🪜=14
jump size = 1 , 🏯=99 , 🥚=1 , 🪜=15
```

Con questa strategia (salto iniziale ampio 20 e decrementi di 1 ogni volta che si sale) ci metteremmo alla peggio 20 lanci. Magari possiamo fare di meglio, scegliendo un salto diverso da 20? In effetti sì.\
Per trovare questo valore di salto ottimale, basta pensare che più saliamo, più vogliamo restringere la nostra finestra di ricerca, in modo da compensare tutti i lanci effettuati per arrivarci, ma comunque dobbiamo garantirci di esplorare l'intero spazio dei piani da 1 a 100, in quanto il piano critico potrebbe ovviamente essere anche uno degli ultimi.

Un salto ampio 20 era in effetti eccessivo, perché decrementandolo con 19, 18, ecc, riusciremmo ad esplorare un numero di piani pari a $20+19+18+\ldots+2+1=210$, che sono in effetti fin troppi per il nostro edificio di 100 piani. Il calcolo mostra quindi che se l'edificio avesse 210 piani, 20 sarebbe stato il valore ottimale in quel caso. Con 100 piani, invece, il salto ottimale $n$ sarà quindi il più basso valore tale per cui 
$$
n+(n-1)+(n-2)+\ldots+2+1 \geq 100
$$
ovvero 
$$
\frac{n(n+1)}{2} \geq 100 \implies n=14
$$
Perciò con salti decrementati a partire da 14, e un edificio di 100 piani, alla peggio ci metteremo 14 lanci, e questa è la strategia ottimale.

Giusto per ricapitolare l'idea del compensare i lanci, questo sarebbe lo schemino di esecuzione da seguire.
- Lanciamo il primo uovo dal piano 14: se si rompe, controlliamo col secondo uovo i tredici piani dall'1 al 13 (alla peggio ci avremmo messo $1+13=\bf{14}$ lanci); se non si rompe,
- lanciamo il primo uovo dal piano $14+13=27$: se si rompe, controlliamo col secondo uovo i dodici piani dal 15 al 26 (alla peggio ci avremmo messo $2+12=\bf{14}$ lanci); se non si rompe,
- lanciamo il primo uovo dal piano $14+13+12=39$: se si rompe, controlliamo col secondo uovo gli undici piani dal 28 al 38 (alla peggio ci avremmo messo $3+11=\bf{14}$ lanci); se non si rompe,
- ecc

<!-- Questo effetto di compensazione si vede ben anche dal grafico che segue: -->
\fig{/assets/scripts/output/eggs_hist.json}

Questa idea di fare passi decrescenti si può naturalmente estendere ai casi con più uova, ma se per due uova era la soluzione ottimale, non è detto che lo rimanga nel caso di tre o più uova. Infatti, si può trovare un metodo migliore, per vie più rigorose, che consente di risolvere _sempre_ il problema in maniera ottimale anche considerando un numero arbitrario di piani $N$ e di uova $k$. A tal proposito, per questa soluzione matematica vi rinvio al paragrafo quindi [qui](#soluzione_matematica) sotto, subito dopo la digressione informatica legata a questo metodo "intuitivo".


---

La funzione che segue simula l'esecuzione del lancio di $k$ uova, usando un _jump\_size_ diverso in funzione del numero di uova rimaste. Per esempio, `strat_vector = [14,1]` corrisponde al caso in cui abbiamo 2 uova, e finché ne abbiamo due saltiamo di 14 piani, poi 13, 12, ecc (se anche il parametro `decrement` è impostato su `true`, altrimenti l'ampiezza dei salti resta invariata, ovvero saltiamo di 14 piani, poi ancora 14, 14, ecc), mentre quando ci rimane un solo uovo allora facciamo passi alti sempre 1. Mentre `strat_vector = [18,7,1]` corrisponde alla simulazione in cui abbiamo 3 uova, e se ne finché ne abbiamo tre effettuiamo salti alti 18, poi 17, 16, ecc; quando ne abbbiamo due salti alti 7, poi 6, 5, ecc (sempre nel caso `decrement=true`); e infine quando ne abbbiamo solo uno passiamo a salti alti 1.

```julia
function the_egg_breaks(testing_floor, critical_floor)
  return testing_floor>critical_floor
end

function print_summary(eggs::Integer,floor::Integer,steps::Integer,jump_size::Integer,solution)
  println("jump size = $(rpad(jump_size,2)), ",
      "🏯=$(rpad(string(floor),3)), ",
      "🥚=$(rpad(string(eggs),2)), ",
      "🪜=$(rpad(string(steps),2))")
end

function foundable(solution::Vector, verbose=false)
  # if verbose println(join(map(string, solution))); end
  # 2 was the default value
  # 1 is for floors where the egg breaks
  # 0 is for floors where the egg does not break
  return occursin("01",join(map(string, solution))) || join(map(string, solution)) == repeat('0',100)
  # all'inizio solution era un vettore di soli 2: 22222...22222
  # lanciando le uova identifichiamo le zone in cui si rompe (1) o resta integro (0)
  # quindi il piano critico si può individueare se
  # - incontriamo un pezzo "01" nella stringa solution (prima parte del return); o
  # - se da nessun piano l'uovo cadendo si rompe (seconda parte del return)
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
      # se l'uovo si è rotto aggiorniamo solution segnandoci che si romperebbe da lì in poi,
      eggs -= 1
      steps += 1
      solution[current_floor:end] .= 1
      if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
      # torniamo all'ultimo "checkpoint",
      current_floor = previous_floor +1
      # e aggiorniamo il jump_size
      jump_size = eggs>=1 ? strats[eggs] : 1
    else
      # se l'uovo non si è rotto aggiorniamo solution segnandoci che non si rompe fino a lì,
      solution[1:current_floor] .= 0
      steps += 1
      if verbose print_summary(eggs,current_floor,steps,jump_size,solution); end
      # aggiorniamo jump_size, se necessario,
      if (eggs>1 || jump_size>1) && decrement jump_size -= 1 end
      # salviamo il piano corrente,
      previous_floor = current_floor
      # e passiamo al prossimo piano da testare
      current_floor += jump_size
    end
  end
  return steps
end
```
<!-- aggiungere magari istogrammi per confrontare caso decrement true/false -->
Ecco degli esempi di alcune esecuzioni
```julia-repl
julia> stratk([14,1],58,true,decrement=true) 
jump size = 14, 🏯=14 , 🥚=2 , 🪜=1 # with 2 eggs
jump size = 13, 🏯=27 , 🥚=2 , 🪜=2
jump size = 12, 🏯=39 , 🥚=2 , 🪜=3
jump size = 11, 🏯=50 , 🥚=2 , 🪜=4
jump size = 10, 🏯=60 , 🥚=1 , 🪜=5
jump size = 1 , 🏯=51 , 🥚=1 , 🪜=6
jump size = 1 , 🏯=52 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=53 , 🥚=1 , 🪜=8
jump size = 1 , 🏯=54 , 🥚=1 , 🪜=9
jump size = 1 , 🏯=55 , 🥚=1 , 🪜=10
jump size = 1 , 🏯=56 , 🥚=1 , 🪜=11
jump size = 1 , 🏯=57 , 🥚=1 , 🪜=12
jump size = 1 , 🏯=58 , 🥚=1 , 🪜=13
jump size = 1 , 🏯=59 , 🥚=0 , 🪜=14
14

julia> stratk([18,7,1],58,true,decrement=true)
jump size = 18, 🏯=18 , 🥚=3 , 🪜=1 # with three eggs
jump size = 17, 🏯=35 , 🥚=3 , 🪜=2
jump size = 16, 🏯=51 , 🥚=3 , 🪜=3
jump size = 15, 🏯=66 , 🥚=2 , 🪜=4
jump size = 7 , 🏯=52 , 🥚=2 , 🪜=5
jump size = 6 , 🏯=58 , 🥚=2 , 🪜=6
jump size = 5 , 🏯=63 , 🥚=1 , 🪜=7
jump size = 1 , 🏯=59 , 🥚=0 , 🪜=8
8
```
e dei grafici riguardo ai casi migliori, peggiori, e medi di esecuzione delle varie strategie,  nella forma $[x,y,1]$ seguendo la convenzione introdotta dalla funzione precedente, con quindi tre uova.

<!-- \input{julia}{/assets/scripts/dropping_eggs.jl} -->
\fig{/assets/scripts/output/dropping_eggs_all.json}

## Soluzione matematica
da scrivere

<!-- ~~~ 
</p></div>
~~~  -->

{{ addcomments }}