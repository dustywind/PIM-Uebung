TEX=pdflatex
CPY=cp
RM=rm -vR
SAVE_TO=/media/data/Dropbox/AktuellesSemester/PIM/Uebung/pim_uebung.pdf

all: pim_uebung cpy

clean: ; $(RM) ./*.aux ./*.log ./*.out ./*.toc ./inc/*.aux 

pim_uebung: pim_uebung.tex ; $(TEX) pim_uebung.tex ;

cpy: pim_uebung; $(CPY) ./pim_uebung.pdf  $(SAVE_TO)
