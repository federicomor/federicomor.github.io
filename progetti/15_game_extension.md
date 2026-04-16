+++
title = "15 Puzzle Game Extension"
+++

# 15 Puzzle Game Extension

In the first year of university, at the fourth computer lab of the "Informatica A" course, one of the exercises asked to implement in C the game of 15, the famous one with the 4 by 4 grid, an empty cell, and the numbers inside to be reordered. But, since I was already there messing around, I took the opportunity of having some little more fun and I implemented the game in its generic dimension, $N$ by $N$. In this way, the "15 game" extended into the "$(N^{2}-1)$ game". 

[The original code](/assets/scripts/gioco_15.c) was written in C, but [here](/assets/profetti/15_game.html) you can find an equivalent and playable version which uses html and javascript. 

About the game, albeit simple it involves some interesting math concepts. For example, it is worth noting that the initial board cannot be simply initialized with random numbers, as otherwise one could get unsolvable configurations as this one

$$ \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ \bf{8} & \bf{7} & \square \end{bmatrix} $$

<!-- $\{1\,2\,3;\,4\,5\,6;\,8\,7\;\square \}$,  -->
where numbers 8 and 7 cannot be exchanged. Therefore the initialization of the board can either be made by starting from the solved state and repeatedly performing random moves, so that we surely derive a final configuration which is solvable, or by really shuffling all the tiles but with a final check, as explained e.g. [here](https://en.wikipedia.org/wiki/15_puzzle#Solvability), on the solvability of the board. In the provided implementation, the code employs the first approach so that it can also be easily tuned the desired complexity of the game.

~~~
<a href="/assets/progetti/15_game.html" style="display: block; text-decoration: none; color: inherit;">
<img src="/assets/progetti/15puzzle_extension.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    click on the image to play it!
  </p>
~~~ 