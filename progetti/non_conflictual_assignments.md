+++
title = "Non-conflictual referee/match assignments"
+++

# Non-conflictual referee/match assignments

Suppose that eight teams are playing a 2v2 tournament on four fields. They decide to self refereeing themselves, assigning one person from each team to be a referee at a certain field, setting in this way two referees per field. How can the tournament matches be assigned to the fields so that no conflicts of interests occur? For example, if teams A and B have to meet up, team B doesn't want to play in a field where there is a referee from team A, and viceversa. So can all these requirements be satisfied?

More in general, let $T=2n$ be the number of teams, therefore playing on $F=T/2$ fields, and $k\geq 2$ be the number of referees that they want to have on each field. Note that if $k$ is even then each team will provide $k/2$ referees, while if $k$ is odd then $\lceil k/2 \rceil$ referees will be provided by half of the teams an $\lfloor k/2 \rfloor$ by the other half. More mathematical details should and probably will come but for now we directly skip to defining a _non-conflictual assignment_ as a perfect matching between matches and fields so that each match is played in a field where none of the referees of that field belongs to one of the teams playing that match.

For now I analysed the case of eight teams and two referees per field, and it is surely always possible to perform _non-conflictual assignments_. [This dashboard](/assets/progetti/campi_grest.html) proves it and let you experiment with the possible combinations of refereed fields and matches. Further analysis on the general case will follow.

---

The idea for this problem came from my long and loved career as an educator in summer camps for children. In fact, every year the children were divided into eight teams, defined by some colored foulards which were given them on the first day. As kids grew up, they switched from being the protagonists of the summer camp, the players which participate in each activity, to be the educators, the ones which coordinate and organize all those activities by following and monitoring the children and refereeing at the fields where games were played. However, everyone is still assigned to a certain team, as the children which are playing, and so in the case of very high levels of competitions it was my duty, as one of the general coordinator of the educators, to ensure that all matches would be assigned to a field where no complains about the referee decisions would be raised. 

After some experiments I found a working algorithm which I could execute on the back of the sheet that I used to track the points and scores of the matches, and which the linked dashboard now provides in a prettier way.

~~~
<a href="/assets/progetti/campi_grest.html" style="display: block; text-decoration: none; color: inherit;">
<img src="/assets/img/grest.jpg" alt="Card Image" style="
border: solid 1px;
margin-bottom: -10px;"> 
</a>
<p style="font-size: 14px; color: grey; line-height: 1.2em; font-style: italic;">
    field with the playing kids; we can also see (e.g. on their ankles) the colored foulard which identifies their team
  </p>
~~~ 