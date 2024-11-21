BIN_DIR=bin/

all:
	make --directory nasm/
	make --directory ndisasm/
	make --directory compiler/
#	make --directory emulator/

clean:
	make --directory nasm/ clean
	make --directory ndisasm/ clean
	make --directory compiler/ clean
#	make --directory emulator/ clean
	rm -rf $(BIN_DIR)

reproducer:
	make --directory emulator/ reproducer
