as yet unclassified
kernel_debug
^ '
https://eax.me/linux-kernel-debug/

console=ttyS0,115200 kgdboc=ttyS0,115200 kgdbwait

https://www.kernel.org/doc/htmldocs/kgdb/EnableKGDB.html

echo ttyS0 > /sys/module/kgdboc/parameters/kgdboc
echo g > /proc/sysrq-trigger

https://mirrors.edge.kernel.org/pub/linux/kernel/people/jwessel/dbg_webinar/State_Of_kernel_debugging_LinuxCon2010.pdf

'
