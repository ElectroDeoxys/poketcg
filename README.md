# tinytcg

Highly optimized disassembly of Pokémon TCG, meant to be used as a base for hacks. Removes GameBoy compatibility and multiplayer features to allow for more ROM space.
Compared to the base game, this build saves 84,459 bytes, corresponding to a ROM with 26.8% empty space.

## Current ROM map summary

```
SUMMARY:
	ROM0: 13110 bytes used / 3274 free
	ROMX: 753856 bytes used / 278336 free in 63 banks
	SRAM: 20903 bytes used / 11865 free in 4 banks
	WRAM0: 7800 bytes used / 392 free
	HRAM: 112 bytes used / 15 free
```

## Removed content

- GameBoy tilemaps and compatibility functionality;
- Unused content (Japanese title screen, unreferenced routines, unused text, debug menus);
- Printer functions;
- Card Pop!;
- Gift Center;
- Link duels.

## Added content

- A simplistic compatibility screen when GameBoy is detected.

## Instructions to build

To assemble, first download RGBDS (https://github.com/gbdev/rgbds/releases) and extract it to /usr/local/bin.
Run `make` in your shell.

This will output a file named "tinytcg.gbc".
