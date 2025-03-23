+++
title = "Portfolio"
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

## The thesis
In 2022, Garritt Page and other authors created a Bayesian model, [the DRPM](https://arxiv.org/abs/1912.11542) (Dependent Random Partition Model), for clustering spatio-temporal data. That is, we have $n$ subjects, or units, that measure some target variable and that are placed somewhere in space, and want to cluster them at each time point $t=1, \ldots,T$; thus creating a sequence of clusters configurations.

So far it's nothing new, there were already other models that could do this. However, what characterizes DRPM is the _direct_ modelling of time dependencies in the clusters sequence, i.e. how the partition at time $t$ is influenced by the one at time $t-1$. In this way, clusters are generated taking into account both spatial and temporal information, ultimately producing a much smoother, gentler and therefore more interpretable evolution of the clusters. Other models, on the contrary, do not take into account the time dimension, thus generating each partition independently and disconnected from each other.

My thesis work has been to improve the model, or to generalize it, using a more cautious term. In doing so, I acted on several aspects:
1. Other than space and time information, I additionally incorporated covariates into the clustering process (i.e., in their prior of the partition, using the more appropriate Bayesian slang). The information provided by the covariates is indeed of great importance. For example, if the target variable to clusterised is PM10, as in the tests we performed, then other environmental variables such as wind intensity and direction, amount of rain, traffic, presence of industries, etc (the covariates) would be very useful for producing more precise and characterized clusters. 
2. I slightly revised the model formulation, choosing different distributions for variances that ensured a greater precision in the sampling algorithm of the various model parameters. Moreover, I introduced a regression term in the likelihood, therefore providing greater flexibility allowing one to include the information of covariates also in this part of the model.
3. I allowed the model to accept missing data. In fact, the original version only worked on complete datasets, but in real scenarios often some data can be missing, for example due to failures or malfunctions of the measurement sensors. To implement this new feature, I derived an update rule that allows the model to sample even the missing data values.
4. I developed a new model implementation. The original one was written in C and it was actually a bit slow; so this time, for writing the new sampling algorithm of the model once my modifications were integrated, I chose Julia. Writing it in Julia resulted in much faster version, with peaks of speedup around to 2x (i.e. my model now takes half the time to be fitted, compared to the original version written in C). 

All the work was conducted in R and Julia, with also some C experiments on the old code. Everything is available [here](https://github.com/federicomor/Tesi).

{{ pdf /assets/tesi/2024_12_Mor_Thesis.pdf }}

## Bayesian Statistics project
We applied Bayesian models to cluster spatio-temporal data about air pollution in the Lombardy region of Italy. We took the data from the [ARPA site](https://www.arpalombardia.it/), where they were publicly available, which we then cleaned and transformed to derive a final dataset composed by weekly measurements of PM10, along with other environmental variables, for the year 2018 (we choose this year for reasons related to stability with respect to covid-inducted anomalies and missing values). Then we performed spatio-temporal clustering, meaning that, for each model, we derived a sequence of clusters (hence, the "temporal"), one representing each week of data, identified by labels attributed to the locations of the measuring stations (hence, the "spatial").\
We tested four models to analyse and compare their different characteristics as one was purely spatial (sPPM), one included space and time information (DRPM), and the other two included covariates information (Gaussian PPMx and Curve PPMx). Therefore, only the DRPM was capable to naturally incorporate the time component into the clustering process, directly producing the sequence of clusters. On the contrary, for the other models we had to fit them independently at every time instant, manually producing the sequence of clusters. 

We managed to identify interesting patterns of the clusters and to interpret their root causes, especially thanks to the results provided by the models which included covariates. For example, we identified a set of morphological variables and anthropological factors which most relevantly affected the pollution levels of the clusters. All our results were summarised in the report that follows.

We also created a [dashboard](/assets/figures/visualize.html) as a web page, combining some html and javascript, and also as an R Shiny Dashboard (however, this is only a draft). This allowed to better showcase and guide the analysis and interpretation. 

All the work was conducted using R, and everything is available [here](https://github.com/federicomor/progetto-bayesian).

~~~
<a href="/assets/figures/visualize.html" style="display: block; text-decoration: none; color: inherit;">
<img src="/portfolio/bayesian_html_dashboard2.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    final dashboard, created as a web page using html, css, and javascript
  </p>
~~~ 

~~~
<img src="/portfolio/bayesian_shiny_dashboard.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    draft of the dashbobard created using R Shiny Dashboard
  </p>
~~~ 


{{pdf /assets/uni/bayesian_report_polimi.pdf }}

## Quality Data Analysis project
In this project we had to develop a statistical process monitoring algorithm to detect defects in 3D-printed objects using control charts, the method we learned at lectures. We firstly performed a deep analysis of the images, applying them several transformations and operations to precisely isolate each 3d-printed object, and secondly we calculated some relevant geometrical variables (such as perimeter, area, and curvature) as well as more specific variables devoted to structure of the printed object (number of voids, area of the voids, etc).

In the end, testing our algorithm, we managed to achieve an accuracy of 95%, correctly classifying 38 objects (between intact and damaged ones) out of the 40 available in the dataset. 

All the work was conducted using Python, and everything is available [here](https://github.com/abylai11/qda-project).


{{pdf /assets/uni/qda_report.pdf }}

## Applied Statistics project
In this project we had to develop a statistical analysis on a topic at our choice. We studied the [PISA dataset](https://www.oecd.org/en/data/datasets/pisa-2022-database.html), which contains data collected from students around european high schools. Our goal was to study their well-being, both 
- psychological (do they believe in themselves? can they bear school failures and successes? are they scared about their future? etc);
- and social (do they feel supported by their families, classmates, and teachers? do they suffer some bullying events? etc).

We applied several statistical techniques such as linear mixed models, random forests, PCA, Manova and Anova, to derive in the end a complete understanding of the variables that could improve the well-being (e.g. increasing the presence of books at home, having more possibilities of playing sports, renovating the school facilities, giving specific training of the teachers, etc), as well as a final ranking of the schools around Europe, as the title "Where are the happiest students?" suggests. 

To explain our results, we composed the following poster, as well as developed an interactive game through a Telegram bot, to make the player impersonate the Minister of Education, for a state of their choice, and decide where should they spend their budget in order to improve the well-being of the students of their country. A final scoreboard of the players was also available online, and updating in real-time, to make the players see how they position themselves, and against to each other, according to their strategy.

All the statistical work was conducted in R, while the bot development in Julia. Everything is available [here](https://github.com/federicomor/progetto-applied).  

<!-- In questo progetto abbiamo sviluppato un'analisi statistica su un tema a nostra scelta. Abbiamo studiato il PISA dataset, che comprende dati riguardo agli studenti delle scuole medie in Europa, con l'obiettivo di indagare il loro benessere fisico e psicologico. -->

{{pdf /assets/uni/A0_poster_Applied_Statistics_CYMK.pdf }}

## Artificial Neural Networks and Deep Learning project

In this project we had to develop a solution through a neural network to solve two challenges:
1. detecting if a plant is healthy or unhealthy based of pictures of their leaves;
2. developing a tool for time series forecasting.

Personally, I don't really enjoyed this approach of neural networks; I prefer more theoretical validated methods, as the more statistical ones employed in the other projects, rather than just letting a network learn and "hope for the best" by tuning its structure and parameters. Nonetheless, it has been an interesting project.

Here, all the work was conducted using Python.

{{pdf /portfolio/ANNDL_challenge1.pdf }}
{{pdf /portfolio/ANNDL_challenge2.pdf }}


## Generalized 15 puzzle

In the first year, at the fourth computer lab of the "Informatica A" course, one of the exercises was to implement the game of 15 in C, the one with the 4 by 4 grid, an empty cell, and the numbers inside to be reordered. But, while I was there, I took the opportunity of having some little more fun and I implemented the game in its generic dimension, $N$ by $N$. In this way, the "15 game" extended into the "$(N^{2}-1)$ game".\
The original code was written in C ([here](/assets/scripts/gioco_15.c) is the code) but [here](/assets/uni/15_game.html) you can find an equivalent (and playable!) version which uses html and javascript.

About the game design, it is worth noting that the initial board cannot be simply initialized with random numbers, as otherwise one could get unsolvable configurations as this one
\nonumber{$$
\begin{bmatrix}
1 & 2 & 3\\
4 & 5 & 6\\
\bf{8} & \bf{7} & \square
 % 8 & 7 & \square
\end{bmatrix}
$$}
<!-- $\{1\,2\,3;\,4\,5\,6;\,8\,7\;\square \}$,  -->
where numbers 8 and 7 cannot be exchanged. Therefore for the initialization of the board, as well as to adjust the difficulty of the game, the code starts from a solved board and applies to it random moves for some time, so that we shuffle the sequence of numbers while preserving the possibility of solving the game.

~~~
<img src="/portfolio/classic_15_game.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    classic 15 game
  </p>
~~~ 

~~~
<a href="/assets/uni/15_game.html" style="display: block; text-decoration: none; color: inherit;">
<img src="/portfolio/generalized_15_game.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    generalized 15 game
  </p>
~~~ 

## Quoridor gameplay
[Quoridor](https://it.wikipedia.org/wiki/Quoridor) is a very interesting game but unfortunately not very popular, yet. I think that its charm derives from being a game with very simple rules but which becomes complex and entertaining due to the wide possibilities of strategy. Something like chess but without the eccessive complexity of the opening strategies.

The rules state that each player has a checker that, in order to win, has to reach the other side of the board, and during the travel can place some separators, the walls, which can either facilitate his path or hinder the one of the opponent (but always leaving him a way to get to his goal, i.e., the opponent can not be "trapped"). So one has to face several decisions: when to move, when to place a wall, where to place it, if to place it with a short term view or for the endgame, etc; hence the complexity and attraction of the game.

Given these interesting premises, me and my friend Ettore started to code the game, especially with the aim of developing some AI agents that would fight against us or themselves in a tournament. For now it is just a work in progress, and [here](https://github.com/ettoremodina/Quoridor-competition) you can find the code written in C++ by Ettore or in Julia by me. The rules and the interface have been implemented, so the game is playable, but it remains the complex and funny part of developing the AI agents. For now in Julia two agents are implemented: `rand_AI`, which plays randomly, and `target_AI`, which greedily moves following the shortest path to the victory.

~~~
<a href="https://github.com/ettoremodina/Quoridor-competition" style="display: block; text-decoration: none; color: inherit;">
<img src="/assets/uni/quoridor_game.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    example of the gameplay interface in Julia
  </p>
~~~ 


## Pdf union preserving the tables of contents
I developed this small project to merge all the pdf's which professors provided us for their lessons. This because I didn't like the idea of keeping them separate while they are jointly connected by the flow of the course: I wanted to assemble them into a single and tidy document which would condense all the material. This union task was easy, there are already several tools to combine pdf's; the additional requirement that I introduced was to combine their _table of contents_, so to keep the tidyness of having a pdf divided into (clickable) sections and subsections also in the final document, easing the studying task of quickly wandering around the course material.

In other words, the script combines each input pdf into the final document while also introducing a global table of contents where the name of each input pdf becomes a Section, and the corresponding sections of the input file become Subsections of the newly introduced Section in the final file.  

In the end, I managed to implement this idea using a bash script, which you can find [here](https://github.com/federicomor/merge-pdf-with-toc).

~~~
<a href="https://github.com/federicomor/merge-pdf-with-toc" style="display: block; text-decoration: none; color: inherit;">
<img src="/portfolio/merge_pdf_with_toc.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    representation of what the script does
  </p>
~~~ 


## Writing with chemistry
This is a project that probably dates back to high school years where, inspired by the periodic table hang on the wall of the classroom, I tried to build words and phrases using the elements from the periodic table as letters. With this in mind, I implemented this idea with some C code, available [here](https://github.com/federicomor/writing-with-chemistry), which is also proposed here through a conversion to javascript.

~~~ 
<!-- Switch to select between English and Italian -->
<div class="switch-container">
    <label>
        <input type="radio" name="language" value="eng" checked onchange="loadElementsAndProcess();"> English
    </label>
    <label>
        <input type="radio" name="language" value="ita" onchange="loadElementsAndProcess();"> Italian
    </label>
</div>

<textarea id="inputText" oninput="processText();" style="width: 60%; text-transform: lowercase;">wow that's fun!</textarea><br>
<!-- "proprio carino" in italian -->
<pre id="output" style="color: #515151; font-size: 11pt; line-height: 13pt;"></pre>

<script>
// Class for chemical elements
class Elemento {
    constructor(numero_atomico, simbolo, nome) {
        this.numero_atomico = numero_atomico;
        this.simbolo = simbolo;
        this.nome = nome;
    }
}

let elementi = [];

// Load the periodic table based on language selection
async function loadElements() {
    elementi = [];

    const lang = document.querySelector('input[name="language"]:checked').value;
    const fileName = lang === 'ita' 
	? '/portfolio/chem_table_ita.txt' 
	: '/portfolio/chem_table_eng.txt';

    try {
        const response = await fetch(fileName);

        if (!response.ok) throw new Error(`Failed to load ${fileName}`);

        const data = await response.text();
        const lines = data.trim().split("\n");

        for (let line of lines) {
            const parts = line.trim().split(/\s+/);
            if (parts.length === 3) {
                const [nome, simbolo, numero] = parts;
                elementi.push(new Elemento(parseInt(numero), simbolo, nome));
            }
        }
    } catch (error) {
        alert(`Error: ${error.message}`);
        console.error(error);
    }
}

// Parse the input text and match it against the elements
function processText() {
	// const str = document.getElementById("inputText").value.trim();
	const str = document.getElementById("inputText").value.toLowerCase().trim();
    const output = document.getElementById("output");
    output.innerHTML = "";

    if (str === "") {
        output.innerHTML = "Please enter text to parse.";
        return;
    }

    function printable(input, depth) {
    // Skip non-alphanumeric characters like spaces, commas, etc.
    if (input.length > 0 && !/[a-zA-Z]/.test(input[0])) {
        output.innerHTML += `${" | ".repeat(depth)}${input[0]}\n`;
        printable(input.substring(1), depth); // Continue with the next character
        return;
    }

    // If input is empty, print the end of a path
    if (input.length === 0) {
        output.innerHTML += `${" | ".repeat(depth-1)}<span style="color: green;">-> (ALL MATCHED) END :)</span>\n`;
        return;
    }

    let matched = false;

    // Check for both 1-letter and 2-letter matches
    for (const el of elementi) {
        if (input.startsWith(el.simbolo)) {
            // Print the matched element and continue the search recursively
            output.innerHTML += `${" | ".repeat(depth)}${el.simbolo} (${el.nome})\n`;
            printable(input.substring(el.simbolo.length), depth + 1);
            matched = true;  // Mark that a match was found
        }
    }

    // If no match is found, stop and print "unmatched"
    if (!matched) {
        output.innerHTML += `${" | ".repeat(depth)}<span style="color: red;">${input[0]} (NO MATCH) STOP :/</span>\n`;
    }
}


    // Call printable with the full input and initial depth
    printable(str, 0);
}

// Load elements and immediately process the input text
function loadElementsAndProcess() {
    loadElements().then(() => {
        processText(); // Reprocess the input after language is changed
    });
}

// Initial loading of elements when page is first loaded
window.onload = loadElementsAndProcess;
</script>

~~~ 