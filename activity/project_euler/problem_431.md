+++
title = "P431"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_430/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_432/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Square Space Silo</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 9th June 2013, 10:00 am; Solved by 670;<br>Difficulty rating: 40%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=431">Problem 431</a></h3></div>
<div class="problem_content" role="problem">
<p>Fred the farmer arranges to have a new storage silo installed on his farm and having an obsession for all things square he is absolutely devastated when he discovers that it is circular. Quentin, the representative from the company that installed the silo, explains that they only manufacture cylindrical silos, but he points out that it is resting on a square base. Fred is not amused and insists that it is removed from his property.</p>

<p>Quick thinking Quentin explains that when granular materials are delivered from above a conical slope is formed and the natural angle made with the horizontal is called the angle of repose. For example if the angle of repose, $\alpha = 30$ degrees, and grain is delivered at the centre of the silo then a perfect cone will form towards the top of the cylinder. In the case of this silo, which has a diameter of $6\mathrm m$, the amount of space wasted would be approximately $32.648388556\mathrm{m^3}$. However, if grain is delivered at a point on the top which has a horizontal distance of $x$ metres from the centre then a cone with a strangely curved and sloping base is formed. He shows Fred a picture.</p>

<div class="center">
   <img src="https://projecteuler.net/resources/images/0431_grain_silo.png?1678992053" class="dark_img" alt="0431_grain_silo.png"></div>

<p>We shall let the amount of space wasted in cubic metres be given by $V(x)$. If $x = 1.114785284$, which happens to have three squared decimal places, then the amount of space wasted, $V(1.114785284) \approx 36$. Given the range of possible solutions to this problem there is exactly one other option: $V(2.511167869) \approx 49$. It would be like knowing that the square is king of the silo, sitting in splendid glory on top of your grain.</p>

<p>Fred's eyes light up with delight at this elegant resolution, but on closer inspection of Quentin's drawings and calculations his happiness turns to despondency once more. Fred points out to Quentin that it's the radius of the silo that is $6$ metres, not the diameter, and the angle of repose for his grain is $40$ degrees. However, if Quentin can find a set of solutions for this particular silo then he will be more than happy to keep it.</p>

<p>If Quick thinking Quentin is to satisfy frustratingly fussy Fred the farmer's appetite for all things square then determine the values of $x$ for all possible square space wastage options and calculate $\sum x$ correct to $9$ decimal places.</p>
</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
