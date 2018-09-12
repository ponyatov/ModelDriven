config generation
config_kernel_net
	| lf s |
	lf := String lf.
	s := '# network ', lf,lf.
	s := s,'CONFIG_NET=y',lf.",'CONFIG_CAN=n',lf,'CONFIG_BT=n',lf."
	s := s,'CONFIG_NET_CORE=y',lf,lf.
	s := s,'CONFIG_PPP=m',lf,'CONFIG_PPP_ASYNC=m',lf,'CONFIG_PPP_DEFLATE=m',lf,lf.
	"s := s,'CONFIG_WLAN=n',lf,'CONFIG_WIRELESS=n',lf,'CONFIG_RFKILL=n',lf,'CONFIG_CFG80211=n',lf,lf."
	s := s,'CONFIG_PACKET=y',lf,'CONFIG_UNIX=y',lf,'CONFIG_INET=y',lf,'CONFIG_IPV6=n',lf,lf.
	s := s,'CONFIG_IP_PNP=y',lf,'CONFIG_IP_PNP_DHCP=y',lf,'CONFIG_IP_PNP_BOOTP=y',lf,'CONFIG_IP_PNP_RARP=n',lf,lf.
	"s := s,'CONFIG_INET_XFRM_MODE_TRANSPORT=n',lf,'CONFIG_INET_XFRM_MODE_TUNNEL=n',lf.
	s := s,'CONFIG_INET_XFRM_MODE_BEET=n',lf,lf.
	s := s,'CONFIG_INET_DIAG=y',lf,lf."
	^ s