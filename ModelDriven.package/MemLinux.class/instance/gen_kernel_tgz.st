code generation
gen_kernel_tgz
	| ver |
	ver := '3.18.122'.
	^ 'git archive --format=tar.gz -o ../gz/linux-',ver,'.tar.gz --prefix=linux-',ver,'/ ',ver