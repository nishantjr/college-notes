.build/%.pdf: src/%.md
	@mkdir -p $(dir $@)
	pandoc $^ -o $@ \
	    --filter panpipe \
	    --include-before-body macros.tex \
	    --variable author:'Nishant Rodrigues' \
	    --variable geometry:'margin=2cm'

