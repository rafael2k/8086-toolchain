BIN_DIR=bin/

all:
	make --directory nasm/
	make --directory ndisasm/
	make --directory c86/
	make --directory cpp/
	make --directory ld/
#	make --directory emulator/

clean:
	make --directory nasm/ clean
	make --directory ndisasm/ clean
	make --directory c86/ clean
	make --directory cpp/ clean
	make --directory ld/ clean
#	make --directory emulator/ clean
	rm -rf $(BIN_DIR)

#reproducer:
#	make --directory emulator/ reproducer
