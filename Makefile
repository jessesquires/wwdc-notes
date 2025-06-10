.PHONY: publish-notes
publish-notes:
	git status
	git add .
	git commit -am "update notes"
	git status
	git push
