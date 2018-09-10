config generation
config_build
	| lf s |
	lf := String lf.
	s := lf, '# Build ', lf,lf.
	s := s , 'BR2_DL_DIR="$(TOPDIR)/../gz"', lf.
	s := s , 'BR2_CCACHE=y' , lf , 'BR2_STRIP_strip=y' , lf.
	s := s , 'BR2_OPTIMIZE_S=y', lf.
	s := s, 'BR2_SHARED_LIBS=y', lf.
	^ s