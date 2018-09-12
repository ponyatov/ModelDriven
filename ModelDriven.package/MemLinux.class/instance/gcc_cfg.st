cross-compiler
gcc_cfg
	^ self binutils_cfg , ' --without-headers --with-newlib --disable-bootstrap --enable-languages="c" '