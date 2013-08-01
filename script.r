rm(list=ls())
setwd("/home/conan/R/github")

package.skeleton(name="sayHello",code_files="/home/conan/R/github/sayHello.r")

# ERROR 1:
# LaTeX errors when creating PDF version.
# This typically indicates Rd problems.
# * checking PDF version of manual without hyperrefs or index ... ERROR
# Re-running with no redirection of stdout/stderr.
# Hmm ... looks like a package
# Error in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
# pdflatex is not available
# Error in running tools::texi2pdf()
#                   
#FIX:
sudo apt-get install texlive
sudo apt-get install texlive-xetex
sudo apt-get install texlive-latex-base
sudo apt-get install texlive-fonts-extra 
sudo apt-get install texlive-latex-recommended
sudo apt-get install texlive-fonts-recommended

#sudo apt-get install latex-cjk-all
#sudo apt-get install texinfo 
#sudo apt-get install texlive
#sudo apt-get install texlive-latex-base
#sudo apt-get install texlive-fonts-extra 
#sudo apt-get install texlive-xetex
#sudo apt-get install texlive-latex-recommended
#sudo apt-get install texlive-fonts-recommended
#sudo texhash


rm sayHello_1.0.tar.gz
R CMD build sayHello
R CMD Rd2pdf sayHello_1.0.tar.gz 
R CMD check sayHello_1.0.tar.gz

#cat /home/conan/R/github/sayHello.Rcheck/00install.out

########################################################
package.skeleton(name="sayHello2",code_files="/home/conan/R/github/sayHello.r")

rm sayHello2_1.0.tar.gz
R CMD build sayHello2
R CMD Rd2pdf sayHello2_1.0.tar.gz 
R CMD check sayHello2_1.0.tar.gz


