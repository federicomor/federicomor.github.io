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
In 2022, Garritt Page and other authors created a Bayesian model, [the DRPM](https://arxiv.org/abs/1912.11542) (Dependent Random Partition Model), for clustering spatio-temporal data. That is, we have $n$ subjects, or units, that measure some target variable and that are placed somewhere in space, and want to cluster them at each time point $t=1, ldots,T$; thus creating a sequence of clusters configurations.

So far it's nothing new, there were already other models that could do this. However, what characterizes DRPM is the _direct_ modelling of time dependencies in the clusters sequence, i.e. how the partition at time $t$ is influenced by the one at time $t-1$. In this way, clusters are generated taking into account both spatial and temporal information, ultimately producing a much smoother, gentler and therefore more interpretable evolution of the clusters. Other models, on the contrary, do not take into account the time dimension, thus generating each partition independently and disconnected from each other.

My thesis work has been to improve the model, or to generalize it, using a more cautious term. In doing so, I acted on several aspects:
1. Other than space and time information, I additionally incorporated covariates into the clustering process (i.e., in their prior of the partition, using the more appropiate Bayesian slang). The information provided by the covariates is indeed of great importance. For example, if the target variable to clusterize is PM10, as in the tests we performed, then other environmental variables such as wind intensity and direction, amount of rain, traffic, presence of industries, etc (the covariates) would be very useful for producing more precise and characterized clusters. 
2. I slightly revised the model formulation, choosing different distributions for variances that ensured a greater precision in the sampling algorithm of the various model parameters. Moreover, I introduced a regression term in the likelihood, therefore providing greater flexibility allowing one to include the information of covariates also in this part of the model.
3. I allowed the model to accept missing data. In fact, the original version only worked on complete datasets, but in real scenarios often some data can be missing, for example due to failures or malfunctions of the measurement sensors. To implement this new feature, I derived an update rule that allows the model to sample even the missing data values.
4. I developed a new model implementation. The original one was written in C and it was actually a bit slow; so this time, for writing the new sampling algorithm of the model once my modifications were integrated, I chose Julia. Writing it in Julia granted us a much faster version, with peaks of speedup equal to around 2x (i.e. my model, to be executed, now takes half the time compared to the original version). 

All the work was conducted in R and Julia, with also some C experiments on the old code. All the code is available [here](https://github.com/federicomor/Tesi).

{{ pdf /assets/tesi/2024_12_Mor_Thesis.pdf }}

## Bayesian Statistics project
We applied four Bayesian models to cluster spatio-temporal data about air pollution in the Lombardy region, Italy. The data were publicly available from the [ARPA site](https://www.arpalombardia.it/), which we then cleaned and transformed to derive a final dataset composed by weekly measurements of PM10, and other environmental variables, for the year 2018. In this way, the task for each model was to derive a sequence of clusters, one representing each week.\
We tested four models to analyse and compare their different characteristics, since one was purely spatial (sPPM), one included space and time information (DRPM), and the other two included covariates information (Gaussian PPMx and Curve PPMx). Therefore, only DRPM was capable to include the time component into the clustering process, directly producing the sequence of clusters, while for the other models we had to fit them independently at every time instant. 

We managed to identify interesting patterns of the clusters as well as interpreted their root causes, especially thanks to the models which included covariates. For example, we identified a set of morphological variables and anthropological factors which most relevantly affected the pollution levels of the clusters. All our results were summarised in the report that follows.

We also created a [dashboard](/assets/figures/visualize.html), both as a web page as well as a draft using R Shiny Dashboards, to display all the relevant plots that we produced. This allowed to better showcase and guide our analysis and interpretation. 

All the work was conduceted using R.

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
In this projoect we had to develop a statistical process monitoring method to detect defects into 3D-printed objects, using control charts, the method we learned at lectures. We firstly performed a deep analysis of the images, transforming them to precisely crop the printed objects and then compute on them relevant geometrical variables such as perimeter, area, curvature, as well as more specific variables devoted to structure of the printed object (number of voids, area of the voids, etc).

In the end, testing our solution, we managed to achieve an accuracy of 95%, identifying correctly 38 objects out of 40 among intact and damaged ones. 

All the work was conducted using Python.


{{pdf /assets/uni/qda_report.pdf }}

## Applied Statistics project
In this project we had to develop a statistical analysis on a topic at our choice. We studied the [PISA dataset](https://www.oecd.org/en/data/datasets/pisa-2022-database.html), which contains data collected from students in european high schools. Our goal was to study their well-being, both psychological (do they believe in themselves? can they bear school failures and successes? are they scared about their future? etc) and social (do they feel supported by their families, classmates, and teachers? do they suffer bullying incidents? etc).

We applied several statistical techniques such as linear mixed models, random forests, PCA, Manova and Anova, to derive in the end a complete understanding of the variables could improve the well-being (e.g. the presence of books at home, possibilities of playing sports, renovation of the school facilities, specific training of the teachers, etc), as well as a final ranking of the shools around Europe, as the title "Where are the happiest students?" suggests. 

To explain our results, we composed the following poster, as well as developed an interactive game through a Telegram bot, to make the player impersonate the Minister of Education, for a state of their choice, and decide where should they spend their budget in order to improve the well-being of the students of their country. A final scoreboard of the players was available online and updating in real-time, to see how each player would position according to their strategy.

All the statitical work was conducted in R, while the bot development in Julia.  

<!-- In questo progetto abbiamo sviluppato un'analisi statistica su un tema a nostra scelta. Abbiamo studiato il PISA dataset, che comprende dati riguardo agli studenti delle scuole medie in Europa, con l'obiettivo di indagare il loro benessere fisico e psicologico. -->

{{pdf /assets/uni/A0_poster_Applied_Statistics_CYMK.pdf }}

## Artificial Neural Networks and Deep Learning project

In this projcet we had to develop a solution through a neural network to solve two challenges:
1. detecting if a plant is healthy or unhealthy based of pictures of their leaves
2. developing a tool for time series prediction

Personally, I don't really like this approach of neural networks, I prefer more theoretical profound and valid approaches, as the more statistical ones described above, rahter than just letting a network learn and "hope for the best" by tuning its structure and parameters. Nonetheless, it has been an interesting project.

Here, all the work was conducted using Python.

{{pdf /portfolio/ANNDL_challenge1.pdf }}
{{pdf /portfolio/ANNDL_challenge2.pdf }}


## Generalized 15 puzzle

In the first year, at the fourth computer lab of the "Informatica A" course (morally, the first computer science class), we had to implement the game of 15 in C, the one with the 4 by 4 grid, an empty cell, and the numbers inside to be reordered. But, while I was there, taking the opportunity of having more fun, I implemented the game in its generic dimension, $N$ by $N$. In this way, the "15 game" became extended into the "$(N 2-1)$ game". 

The original code was written in C, but [here](/assets/uni/15_game.html) you can find an equivalent (and playable!) version which uses html and javascript.

It is worth to note that the inital board cannot be simply initialized with random numbers, otherwise one could get unsolvable configurations as this one
\nonumber{$$
\begin{bmatrix}
1 & 2 & 3\\
4 & 5 & 6\\
\bf{8} & \bf{7} & \square
 % 8 & 7 & \square
\end{bmatrix}
$$}
<!-- $\{1\,2\,3;\,4\,5\,6;\,8\,7\;\square \}$,  -->
where numbers 8 and 7 cannot be exchanged. Therfore, for the initialization of the board as well as to adjust the difficulty of the game, the code starts from a solved board and applies random moves for some time, in order to shuffle the sequence of numbers while preserving the possibility of solving the game.

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
[Quoridor](https://it.wikipedia.org/wiki/Quoridor) is a very interesting game, but unfortunately not yet very popular. I think that its charm derives from being a game with very simple rules but which becomes complex and entertaining due to the wide possibilities of strategy.

The rules stae that each player has a checker that, in order to win, has to reach the other side of the board, and during the travel can place some separators, the walls, which can either facilitate his path or hinder the one of the opponent (but always leaving him a way to get to his goal, i.e., the opponent can not be "trapped"). So one has to consider when to move, when to place a wall, where to place it, if to place it with a short term view or for the endgame, etc.

Given these interesting premises, me and my friend Ettore started to code the game with also the aim of developing some AI agents that would fight against us or themselves in a tournament. However, for now it is a work in progress, and [here](https://github.com/ettoremodina/Quoridor-competition) you can find the code written in C++ by Ettore or in Julia by me. The rules and the interface have been implemented, so the game is playable, but it remains the complex and funny part of developing the AI agents (which for now are just two implemented: `rand_AI` which playes randomly and `target_AI` which greedily moves following the shortest path to the victory).

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
I developed this small project to merge all the pdf's which professors provided us for their lessons. In fact, I didn't like the idea of keeping them separate while they are jointly connected by the flow of the course: I wanted to assemble them into a single and tidy document condensing all the material. This was easy, there are several tools to combine pdf's; the additional requirement that I introduced was to combine their _table of contents_, so to keep the tidyness of having a pdf divided into sections also in the final document.

More precisely, the script combines each input pdf into the final document while also introducing a global table of contents where the name of each input pdf becomes a Section, and the corresponding sections of the input file become subsections of the newly introduced Section in the final file.  

In the end, I managed to perform it using a simple bash script, which you can find [here](https://github.com/federicomor/merge-pdf-with-toc).

~~~
<a href="https://github.com/federicomor/merge-pdf-with-toc" style="display: block; text-decoration: none; color: inherit;">
<img src="/portfolio/merge_pdf_with_toc.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    representation of what the script should do
  </p>
~~~ 
