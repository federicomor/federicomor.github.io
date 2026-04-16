+++
title = "Quoridor Project"
+++

# Quoridor Project

[Quoridor](https://it.wikipedia.org/wiki/Quoridor) is a very interesting game but unfortunately not very popular, yet. I think that its appeal derives from being a game with very simple rules but which easily becomes complex and entertaining due to the wide possibilities of strategies. Something like chess but without the eccessive complexity implied by the opening strategies.

The rules state that each player has a checker that, in order to win, has to reach the other side of the board. At each turn, the checker can either move in some direction or place some separators, the walls, which can e.g. facilitate his path or hinder the one of the opponent -- always leaving him a way to get to his goal, i.e., the opponent can not be "trapped". So in the game there are several decisions to take: when to move, when to place a wall and where to place it, e.g. with a short term view or in advance for the endgame, etc; hence the complexity and interest raised by this game.

Given these good premises, me and my friend Ettore started to code the game rules, also with the aim of developing some AI agents that would fight against us or each other in a tournament. For now it is just a work in progress, and the code written in C++ by Ettore or in Julia by me. The rules and the interface have been implemented, so the game is playable, so it now remains the complex and funny part of developing the AI agents. For now in Julia only two agents are implemented: `rand_AI`, which plays randomly, and `target_AI`, which greedily moves following the shortest path to the victory.

Github repository: [https://github.com/ettoremodina/Quoridor-competition](https://github.com/ettoremodina/Quoridor-competition).

~~~
<a href="https://github.com/ettoremodina/Quoridor-competition" style="display: block; text-decoration: none; color: inherit;">
<img src="/assets/progetti/quoridor_game.png" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    example of the gameplay interface in Julia
  </p>
~~~ 