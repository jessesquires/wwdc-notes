.PHONY: publish-notes
publish-notes:
	git status
	git add .
	git commit -am "[automated] update notes"
	git status
	git push

.PHONY: web
web:
	open "https://github.com/jessesquires/wwdc-notes"
	open "https://jessesquires.github.io/wwdc-notes"
