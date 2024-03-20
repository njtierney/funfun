# Practical Functions: Practically Magic

# Abstract

I think the highest value skillset in statistical programming is knowing how to write good functions. Functions are often taught as a tool to avoid repetition using the mnemonic DRY: Don't Repeat Yourself. Whilst DRY is both true and real, I think functions are at their best when they encapsulate expression and are easy to reason with. That is, DRY is sufficient, but not necessary. Writing good functions is more than esoteric aesthetics. We need to be able to reason with our code in statistics. We often don't have the capacity to write tests to show our code is "correct". Instead, we need to rely on our ability to reason with, trust, and verify that the code works as it should. I believe writing good functions that encapsulate expressions and are able to be reasoned with are how we can ensure our code, and therefore our methods, and our analyses, work as they should. In this talk I will discuss some practical ideas on writing a good function, how to identify bad ones, and how to move between the two states. 

# Slide available [here](https://njtierney.github.io/funfun/#/title-slide)

# Take home messages 

**Good** functions

1.  Manage **complexity**
2.  Explain and express **ideas**
3.  Can be **individually reasoned** with
4.  Take **iteration**

**Teaching** functions

-   Emphasise using functions to **express ideas**
    -   Avoiding repetion is a symptom of needing a function
-   Demonstrate **process**
    -   Demos & writing
-   Try and use practical functions, not only **toy** ones
-   Teach **debugging** alongside functions

My **challenge** to you

-   Start **sprinkling** functions into daily use
-   use `browser()` or other debugging tools
-   Read other people's code - peer review!
-   Question me - does this make sense?


# Thanks

-   Miles McBain
-   Nick Golding
-   Saras Windecker
-   August Hao
-   Chitra Saraswati
-   Hadley Wickham
-   Jenny Bryan
-   Joe Cheng
-   Roger Peng

# Resources

-   [**You have to be able to reason about it**](https://www.youtube.com/watch?v=J8qbRYa4430)
-   [**Many Models**](https://www.youtube.com/watch?v=rz3_FDVt9eg)
-   [**The design of everyday functions**](https://www.youtube.com/watch?v=Qne86lxjgtg)
-   [**Our colour of magic**](https://www.youtube.com/watch?v=ywK4qs5dJsg)
-   [**Code Smells and Feels**](https://www.youtube.com/watch?v=7oyiPBjLAWY)
-   [**From tapply to Tidyverse**](https://www.youtube.com/watch?v=5033jBHFiHE&t=1s)
-   [**Advanced R: Functions**](https://r4ds.had.co.nz/functions.html)
-   [**Tidy Design Principles**](https://design.tidyverse.org/)
-   [**Lexical Scope and Statistical Computing**](https://www.stat.auckland.ac.nz/~ihaka/downloads/lexical.pdf)
-   [**stat545 chapter on functions**](https://stat545.com/functions-part1.html)


# Colophon

  - Slides made using [quarto](https://github.com/quarto-dev/quarto)
  
Eventually, this theme will add these features in:

  - Colours taken + modified from [lorikeet theme from
    ochRe](https://github.com/ropenscilabs/ochRe)
  - Header font is **Josefin Sans**
  - Body text font is **Montserrat**
  - Code font is **Fira Mono**


# Bio

Dr. Nicholas Tierney (PhD. Statistics, BPsySci (Honours)) is a research software engineer with [Nick Golding](https://www.telethonkids.org.au/contact-us/our-people/g/nick-golding/) at the [Telethon Kids Institute](https://www.telethonkids.org.au/), in Perth, Western Australia. He works on improving and maintaining the [greta](https://greta-stats.org/) R package for statistical modelling, and implementing workflows to automate analysis on diseases like COVID19 and malaria. He was previously (2017-2020) a Research Fellow, then Lecturer in Business Analytics and Statistics at Monash University, working with Professors
[Dianne Cook](http://dicook.org/) and [Rob Hyndman](https://robjhyndman.com/).

His research aims to improve data analysis
workflow, and make data analysis more accessible. Crucial to this work is producing high quality software to
accompany each research idea. Recently, Nick's work has focussed on exploring longitudinal data ([brolgar](http://brolgar.njtierney.com/)), and improving how we share data alongside research ( [ddd](https://github.com/karthik/ddd)). Other work has focussed on exploring data
with the R package [visdat](http://visdat.njtierney.com/), and on creating analysis principles and tools
to simplify working with, exploring, and modelling missing data with the
package [naniar](http://naniar.njtierney.com/). Nick has experience working with decision trees ([treezy](http://treezy.njtierney.com/)),
optimisation ([maxcovr](http://maxcovr.njtierney.com/)), Bayesian Data Analysis, and MCMC diagnostics ([mmcc](http://mmcc.njtierney.com/).

Nick is a member of the [rOpenSci](https://ropensci.org/) collective, which works to make science
open using R, has been the lead organiser for the rOpenSci ozunconf
events from 2016-2018 ([2016](https://auunconf.ropensci.org/), [2017](https://ozunconf17.ropensci.org/), [2018](https://ozunconf18.ropensci.org/)). Outside of research, Nick likes to
hike long distances, trail run, make coffee, take photos, and explore new hobbies.
