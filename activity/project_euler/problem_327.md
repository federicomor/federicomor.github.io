+++
title = "P327"
hascode = true
hasplotly = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_326/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_328/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
</div>
~~~

~~~
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_main.1735430422.css">
<link rel="stylesheet" type="text/css" href="/activity/project_euler/style_default.1627113674.css">
<script src="https://projecteuler.net/js/mathjax_config.js"></script>
<script src="https://cdnjs.cloudflare.com/polyfill/v3/polyfill.min.js?version=4.8.0&features=es6"></script>
<script id="MathJax-script" async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>
<div id="content">

<div class="center print"><img src="https://projecteuler.net/images/clipart/print_page_logo.png" alt="projecteuler.net"></div>
<h2>Rooms of Doom</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 5th March 2011, 07:00 pm; Solved by 1221;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=327">Problem 327</a></h3></div>
<div class="problem_content" role="problem">
<p>A series of three rooms are connected to each other by automatic doors.</p>

<div align="center"><img src="https://projecteuler.net/resources/images/0327_rooms_of_doom.gif?1678992056" alt="0327_rooms_of_doom.gif"></div>

<p>Each door is operated by a security card. Once you enter a room the door automatically closes and that security card cannot be used again. A machine at the start will dispense an unlimited number of cards, but each room (including the starting room) contains scanners and if they detect that you are holding more than three security cards or if they detect an unattended security card on the floor, then all the doors will become permanently locked. However, each room contains a box where you may safely store any number of security cards for use at a later stage.</p>

<p>If you simply tried to travel through the rooms one at a time then as you entered room 3 you would have used all three cards and would be trapped in that room forever!</p>

<p>However, if you make use of the storage boxes, then escape is possible. For example, you could enter room 1 using your first card, place one card in the storage box, and use your third card to exit the room back to the start. Then after collecting three more cards from the dispensing machine you could use one to enter room 1 and collect the card you placed in the box a moment ago. You now have three cards again and will be able to travel through the remaining three doors. This method allows you to travel through all three rooms using six security cards in total.</p>

<p>It is possible to travel through six rooms using a total of $123$ security cards while carrying a maximum of $3$ cards.</p>

<p>Let $C$ be the maximum number of cards which can be carried at any time.</p>
<p>Let $R$ be the number of rooms to travel through.</p>
<p>Let $M(C,R)$ be the minimum number of cards required from the dispensing machine to travel through $R$ rooms carrying up to a maximum of $C$ cards at any time.</p>

<p>For example, $M(3,6)=123$ and $M(4,6)=23$.<br>And, $\sum M(C, 6) = 146$ for $3 \le C \le 4$.</p>


<p>You are given that $\sum M(C,10)=10382$ for $3 \le C \le 10$.</p>

<p>Find $\sum M(C,30)$ for $3 \le C \le 40$.</p>


</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
