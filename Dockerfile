# official Julia runtime as a parent image
FROM julia:1.8.5

# install external dependencies:
# - make & C compiler  (for building CRlibm)
# - QT  (for GR.jl)
# - LaTeX & divpng  (for LaTeXStrings.jl)
RUN apt-get update && apt-get -qy install make gcc libqt5widgets5 texlive-latex-base dvipng

# set working directory
WORKDIR /juliareach_aff

# copy current directory into container
COPY . /juliareach_aff
RUN chmod -R 777 /juliareach_aff
