# phil479
# Incompleteness and Computability

Textbook for Calgary's Logic III course based on the Open Logic Project.

This repository/directory only contains the LaTeX files and
illustrations needed to typeset the textbook _Incompleteness
and Computability_, which in turn requires the _[Open Logic
Text](http://github.com/OpenLogicProject/OpenLogic/)_.

You can download the PDF of the [screen version](http://people.ucalgary.ca/~rzach/static/open-logic/courses/phil479/phil479-screen.pdf) directly.

To install and compile:

- Download/install the _Open Logic Text_
- Navigate to the subdirectory `courses/`
- Put the content of this repository into a subdirectory of it, say
  `courses/phil479`.

If you use `git`:

- `# git clone https://github.com/OpenLogicProject/OpenLogic.git`
- `# cd OpenLogic/courses`
- `# git clone https://github.com/rzach/phil479.git`

Inside `courses/phil479`, you can now compile:

- `# cd phil479`
- `# pdflatex phil479-screen` or just `# make`

The file loads `phil479.tex`, which contains the actual material. It
in turn includes other files, most of them from the `OpenLogic`
repository. So you won't get a complete book unless you download this
into the right subdirectory of that and compile from there.

[![Creative Commons License](http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png)](http://creativecommons.org/licenses/by/4.0/) 

_[Incompleteness and
Computability](https://github.com/rzach/phil479/)_ by [Richard
Zach](http://richardzach.org/) is licensed under a [Creative Commons
Attribution 4.0 International
License](http://creativecommons.org/licenses/by/4.0/).
