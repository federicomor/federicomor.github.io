+++
title = "Strategia ottimale per appuntamenti"
hascode = true
hasplotly = true
+++


### Strategia ottimale per appuntamenti

Vediamo ora una delle domande più cruciali nella vita sentimentale: _quante persone dovremmo frequentare prima di scegliere quella con cui stabilizzarci per qualcosa di più serio?_

È una domanda difficile, ma la matematica può aiutarci trovando una risposta: il {{ blur 37%}}. In pratica, di tutte le persone con cui possibilmente potremmo fissare un appuntamento, dovremmo conoscere ma scartare a priori le prime {{ blur 37%}}, dalla nostra "scelta definitiva", e poi continuare gli appuntamenti fino ad accasarci con la prima persona che incontriamo e che valutiamo migliore di quelle viste prima (o altrimenti aspettare l'ultima persona, se questa scelta migliore non si presenta).

Perché è una buona strategia?[^1] Ovviamente non conviene scegliere la prima persona che incontriamo, per quanto possa sembrare promettente, perché qualcuno di meglio potrebbe apparire più tardi. D'altra parte, non vogliamo nemmeno essere troppo esigenti, perché una volta che rifiutiamo qualcuno molto probabilmente non vorrà tornare da noi qualora ci ripensassimo. Ma quindi perché il {{ blur 37%}}? L'idea è solo di massimizzare le probabilità.

\fig{/assets/img/date4_cut.jpeg}

Più precisamente: supponiamo di volerci "sistemare" entro un certo periodo. Definiamo $N$ come il numero di partner che stimiamo di poter incontrare in questo periodo, e che quindi costituiscono i nostri candidati moglie/marito. Supponiamo di poter assegnare a ogni partner un punteggio da 1 a $N$ per definire il nostro grado di compatibilità[^2]. In questo gruppo ci sarà anche la nostra anima gemella, _quella giusta_, che chiamiamo $X$ e che avrà quindi il punteggio massimo. Vorremo ora definire una strategia che massimizzi la probabilità di trovarla.

Dato $N$, quindi, vorremo capire come bilanciare il rischio tra "scegliere un partner iniziale magari non perfetto" e "scartare partner che invece col senno di poi valeva la pena scegliere", e quindi vorremo definire $M$ come la soglia di persone che delimita i gruppi _scarto a priori_ vs _ci penso seriamente_. La nostra strategia, come sopra anticipato, consiste allora nell'incontrare -- ma scartare -- le prime $M$ persone, in modo solo da farci un'idea della qualità delle proposte, e poi scegliere, tra i partner degli appuntamenti successivi, la prima che è migliore della persona migliore incontrata nel gruppo scartato; o altrimenti l'ultima se non si presenta nessuna con questo requisito.

> Problema ispirato da [https://plus.maths.org/content/mathematical-dating](https://plus.maths.org/content/mathematical-dating).

[^1]: "buona strategia" dal punto di vista del risolvere il problema in modo matematico, ma poi naturalmente nelle relazioni umane non ha troppo senso ragionare solo in questi termini razionali. Se per esempio il primo appuntamento ci colpisce non è che dobbiamo rifiutare quel partner solo perché la matematica dice di farlo.

[^2]: l'assegnazione corretta di questi punteggi esiste ma è a noi ignota, ovviamente, perché il punteggio da assegnare a ogni partner lo sapremo esattamente solo una volta fatti tutti gli appuntamenti. Solo una volta conosciuti tutti potremmo allora dire "lei era la migliore" (punteggio $N$), "quest'altra la seconda migliore" (punteggio $N-1$), ecc. Durante il percorso invece possiamo solo fare confronti del tipo "lei era peggiore di quella vista prima", "quest'altra era migliore di tutte le altre viste finora", ecc, ovvero confronti relativi. 


### Soluzione
Stavolta ho impostato l'articoletto come una vera storiella di divulgazione, non come domanda e risposta. Nel farlo ho cercato quindi di mantenere un discorso secondo me simpatico, ordinato, e chiaro, ma senza comunque spoilerare la soluzione. Per chi è solo interessato al risultato, basta quindi cliccare sulle parti sfocate di sopra, altrimenti continuate qui per la soluzione completa, con tutti i calcoli per arrivare al risultato finale.

---

Calcolando l'$M$ ottimale, in funzione di $N$, risulterà che 
$$
M = \frac{N}{e} \approx 0.37 \cdot N
$$
ovvero $M$ deve essere circa il {{ blur 37%}}di $N$.

\input{julia}{/assets/scripts/date_strategy.jl} 
\fig{/assets/scripts/output/date_strategy.json}
\output{/assets/scripts/date_strategy.jl}

{{ desmos https://www.desmos.com/calculator/7xjua3xllw }}

{{ addcomments }}