export PATH := $(shell pwd)/bin:$(PATH)

.build/%.pdf .build/%.tex: src/%.md
	echo $$PATH
	@mkdir -p $(dir $@)
	pandoc $^ -o $@ \
	    --filter panpipe \
	    --include-before-body macros.tex \
	    --variable author:'Nishant Rodrigues' \
	    --variable geometry:'margin=2cm'

.build/%.html: .build/%.tex
	@mkdir -p $(dir $@)
	pandoc -s -t html5 --mathjax $^ -o $@

src/math570/notes.pdf:
	wget https://faculty.math.illinois.edu/~anush/Teaching_notes/logic_lectures.pdf -O $@
src/math570/%-questions.pdf:
	wget $(@:src/math570/0%-questions.pdf=https://faculty.math.illinois.edu/~anush/Courses/2017F.Math570.Logic/Homework/hw%.pdf) -O $@

# Make, why are you deleting `.tex` files when creating HTML
.PRECIOUS: .build/%.tex
