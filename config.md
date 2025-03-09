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

\newcommand{\en}[5]{
~~~ 
<p style="font-size: #1px;"><img src="https://flagcdn.com/gb.svg" style="
  width: #2%; // 5%
  display: inline; 
  float: left;
  align: center;
  margin-right: #3px; // 15px 
  margin-bottom: #4px;" // 0px
   alt="english"/> 
~~~ #5 ~~~ 
</p>
<div style="clear: both;"> </div>
~~~ 
}
\newcommand{\it}[5]{
~~~ 
<p style="font-size: #1px;"><img src="https://flagcdn.com/it.svg" style="
  width: #2%; // 5%
  display: inline; 
  float: left;
  align: center;
  margin-right: #3px; // 15px 
  margin-bottom: #4px;" // 0px
   alt="italian"/> 
~~~ #5 ~~~ 
</p>
<div style="clear: both;"> </div>
~~~ 
}


\newcommand{\card}[5]{
~~~ 
  <div class="card">
  <a href="!#1" style="display: block; text-decoration: none; color: inherit;">
      <h5 class="card-title">!#2</h5>
      <p class="card-text">
~~~ #3 ~~~
      </p>
    <img class="card-image" src="!#4" alt="Card Image">
    <small class="card-note">#5</small>
    </a>
  </div>
~~~ 
}
