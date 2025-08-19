+++
title = "P584"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_583/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
<a href="javascript:void(0)" onclick="getRandomProblem()" style="color: black; text-decoration: none;" title="random problem">🎲 </a>
<script>
  function getRandomProblem() {
    fetch('/activity/project_euler/data.txt') 
      .then(response => response.text())
      .then(data => {
        const maxProblems = parseInt(data.trim(), 10);
        const randomProblemNumber = Math.floor(Math.random() * maxProblems) + 1;
        window.location = '/activity/project_euler/problem_' + randomProblemNumber + '/';
      })
      .catch(err => console.error('Error fetching max problems:', err));
  }
</script>
<a href="/activity/project_euler" style="color: black; text-decoration: none;">🏠 </a>
<a href="/activity/project_euler/problem_585/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Birthday Problem Revisited</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Saturday, 31st December 2016, 04:00 pm; Solved by 243;<br>Difficulty rating: 100%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=584">Problem 584</a></h3></div>
<div class="problem_content" role="problem">
<p>A long long time ago in a galaxy far far away, the Wimwians, inhabitants of planet WimWi, discovered an unmanned drone that had landed on their planet. On examining the drone, they uncovered a device that sought the answer for the so called "<b>Birthday Problem</b>". The description of the problem was as follows:</p>

<p><i>If people on your planet were to enter a very large room one by one, what will be the expected number of people in the room when you first find <b>3 people with Birthdays within 1 day from each other</b>.</i></p>

<p>The description further instructed them to enter the answer into the device and send the drone into space again. Startled by this turn of events, the Wimwians consulted their best mathematicians. Each year on Wimwi has 10 days and the mathematicians assumed equally likely birthdays and ignored leap years (leap years in Wimwi have 11 days), and found 5.78688636 to be the required answer. As such, the Wimwians entered this answer and sent the drone back into space.</p>


<p>After traveling light years away, the drone then landed on planet Joka. The same events ensued except this time, the numbers in the device had changed due to some unknown technical issues. The description read:</p>

<p><i>If people on your planet were to enter a very large room one by one, what will be the expected number of people in the room when you first find <b>3 people with Birthdays within 7 days from each other</b>.</i></p>

<p>With a 100-day year on the planet, the Jokars (inhabitants of Joka) found the answer to be 8.48967364 (rounded to 8 decimal places because the device allowed only 8 places after the decimal point) assuming equally likely birthdays. They too entered the answer into the device and launched the drone into space again.</p>


<p>This time the drone landed on planet Earth. As before the numbers in the problem description had changed. It read:</p>

<p><i>If people on your planet were to enter a very large room one by one, what will be the expected number of people in the room when you first find <b>4 people with Birthdays within 7 days from each other</b>.</i></p>

<p>What would be the answer (rounded to eight places after the decimal point) the people of Earth have to enter into the device for a year with 365 days? Ignore leap years. Also assume that all birthdays are equally likely and independent of each other.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
