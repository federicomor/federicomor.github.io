+++
title = "Progetto Eulero"
hascode = true
hasplotly = true
+++

<!-- println("""<table class="progress">""")
println("<tr>")
for i in 1:1000
   println("""<td class="blank"><a href="/activity/project_euler/problem_$i">$i</a></td>""")
	if i%25==0
		println("</tr>\n<tr>")
	end
	if i%100==0
		println("""</table>\n<table class="progress">""")
	end
  end
println("</table>") -->


## Progetto Eulero
<!-- Prima pensavo di risolverli tutti in ordine, ora invece credo sia meglio filtrare solo quelli realmente complicati e interessanti. I primi infatti erano troppo facili quindi imbarazzanti anche per me da raccontare. -->

<!-- - [1](/activity/project_euler/problem_1)
- [2](/activity/project_euler/problem_2)
 -->

_Clicca su un problema per aprire la sua pagina dedicata_
~~~
<style>
   table.code    { empty-cells: show; counter-reset: line; width: 100%; margin: 0; padding: 0; }
   table.code td { padding: 0 0.75em; }
   table.code td:before { counter-increment: line; content: counter(line);
                          color: #CCCCCC;
                          display: inline-block; padding-right: 1em; text-align: right; width: 2em; }
   table.code tr:nth-child(odd)  { background: #F6F9FB; }
   table.code tr:nth-child(even) { background: #FDFDFD; }
   table.code tr:hover           { background: #FFFFCC; transition: background-color 0.8s ease-out; }

   table.data                    { border: 1px solid #333333; margin-bottom: 1em; }
   table.data tr:first-child     { background: #FFFFDD !important; }
   table.data tr:nth-child(odd)  { background: #F6F9FB; }
   table.data tr:nth-child(even) { background: #FDFDFD; }
   table.data tr:hover           { background: #FFFFDD; transition: background-color 0.8s ease-out; }
   table.data th, table.data td  { border: 1px solid #333333; padding: 0.1em 0.5em; }

   td.note {         background-color: #90005D; color: #DDFFDD; padding: 0 0.2em; }
   td.approx { background-color: #EA99C0; color: #DDFFDD; padding: 0 0.2em; }
   td.blank {        background-color: #F9F9F9; color: #333333; padding: 0 0.2em; }
   td.solved {       background-color: #94C96E; color: #DDFFDD; padding: 0 0.2em; font-weight: bold; }
   td.video {        background-color: #315D00; color: #DDFFDD; padding: 0 0.2em; font-weight: bold; }

   table.progress      { margin: 1em; }
   table.progress td   { text-align: center; border: 1px solid #000000; padding: 0; width: 2.2em; 
   						 font-size: 13px; }
   table.progress td * { display: block; border: 1px solid transparent; width: 95%; }
   table.progress a    { color: inherit; text-decoration: none; }
   table.progress a:hover { border: 1px solid #DDDDDD; }
   td.live             { color: green; font-weight: bold; }

   progress::-webkit-progress-bar   { background-color: transparent; }
   progress::-webkit-progress-value { background-color: #DDDDDD; }
   progress::-moz-progress-bar      { background-color: #DDDDDD; }

   span.move_anchor       { padding-top: 3em; margin-top: 3em; }
   span.recent_solutions  { display: inline-block; width: 9em; text-align: right; margin-right: 1em; }
   
   .legend {
        display: inline-block;
        // margin-right: 20px;
        // margin-left: 20px;
        text-align: left;
    }
    .legend-item {
        display: flex;
        align-items: center;
        margin: 5px 0;
        margin-top: -2px;
    }
    .legend-color {
        width: 20px;
        height: 20px;
        margin-right: 10px;
        border: 1px solid #000;
    }

   .note {         background-color: #90005D; color: #DDFFDD; padding: 0 0.2em; }
   .approx { background-color: #EA99C0; color: #DDFFDD; padding: 0 0.2em; }
   .blank {        background-color: #F9F9F9; color: #333333; padding: 0 0.2em; }
   .solved {       background-color: #94C96E; color: #DDFFDD; padding: 0 0.2em; font-weight: bold; }
   .video {        background-color: #315D00; color: #DDFFDD; padding: 0 0.2em; font-weight: bold; }

    </style>
	<div class="legend">
        <div class="legend-item"><div class="legend-color note"></div> (tag note) qualcosa di particolare da segnalare</div>
        <div class="legend-item"><div class="legend-color approx"></div> (tag approx) trovata una soluzione che approssima quella esatta</div>
        <div class="legend-item"><div class="legend-color blank"></div> (tag blank) ancora da affrontare</div>
        <div class="legend-item"><div class="legend-color solved"></div> (tag solved) risolto, con soluzione commentata</div>
        <div class="legend-item"><div class="legend-color video"></div> (tag video) risolto, commentato, e c'è/ci sarà il video</div>
    </div>
    <br>
    <br>
    <!-- <div style="margin: 34px 0;"></div> -->

<!-- <i>Clicca su un problema per aprire la sua pagina dedicata</i> -->
<!-- <br> -->

<table class="progress">
<tr>
<td class="video"><a href="/activity/project_euler/problem_1">1</a></td>
<td class="video"><a href="/activity/project_euler/problem_2">2</a></td>
<td class="video"><a href="/activity/project_euler/problem_3">3</a></td>
<td class="solved"><a href="/activity/project_euler/problem_4">4</a></td>
<td class="blank"><a href="/activity/project_euler/problem_5">5</a></td>
<td class="blank"><a href="/activity/project_euler/problem_6">6</a></td>
<td class="blank"><a href="/activity/project_euler/problem_7">7</a></td>
<td class="blank"><a href="/activity/project_euler/problem_8">8</a></td>
<td class="blank"><a href="/activity/project_euler/problem_9">9</a></td>
<td class="blank"><a href="/activity/project_euler/problem_10">10</a></td>
<td class="blank"><a href="/activity/project_euler/problem_11">11</a></td>
<td class="blank"><a href="/activity/project_euler/problem_12">12</a></td>
<td class="blank"><a href="/activity/project_euler/problem_13">13</a></td>
<td class="blank"><a href="/activity/project_euler/problem_14">14</a></td>
<td class="blank"><a href="/activity/project_euler/problem_15">15</a></td>
</tr>
<tr>
<td class="blank"><a href="/activity/project_euler/problem_26">26</a></td>
<td class="blank"><a href="/activity/project_euler/problem_27">27</a></td>
<td class="blank"><a href="/activity/project_euler/problem_28">28</a></td>
<td class="blank"><a href="/activity/project_euler/problem_29">29</a></td>
<td class="blank"><a href="/activity/project_euler/problem_30">30</a></td>
<td class="blank"><a href="/activity/project_euler/problem_31">31</a></td>
<td class="blank"><a href="/activity/project_euler/problem_32">32</a></td>
<td class="blank"><a href="/activity/project_euler/problem_33">33</a></td>
<td class="blank"><a href="/activity/project_euler/problem_34">34</a></td>
<td class="blank"><a href="/activity/project_euler/problem_35">35</a></td>
<td class="blank"><a href="/activity/project_euler/problem_36">36</a></td>
<td class="blank"><a href="/activity/project_euler/problem_37">37</a></td>
<td class="blank"><a href="/activity/project_euler/problem_38">38</a></td>
<td class="blank"><a href="/activity/project_euler/problem_39">39</a></td>
<td class="blank"><a href="/activity/project_euler/problem_40">40</a></td>
</tr>
<tr>
</tr>
</table>
~~~