firmware
gen_kernel_tgz
	| ver |
	ver := self linux_ver.
	^ 'git archive --format=tar.gz -o ../gz/linux-',ver,'.tar.gz --prefix=linux-',ver,'/ ',ver