export PATH := $(shell pwd)/bin:$(PATH)
export MAUDE_LIB := $(shell pwd)/src/cs476-2017/:$(MAUDE_LIB)

always_build =                                                                 \
    $(wildcard src/algebra/*.md) $(wildcard src/topology/*.md)                 \
    $(wildcard src/math500-abstract-algebra/*.md)                              \
    $(wildcard src/math525-algebraic-topology/*.md)                            \
    $(wildcard src/cs576-automated-deduction/nelson-oppen.md)
all: $(patsubst src/%.md,.build/%.pdf, ${always_build})

.build/%.pdf .build/%.tex: src/%.md
	@mkdir -p $(dir $@)
	pandoc $^ -o $@ \
	    --filter panpipe \
	    --from markdown+line_blocks \
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
