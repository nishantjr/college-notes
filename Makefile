export PATH := $(shell pwd)/bin:$(PATH)
export MAUDE_LIB := $(shell pwd)/src/cs476-2017/:$(MAUDE_LIB)

.build/%.pdf .build/%.tex: src/%.md
	echo $$PATH
	echo $$MAUDE_LIB
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
src/math570/final_prob_list.pdf:
	wget https://faculty.math.illinois.edu/~anush/Courses/2017F.Math570.Logic/final_prob_list.pdf -O $@
src/math570/0%-questions.pdf:
	wget $(@:src/math570/0%-questions.pdf=https://faculty.math.illinois.edu/~anush/Courses/2017F.Math570.Logic/Homework/hw%.pdf) -O $@
src/math570/1%-questions.pdf:
	wget $(@:src/math570/%-questions.pdf=https://faculty.math.illinois.edu/~anush/Courses/2017F.Math570.Logic/Homework/hw%.pdf) -O $@

# Make, why are you deleting `.tex` files when creating HTML
.PRECIOUS: .build/%.tex
