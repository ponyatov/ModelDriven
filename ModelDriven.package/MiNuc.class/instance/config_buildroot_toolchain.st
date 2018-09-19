config generation
config_buildroot_toolchain
	| lf s |
	lf := String lf.
	s := super config_buildroot_toolchain.
	s := s, 'BR2_KERNEL_HEADERS_VERSION=y',lf.
	s := s,'BR2_DEFAULT_KERNEL_VERSION="3.18.122"',lf.
	s := s,'BR2_PACKAGE_HOST_LINUX_HEADERS_CUSTOM_3_18=y',lf.
	"s := s,'BR2_GCC_VERSION_5_X=y',lf."
	^ s