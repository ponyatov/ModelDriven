cross-compiler
binutils_cfg
	^ '--disable-nls --prefix=' , self prefix , ' --target=' , self config_toolchain , ' --with-sysroot=' , self prefix , '/sysroot --with-native-system-header-dir=/include --enable-lto --disable-multilib'