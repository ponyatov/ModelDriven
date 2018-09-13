as yet unclassified
git_archive
	| ver |
	ver := '3.18.122'.
	^ 'git archive --format=tar.gz -o ../gz/linux-',ver,'.tar.gz --prefix=linux-',ver,'/ ',ver
