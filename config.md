<!-- Add here global page variables to use throughout your website. -->
+++
author = "Federico Angelo Mor"
mintoclevel = 2
maxtoclevel = 6
hasplotly = true
hascode = true
prepath = ""

# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = false
website_title = "Federico Angelo Mor site"
website_descr = "Federico Angelo Mor site"
website_url   = "https://federicomor.github.io/"
+++


<!-- Add here global latex commands to use throughout your pages. -->
\newcommand{\R}{\mathbb R}
\newcommand{\Pr}{\mathbb P}
\newcommand{\p}{\mathbb P}
\newcommand{\prob}{\mathbb P}
\newcommand{\scal}[1]{\langle #1 \rangle}

\newcommand{\card}[4]{
~~~ 
  <div class="card">
  <a href="!#1" style="display: block; text-decoration: none; color: inherit;">
      <h5 class="card-title">!#2</h5>
      <p class="card-text">
~~~ #3 ~~~
      </p>
    <img class="card-image" src="!#4" alt="Card Image">
    </a>
  </div>
~~~ 
}