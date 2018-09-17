emulator
qemu_run
	^ 'qemu-system-',self arch , ' -M versatilepb  -nographic -serial mon:stdio -append ''console=ttyS0''  -kernel arch/arm/boot/zImage'