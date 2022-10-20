.PHONY: debug
debug: $(UCOREIMG) $(SWAPIMG) $(SFSIMG)
	$(V)$(QEMU) \
		-s -S \
  		-machine virt \
		-nographic \
        -bios default \
		-device loader,file=$(kernel),addr=0x80200000 &

	$(V)$(GDB) \
	$(kernel) -q -x ../common/gdbinit


.PHONY: test
test:
#	$(V)$(QEMU) -kernel $(UCOREIMG) -nographic
	echo "test"
