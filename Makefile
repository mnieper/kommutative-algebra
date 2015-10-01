all: script

.PHONY: all script ankuendigung clean

RFLAGS := -Wall --pdf --texpath ..

clean:
	rm -f rubtmp*	

script:
	rubber $(RFLAGS) script

lecture%:
	rubber $(RFLAGS) --module beamer $@

ankuendigung:
	rubber $(RFLAGS) --module beamer $@
	pdfnup --nup 1x1 --trim "-5mm -5mm -5mm -5mm" ankuendigung.pdf

probeklausur:
	rubber $(RFLAGS) probeklausur

