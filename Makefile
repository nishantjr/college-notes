.build/%.pdf .build/%.tex: src/%.md
	@mkdir -p $(dir $@)
	pandoc $^ -o $@ \
	    --filter panpipe \
	    --include-before-body macros.tex \
	    --variable author:'Nishant Rodrigues' \
	    --variable geometry:'margin=2cm' \
        --variable fontsize:11pt

src/math570/%-questions.pdf:
	wget $(@:src/math570/0%-questions.pdf=https://faculty.math.illinois.edu/~anush/Courses/2017F.Math570.Logic/Homework/hw%.pdf) -o $@
PHONEY: src/math570/hw%.pdf 
