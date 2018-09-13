cross-compiler
binutils_cfg
	^ '--disable-nls --prefix=' , self cross_prefix , ' --target=' , self config_toolchain , ' --with-sysroot=' , self cross_prefix , '/sysroot --with-native-system-header-dir=/include --enable-lto --disable-multilib'