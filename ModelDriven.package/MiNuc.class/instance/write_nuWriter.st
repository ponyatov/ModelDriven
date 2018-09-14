firmware
write_nuWriter
	| lf s |
	lf := String lf.
	s := 'cd /usr/local/share',lf.
	s := s,'sudo nuwriter -m spi -d NUC972DF62Y.ini -e 0xffffffff',lf.
	s := s,'sudo nuwriter -m spi -d NUC972DF62Y.ini -t uboot -a 0xE00000 -w ~/ASDU/doc/test_soft/u-boot.bin -v',lf.
	s := s,'sudo nuwriter -m spi -d NUC972DF62Y.ini -t data    -a 0x50000    -w ~/ASDU/buildroot-2018.05.2/output/images/uImage -v',lf.
	"s := s,'sudo nuwriter -m spi -d NUC972DF62Y.ini -t data -a 0x200000 ~/ASDU/buildroot-2018.05.2/output/images/rootfs -v',lf."
	^ s