config generation
config_kernel_net
	| lf s |
	lf := String lf.
	s := lf,'# network ', lf,lf.
	s := s,'CONFIG_NET=y',lf.",'CONFIG_CAN=n',lf,'CONFIG_BT=n',lf."
	s := s,'CONFIG_NET_CORE=y',lf,lf.
	s := s,'CONFIG_PPP=m',lf,'CONFIG_PPP_ASYNC=m',lf,'CONFIG_PPP_DEFLATE=m',lf,lf.
	"s := s,'CONFIG_WLAN=n',lf,'CONFIG_WIRELESS=n',lf,'CONFIG_RFKILL=n',lf,'CONFIG_CFG80211=n',lf,lf."
	s := s,'CONFIG_PACKET=y',lf,'CONFIG_UNIX=y',lf,'CONFIG_INET=y',lf,'CONFIG_IPV6=n',lf,lf.
	s := s,'CONFIG_IP_PNP=y',lf,'CONFIG_IP_PNP_DHCP=y',lf,'CONFIG_IP_PNP_BOOTP=y',lf,'CONFIG_IP_PNP_RARP=n',lf,lf.
	"s := s,'CONFIG_INET_XFRM_MODE_TRANSPORT=n',lf,'CONFIG_INET_XFRM_MODE_TUNNEL=n',lf.
	s := s,'CONFIG_INET_XFRM_MODE_BEET=n',lf,lf.
	s := s,'CONFIG_INET_DIAG=y',lf,lf."
	
	s := s,'CONFIG_NET_VENDOR_ARC=n',lf.
	s := s,'CONFIG_NET_CADENCE=n',lf.
	s := s,'CONFIG_NET_VENDOR_BROADCOM=n',lf.
	s := s,'CONFIG_NET_VENDOR_CIRRUS=n',lf.
	s := s,'CONFIG_NET_VENDOR_FARADAY=n',lf.
	s := s,'CONFIG_NET_VENDOR_HISILICON=n',lf.
	s := s,'CONFIG_NET_VENDOR_INTEL=y',lf.
	s := s,'CONFIG_NET_VENDOR_I825XX=n',lf.
	s := s,'CONFIG_NET_VENDOR_MICREL=n',lf.
	s := s,'CONFIG_NET_VENDOR_NATSEMI=n',lf.
	s := s,'CONFIG_NET_VENDOR_QUALCOMM=n',lf.
	s := s,'CONFIG_NET_VENDOR_SAMSUNG=n',lf.
	s := s,'CONFIG_NET_VENDOR_SEEQ=n',lf.
	s := s,'CONFIG_NET_VENDOR_SMSC=n',lf.
	s := s,'CONFIG_NET_VENDOR_STMICRO=n',lf.
	s := s,'CONFIG_NET_VENDOR_VIA=n',lf.
	s := s,'CONFIG_NET_VENDOR_WIZNET=n',lf.
	s := s,'CONFIG_NET_VENDOR_NUVOTON=n',lf.
	
	^ s