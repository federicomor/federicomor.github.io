+++
title = "P623"
hascode = true
hasplotly = true
showall = true
+++

~~~
<div class="navigation_symbols">
<form action="" method="get" onsubmit="location.href='/activity/project_euler/problem_' + this.elements[0].value; return false;" style="display:inline;">
<input title="go to problem" type="" placeholder=" " required style="margin-right: 5px; width: 40px; padding: 3px; text-align: center; border: 1px solid #666666; border-radius: 4px;">
</form>
<a href="/activity/project_euler/problem_622/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-left"></i></a>
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
<a href="/activity/project_euler/problem_624/" style="color: black; text-decoration: none;"><i class="fa-solid fa-arrow-right"></i></a>
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
<h2>Lambda Count</h2><div id="problem_icons" class="noprint"><span class="tooltip">ℹ️<span class="tooltiptext_right">Published on Sunday, 25th March 2018, 10:00 am; Solved by 374;<br>Difficulty rating: 45%</span></span></div><div id="problem_info"><h3><a href="https://projecteuler.net/problem=623">Problem 623</a></h3></div>
<div class="problem_content" role="problem">
<p>The <strong>lambda-calculus</strong> is a universal model of computation at the core of functional programming languages. It is based on <strong>lambda-terms</strong>, a minimal programming language featuring only function definitions, function calls and variables. Lambda-terms are built according to the following rules:</p>
<ul>
<li>Any <strong>variable</strong> $x$ (single letter, from some infinite alphabet) is a lambda-term.</li>
<li>If $M$ and $N$ are lambda-terms, then $(M N)$ is a lambda-term, called the <strong>application</strong> of $M$ to $N$.</li>
<li>If $x$ is a variable and $M$ is a term, then $(\lambda x. M)$ is a lambda-term, called an <strong>abstraction</strong>. An abstraction defines an anonymous function, taking $x$ as parameter and sending back $M$.</li>
</ul>

<p>A lambda-term $T$ is said to be <strong>closed</strong> if for all variables $x$, all occurrences of $x$ within $T$ are contained within some abstraction $(\lambda x. M)$ in $T$. The smallest such abstraction is said to <strong>bind</strong> the occurrence of the variable $x$. In other words, a lambda-term is closed if all its variables are bound to parameters of enclosing functions definitions. For example, the term $(\lambda x. x)$ is closed, while the term $(\lambda x. (x y))$ is not because $y$ is not bound.</p>

<p>Also, we can rename variables as long as no binding abstraction changes. This means that $(\lambda x. x)$ and $(\lambda y. y)$ should be considered equivalent since we merely renamed a parameter. Two terms equivalent modulo such renaming are called <i>$\alpha$-equivalent</i>. Note that $(\lambda x. (\lambda y. (x y)))$ and $(\lambda x. (\lambda x. (x x)))$ are not $\alpha$-equivalent, since the abstraction binding the first variable was the outer one and becomes the inner one. However, $(\lambda x. (\lambda y. (x y)))$ and $(\lambda y. (\lambda x. (y x)))$ are $\alpha$-equivalent.</p>

<p>The following table regroups the lambda-terms that can be written with at most $15$ symbols, symbols being parenthesis, $\lambda$, dot and variables.</p>

$$\begin{array}{|c|c|c|c|}
\hline
(\lambda x.x) &amp; (\lambda x.(x x)) &amp; (\lambda x.(\lambda y.x)) &amp; (\lambda x.(\lambda y.y)) \\
\hline
(\lambda x.(x (x x))) &amp; (\lambda x.((x x) x)) &amp; (\lambda x.(\lambda y.(x x))) &amp; (\lambda x.(\lambda y.(x y))) \\
\hline
(\lambda x.(\lambda y.(y x))) &amp; (\lambda x.(\lambda y.(y y))) &amp; (\lambda x.(x (\lambda y.x))) &amp; (\lambda x.(x (\lambda y.y))) \\
\hline
(\lambda x.((\lambda y.x) x)) &amp; (\lambda x.((\lambda y.y) x)) &amp; ((\lambda x.x) (\lambda x.x)) &amp; (\lambda x.(x (x (x x)))) \\
\hline
(\lambda x.(x ((x x) x))) &amp; (\lambda x.((x x) (x x))) &amp; (\lambda x.((x (x x)) x)) &amp; (\lambda x.(((x x) x) x)) \\
\hline
\end{array}$$

<p>Let be $\Lambda(n)$ the number of distinct closed lambda-terms that can be written using at most $n$ symbols, where terms that are $\alpha$-equivalent to one another should be counted only once. You are given that $\Lambda(6) = 1$, $\Lambda(9) = 2$, $\Lambda(15) = 20$ and $\Lambda(35) = 3166438$.</p>
<p>Find $\Lambda(2000)$. Give the answer modulo $1\,000\,000\,007$.</p>

</div><br>
<br>
</div> <!--end_content-->
~~~
## Soluzione

{{ addcomments }}
