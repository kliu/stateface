state-plane albers:
	cd tools && $(MAKE) $@

publish:
	git checkout gh-pages
	git merge master
	git push
	git checkout master

docs:
	cd reference && ruby stateface.rb

pkg:
	zip -r pkg/stateface.zip font
	tar -cvzf pkg/stateface.tar.gz font

.PHONY: publish state-plan albers docs pkg
