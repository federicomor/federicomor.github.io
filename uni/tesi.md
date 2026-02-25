+++
title = "Tesi"
hasmath = true
+++

\toc
~~~
<button id="toc-button">//</button>
  <div id="toc-container">
    <div id="toc">
~~~
\toc
~~~ 
  </div>   
</div>
~~~

# La tesi
Ecco qui il mio caro file della tesi, seguito da una sua breve analisi.

{{ pdf /assets/uni/tesi/2024_12_Mor_Thesis.pdf }}

## Gli easter eggs
Evidenziati qui in corsivo:
- pag 7 (vii sul pdf) la traduzione di "a brand-new implementation..." dall'abstract, diventata nel sommario, cioè l'abstract in italiano, "una nuova, _fiammante_ implementazione..." 🥵
- pag 51 (35 sul pdf) quando giustifico la rimozione della macro `@fastmath` (che prende un'espressione matematica e la converte in un'altra forma a volte meno precisa ma più veloce) sia perché non aveva molto impatto sulle performance sia _to address concerns from pure mathematicians_ 🤭
- pag 127 (111 sul pdf) dove nel ringraziare i miei relatori per avermi accolto in un clima molto tranquillo e sereno in cui svolgere la tesi, "in which I have been able to feel perfectly at ease", ci associo tra parentesi il simpatico commento _(which is notoriously a NP-hard problem)_" 🫠
- tutte le varie epigrafi tratte dai libri di Dostoevskij. La loro inclusione è interessante perché non è che scritta la tesi ho voluto mettere delle frasi come decorazione andando a ricercarle nei libri, ma proprio durante lo svolgimento della tesi (quindi da aprile 2024) ero nella fase in cui leggevo i libri di Dostoevskij e quindi man mano mi segnavo le frasi per le quali dicevo "questa starebbe proprio bene in questa parte della tesi!" 🧐

Di seguito segue proprio una più elaborata descrizione di queste simpatiche epigrafi.

### Le epigrafi
> **Chapter 1: Description of the model**\
> “Come on, gentlemen, why shouldn’t we get rid of all this calm reasonableness with one good kick, just so as to send all these logarithms to the devil and be able to live our own lives at our own sweet will?”\
> — Fëdor Dostoevskij, Notes from the Underground
Questa è perché nell'implementare l'algoritmo del modello si deve ricorrere a lavorare coi logaritmi (la log-likelihood) e quindi, citando i logaritmi, questa frase era proprio in tema. In realtà la frase sembra che inviti ad ignorare, ad abbanare tutto questo lavoro di razionalismo, di indagine scientifica, e vivere maggiormente di più secondo la propria dolce volontà, staccandosi quindi da mentalità e contesti troppo teorici, modellistici, ecc, ed è quindi un'idea abbastanza forte da inserire in una tesi; tuttavia mi piaceva la parte dei logaritmi quindi sul pensiero di fondo e sulla velata critica da esso implicato ho un po' sorvolato.

> **Chapter 2: Implementation and optimizations**\
> “You see, I’ve brought you my Nellie,” I said, going in.\
> — Fëdor Dostoevskij, Humiliated and Insulted
Questa è proprio 😚 \*chef's kiss\*, perfetta, perché nel libro c'è il protagonista che incontra, e poi moralmente adotta, accudisce, accompagna con sé, la giovane e tenera Nellie, creando quindi un perfetto parallelismo tra me e il linguaggio di programmazione scelto per implementare il modello, Julia. Infatti, traducendo l'epigrafe risulterebbe _"Ecco, ti ho portato la mia Nelli", dissi, entrando_, che è stato un po' come me che entravo nell'ufficio della prof per dirle "Ecco prof, questa è Julia, un linguaggio di programmazione davero moderno e interessante, con cui vorrei quindi implementare l'algoritmo MCMC del modello".

> **Chapter 4: Conclusion**\
> And what in human reckoning seems still afar off, may by the Divine ordinance be close at hand, on the eve of its appearance. And so be it, so be it!\
> — Fëdor Dostoevskij, Brothers Karamazov
Questa ho voluto inserirla perché mi sembrava molto bella e collegata all'idea del capitolo delle conclusioni, portando un po' un'idea di sollievo, di fiducia. Infatti, traducendola, dice che per quanto qualche cosa possa sembrare lontana nelle visioni dell'uomo (nel mio caso, la fine della tesi, il conseguimento della laurea, ecc), agli occhi di Dio questo traguardo potrebbe invece già essere vicino, sulla soglia del manifestarsi. E così sia, cosi sia!


> **Acknowledgements**\
> “This is to be my haven for many long years, my niche which I enter with such a mistrustful, such a painful sensation... And who knows? Maybe when I come to leave it many years hence I may regret it!”\
> — Fëdor Dostoevskij, The House of the Dead

> **Ringraziamenti**\
> “Ecco il mio ponte d’approdo per molti lunghi anni, il mio angoletto, nel quale faccio il mio ingresso con una sensazione così diffidente, così morbosa... Ma chi lo sa? Forse, quando tra molti anni mi toccherà abbandonarlo, magari potrei anche rimpiangerlo!”\
> — Fëdor Dostoevskij, Memorie da una casa di morti

Questa era bella per la parte finale del "forse, quando tra molti anni mi toccherà abbandonarlo, magari potrei anche rimpiangerlo", per evocare una nostalgia del politecnico una volta finita la tesi e terminato il mio percorso, ma soprattutto anche molto divertente perché in realtà nel libro Dostoevskij stava parlando della prigione (tecnicamente, colonia penale) in cui era rinchiuso. Quindi risulta quasi commovente se uno non sa il vero riferimento inteso dall'autore, ma altrimenti molto ironica se viene colto il parallelismo politecnico/prigione.

---

Un'altra piccola questione interessante era quella di come indicare il nome dell'autore, Dostoevskij, in queste epigrafi. Dopotutto, infatti, l'autore è russo, quindi il suo "vero" nome sarebbe (da Wikipedia) Фёдор Достоевский, quindi poi le varie lingue convertono questi strani simboli e suoni nei modi a loro più vicini. In italiano, ad esempio, diventa Fëdor Dostoevskij, che è il modo in cui ho scelto di scriverlo nelle varie epigrafi. Tuttavia, essendo scritte in inglese, come il resto della tesi, una scelta sensata sarebbe potuta essere anche quella di scrivere il suo nome secondo la notazione inglese, ovvero Fyodor Dostoevsky. A livello di suoni sono entrambe versioni equivalenti, perché la _ë_ dell'italiano viene convertita in _yo_ (che è precisamente il modo in cui si legge _ë_), così come il suono finale _ij_ viene reso con _y_. Alla fine ho scelto di usare quella italiana perché a me più familiare e per non creare troppa confusione quando per esempio nei ringraziamenti, in cui c'è l'epigrafe in entrambe le lingue, si sarebbe notato un cambio di scrittura del nome, che sarebbe risultato un po' strano.

## Il titolo
Il titolo completo è "The DRPM Strikes Back: More Flexibility for a Bayesian Spatio-Temporal Clustering Model". La seconda parte è quella seria, la prima è invece chiaramente ispirata al film di Star Wars "The Empire Strikes Back"; ma questa scelta, per quanto divertente, è comunque sensata e motivata. Infatti, il lavoro di tesi è consistito nel prendere questo modello, il DRPM, che esisteva già, creato da altri autori qualche anno fa, e migliorarlo, generalizzarlo. Quindi in effetti "il modello ha colpito ancora", la sua vita non è finita con l'articolo dei primi autori ma ha proseguito una seconda volta col mio lavoro.

\fig{/assets/uni/tesi/THE DRPM.png}

Prima che vincesse questa scelta avevo in realtà anche altre alternative in mente (tra tonde la versione del titolo originale):
- sempre da Star Wars, "the revenge of the DRPM" (the revenge of the Sith)
- dalla saga di James Bond, "on DRPM's secret service" (on her majesty's secret service) e anche "the DRPM is not enough" (the world is not enough)
- da un titolo di film random, "the model who lived twice" (the man who lived twice)

Avendo scelto il titolo in tema Star Wars vi riporto di seguito, grazie al gentile supporto di Gemini, l'abstract della tesi scritto nel celebre formato di apertura inaugurato da tali film:

~~~
<div class="crawl-container">
  <div class="stars-overlay"></div>
  
  <div class="fade-mask"></div>

  <section class="star-wars-window">
    <div class="crawl-content">
      <h1>The DRPM Strikes Back: More Flexibility for a Bayesian Spatio-Temporal Clustering Model</h1>
      
      <p>Clustering is a key technique for identifying patterns and structures in complex datasets, whose relevance is intensified in spatio-temporal contexts where observations are simultaneously influenced by multiple factors such as space, time, and covariates. This complexity can be effectively tamed by model-based clustering methods, which often provide more accurate and interpretable results with respect to traditional frequentist approaches thanks to the possibility of encoding data information directly inside the model. To this end, the Dependent Random Partition Model (Page et al., 2022) is one of the most relevant Bayesian models due to its explicit consideration of temporal dependence in the partitions. However, the current formulation of the model and the implementation of the associated MCMC algorithm lacks the inclusion of covariates, the handling of missing data, and the efficiency in execution times. Therefore, in this work we improve the original model by addressing those issues through updates on the model formulation and a brand new implementation in Julia (Bezanson et al., 2017). These advancements are then tested on synthetic and real-world datasets, including air quality data from the AgrImOnIA project (Fassò et al., 2023) in Lombardy, Italy.</p>
    </div>
  </section>
</div>

<style>
/* 1. The Wrapper: Keeps the effect contained */
.crawl-container {
  position: relative;
  width: 100%;
  height: 400px; /* Adjust this to fit your layout */
  background: #000;
  overflow: hidden;
  border: 2px solid #333; /* Optional styling */
  font-family: 'Pathway Gothic One', sans-serif;
}

/* 2. The Stars (Local to this section) */
.stars-overlay {
  position: absolute;
  top: -40px;
  width: 100%;
  height: 100%;
  background: url('/assets/uni/tesi/stars.png') no-repeat center center;
  background-size: cover;
  z-index: 0;
  opacity: 0.8; /* Subtle dimming to help text pop */
}

/* 3. The Window and Perspective */
.star-wars-window {
  display: flex;
  justify-content: center;
  position: relative;
  height: 100%;
  perspective: 200px; /* Reduced for smaller window height */
  z-index: 1;
}

/* 4. The Mask: Fades text out before it hits the top edge */
.fade-mask {
  position: absolute;
  top: 0;
  width: 100%;
  height: 40%;
  background-image: linear-gradient(to bottom, rgba(0,0,0,1), transparent);
  z-index: 2;
  pointer-events: none;
}

/* 5. The Actual Text Animation */
.crawl-content {
  position: absolute;
  top: 100%; /* Start below the container */
  width: 90%;
  color: #feda4a;
  font-size: 1.5rem;
  font-weight: 600;
  line-height: 1.5;
  text-align: center;
  transform-origin: 50% 0%;
  animation: crawl-animation 40s linear infinite;
}

.crawl-content h1 {
  font-size: 2rem;
  color: #feda4a;
  text-align: center;
  margin: 0 0 20px 0;
  text-transform: uppercase;
}

.crawl-content .title {
  text-align: center;
  margin-bottom: 30px;
}

@keyframes crawl-animation {
  0% {
    top: 100%;
    transform: rotateX(25deg) translateZ(0);
  }
  100% {
    top: -150%; /* Moves it past the top edge */
    transform: rotateX(35deg) translateZ(-500px);
  }
}
</style>
~~~


## L'argomento
Nel 2022, Garritt Page ed altri autori hanno creato un modello bayesiano, [il DRPM](https://arxiv.org/abs/1912.11542) (Dependent Random Partition Model), che fa clustering di dati spazio-temporali. Quindi come contesto abbiamo $n$ soggetti, ovvero le unità che misurano una qualche variabile target $Y_{it}$, disposte nello spazio in coordinate ${\bf{s}}_i$ per $i=1,\ldots,n$, e che vogliamo clusterizzare in ogni istante temporale $t=1,\ldots,T$, creando quindi una sequenza di partizioni, di clusterizzazioni.

Fin qui non è nulla di sorprendente, esistevano già altri modelli in grado di farlo; tuttavia ciò che caratterizza il DRPM è la modellazione diretta delle dipendenze temporali nella sequenza di cluster, ovvero come la partizione al tempo $t$ influenza quella al tempo $t+1$. In questo modo, i cluster vengono generati tenendo conto dell'informazione spaziale e anche di quella temporale, producendo alla fine una evoluzione dei cluster molto più _smooth_, più gentile, e di conseguenza più interpretabile. Ad esempio si può notare come un cluster che inizialmente raccoglie 10 unità col tempo magari si riduce, o magari sparisce, per poi ricomparire qualche istante temporale dopo, ecc. Altri modelli, al contrario, non tengono conto della dimensione temporale nel produrre i cluster, generando quindi ogni partizione in modo indipendente, scollegato tra loro (come se fittassimo un modello ad ogni $t$ e poi semplicemente concateniamo i vari risultati).

Nella tesi ho quindi preso questo modello e ho provato a migliorarlo, o a generalizzarlo per usare un termine meno forte. Per farlo, c'erano vari aspetti su cui agire:
1. **Inserire anche le covariate dentro al processo di generazione delle partizioni** -- cioè nella loro prior, in termini più bayesiani --, in modo da produrre cluster tenendo conto dell'informazione spaziale e temporale, come già faceva il modello, ma con in più anche l'informazione portata dalle covariate. Questo può essere utile perché se per esempio la variabile target da clusterizzare è il PM10, un inquinante dell'aria, allora variabili ambientali come l'intensità del vento, la direzione del vento, la quantità di piogge, l'intensità del traffico, la presenza di industrie, ecc (tutte covariate, appunto) sono molto utili per produrre cluster più precisi e caratterizzati. 
2. **Cambiare leggermente la formulazione** del modello, scegliendo altre leggi per le varianze e introducendo un termine di regressione nella likelihood del modello, in modo anche qui da fornire maggiore flessibilità nell'inserire volendo l'informazione delle covariate, con l'obiettivo di ottenere una maggiore precisione nel campionamento dei vari parametri.
3. **Permettere al modello di accettare dati mancanti**. La versione originale infatti lavorava solo su dataset completi, ma in scenari reali spesso alcuni dati possono venire a mancare, per esempio per via di guasti o malfunzionamenti nelle unità di misurazione. Quindi ho derivato una regola di aggiornamento per permettere al modello di campionare anche quei dati mancanti.
4. **Sviluppare una nuova implementazione** del modello . Quella originale era infatti scritta in C ed era un po' lentina; quindi per implementare il nuovo algoritmo di campionamento, una volta integrate le mie modifiche, ho scelto Julia. Scrivendolo in Julia ho in effetti ottenuto una versione molto più veloce, con picchi di speedup pari anche a 2x (ovvero il mio modello ci mette la metà del tempo, rispetto alla versione originale, per essere eseguito).

## Le slides

Carico anche le slide usate per la presentazione, dato che non se ne trovano molte in giro e credo siano utili come esempio per capire come debbano essere strutturate. L'idea, in base alla mia esperienza e ovviamente anche in seguito a quanto hanno suggerito i miei relatori, è che ci debba essere questa sequenza di passaggi:
1. una slide veloce iniziale per presentare nell'insieme che lavoro avete fatto (quale problema avete affrontato, in cosa è effettivamente consistito il vostro contributo, ecc), proprio una singola paginetta che mostra il vostro lavoro con uno sguardo d'insieme. Dopotutto chi avete di fronte è la prima volta che vi vede, quindi anche se a voi ovviamente è tutto familiare dovete far capire agli altri cosa avete fatto. Vi verrà ad esemèpio naturale usare sigle o termini che per voi sono chiarissimi ma che chi vi ha davanti non ha mai sentito, quindi questa prima slide è molto importante.
2. un breve approfondimento del problema che avete affrontato, per inquadrare meglio il contesto a chi ascolta. Racccontate perché esisteva/esiste questo problema, perché non è/era stato ancora affrontato o risolto, ecc.
3. un lungo approfondimento del vostro lavoro: cosa avete fatto, quali test avete condotto per verificare l'efficacia del vostro operato, a quali risultati siete pervenuti, ecc. Dovete convincere della qualità e quantità di quello che avete fatto.
4. due slide finali riassuntive per indicare i punti forti e i punti deboli del vostro lavoro, ed eventuali idee di sviluppo future.
5. le reference (la bibliografia) principale, ovvero la lista dei riferimenti più rilevanti.

Col senno di poi, fatele anche molto più corte di quelle che ho fatto io.

{{ pdf /assets/uni/tesi/2024_12_Mor_Slides.pdf }}

{{ addcomments }}
