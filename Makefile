# Linux Makefile for z80-mbc2-emu

SRC = src/console_unix.rs src/console_windows.rs src/filesystem.rs src/images.rs src/main.rs src/mbc2_machine.rs

EMU = target/release/z80-mbc2-emu


$(EMU): $(SRC)
	cargo build --release
	ln -sf $(EMU) .


.PHONY: clean
clean:
	rm -rf target z80-mbc2-emu

