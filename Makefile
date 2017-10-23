.build/%.pdf: src/%.md
	mkdir $(dir $@)
	pandoc $^ --filter panpipe -o $@

