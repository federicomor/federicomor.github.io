+++
title = "Tesi"
+++

# Tesi
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


## La tesi
Ecco qui il mio caro file della tesi, seguito da una sua breve analisi.

{{ pdf /assets/Tesi/2024_12_Mor_Thesis.pdf }}

### Easter eggs
Evidenziati qui in corsivo:
- pag 7 (vii sul pdf) la traduzione di "a brand-new implementation..." dall'abstract, diventata nel sommario, cioè l'abstract in italiano, "una nuova, _fiammante_ implementazione..." 🥵
- pag 51 (35 sul pdf) quando giustifico la rimozione della macro `@fastmath` (che prende un'espressione matematica e la converte in un'altra forma a volte meno precisa ma più veloce) sia perché non aveva molto impatto sulle performance sia _to address concerns from pure mathematicians_ 🤭
- pag 127 (111 sul pdf) dove nel ringraziare i miei relatori per avermi accolto in un clima molto tranquillo e sereno in cui svolgere la tesi, "in which I have been able to feel perfectly at ease", ci associo tra parentesi il simpatico commento _(which is notoriously a NP-hard problem)_" 🫠
- tutte le varie epigrafi tratte dai libri di Dostoevskij. La loro inclusione è anche interessante perché non è che scritta la tesi ho voluto mettere delle frasi come decorazione andando a ricercarle nei libri, ma proprio durante lo svolgimento della tesi (quindi da aprile 2024) mentre leggevo i suoi libri mi segnavo le frasi per le quali dicevo "questa starebbe proprio bene in questa parte della tesi!" 🧐


### Approfondimento sulle epigrafi
> **Chapter 1: Description of the model**\
> “Come on, gentlemen, why shouldn’t we get rid of all this calm reasonableness with one good kick, just so as to send all these logarithms to the devil and be able to live our own lives at our own sweet will?”\
> — Fëdor Dostoevskij, Notes from the Underground
Questa perché nell'implementare l'algoritmo del modello si deve ricorrere a lavorare coi logaritmi (la log-likelihood), e quindi questa era proprio in tema. Inoltre sembra che inviti un po' ad ignorare tutto questo lavoro di razionalismo, ovvero abbandonare più o meno tutto il lavoro di indagine scientifica, e vivere un po' di più secondo la propria dolce volontà, staccandosi da mentalità e contesti troppo teorici, modellistici, ecc. È ovviamente un'idea forte da inserire nella tesi, ma mi piaceva la parte dei logaritmi, quindi sul pensiero di fondo ci ho un po' sorvolato.

> **Chapter 2: Implementation and optimizations**\
> “You see, I’ve brought you my Nellie,” I said, going in.\
> — Fëdor Dostoevskij, Humiliated and Insulted
Questa è proprio 😚 \*chef's kiss\*, perfetta, perché nel libro c'è il protagonista che incontra, poi moralmente adotta, accudisce, e accompagna con sé, la giovane e tenera Nellie, creando quindi un perfetto parallelismo di me e Julia. Infatti, traducendola, risulterebbe «"Ecco, ti ho portato la mia Nelli", dissi, entrando», che è stato un po' come me che entravo nell'ufficio della prof per dirle "Ecco prof, questa è Julia, in cui vorrei implementare l'algoritmo MCMC del modello".

> **Chapter 4: Conclusion**\
> And what in human reckoning seems still afar off, may by the Divine ordinance be close at hand, on the eve of its appearance. And so be it, so be it!\
> — Fëdor Dostoevskij, Brothers Karamazov
Verso la fine della tesi ho iniziato I Fratelli Karamazov, e volevo assolutamente inserirne una frase. Alla fine ho scelto questa perché mi sembrava molto bella e collegata all'idea del capitolo delle Conclusioni, portando un po' un'idea di sollievo, di fiducia. Infatti, traducendola, dice che per quanto qualcosa possa sembrare lontana nelle visioni dell'uomo (nel mio caso, la fine della tesi, il conseguimento della laurea, ecc), agli occhi di Dio questo traguardo potrebbe invece già essere vicino, sulla soglia del manifestarsi. E così sia, cosi sia!


> **Acknowledgements**\
> “This is to be my haven for many long years, my niche which I enter with such a mistrustful, such a painful sensation... And who knows? Maybe when I come to leave it many years hence I may regret it!”\
> — Fëdor Dostoevskij, The House of the Dead

> **Ringraziamenti**\
> “Ecco il mio ponte d’approdo per molti lunghi anni, il mio angoletto, nel quale faccio il mio ingresso con una sensazione così diffidente, così morbosa... Ma chi lo sa? Forse, quando tra molti anni mi toccherà abbandonarlo, magari potrei anche rimpiangerlo!”\
> — Fëdor Dostoevskij, Memorie da una casa di morti

Questa molto simpatica, era bella per la parte finale del "Forse, quando tra molti anni mi toccherà abbandonarlo, magari potrei anche rimpiangerlo", ma soprattutto divertente perché in realtà nel libro Dostoevskij stava parlando della prigione (tecnicamente, colonia penale) in cui era rinchiuso! Quindi commovente se uno non sa il vero riferimento dietro, ma altrimenti molto ironica se viene colto il parallelismo tra politecnico e prigione.

### Il titolo
Il titolo completo è "The DRPM Strikes Back: More Flexibility for a Bayesian Spatio-Temporal Clustering Model". La seconda parte è quella seria, la prima è invece chiaramente ispirata al film di Star Wars "The Empire Strikes Back", che per quanto divertente è comunque sensata, motivata. Infatti il lavoro di tesi è consistito nel prendere questo modello, il DRPM, che esisteva già, creato da altri autori qualche anno fa, e migliorarlo, generalizzarlo. Quindi in effetti "il modello ha colpito ancora", la sua vita non è finita con l'articolo dei primi autori, ma ha proseguito una seconda volta col mio lavoro.

\fig{/assets/Tesi/THE DRPM cut.png}

Comunque, prima che vincesse questa scelta avevo in realtà anche altre alternative in mente (tra tonde la parola nel titolo originale):
- sempre da Star Wars, "the revenge of the DRPM (Sith)"
- dalla saga di James Bond, "on DRPM's (her majesty's) secret service" e anche "the DRPM (world) is not enough"
- da un film random, "the model (man) who lived twice"



### L'argomento
presto scriverò questa parte

## Le slides

Carico anche le slide usate per la presentazione, dato che non se ne trovano molte in giro, mentre credo siano utili come esempio per capire come debbano essere strutturate. L'idea, in base alla mia esperienza e ovviamente anche in seguito a quanto hanno suggerito i miei relatori, è che 
1. ci debba essere una slide veloce iniziale per presentare nell'insieme che lavoro avete fatto (quale problema avete affrontato, in cosa è effettivamente consistito il vostro contributo, ecc), proprio una singola paginetta che mostra il vostro lavoro con uno sguardo d'insieme
2. un breve approfondimento del problema che avete affrontato, per inquadrare meglio il contesto a chi ascolta
3. un lungo approfondimento del vostro lavoro: cosa avete fatto, quali test avete condotto per verificare l'efficacia del vostro lavoro, a quali risultati siete pervenuti, ecc; dovete convincere della qualità e quantità del vostro lavoro
5. due slide finali riassuntive per indicare i punti forti del vostro lavoro e i punti deboli o eventuali idee di sviluppo future
4. le reference (la bibliografia) principale, la lista dei riferimenti più rilevanti

{{ pdf /assets/Tesi/2024_12_Mor_Slides.pdf }}


## Il dietro le quinte
presto scriverò questa parte

