; cgb palette size
DEF palettes EQUS "* PAL_SIZE"

DEF NUM_BACKGROUND_PALETTES EQU 8
DEF NUM_OBJECT_PALETTES     EQU 8

DEF PALRGB_WHITE EQU (31 << B_COLOR_BLUE) | (31 << B_COLOR_GREEN) | (31 << B_COLOR_RED)

; tile size
DEF tiles EQUS "* TILE_SIZE"

DEF TILE_SIZE_1BPP EQU 8 ; bytes
DEF tiles_1bpp EQUS "* TILE_SIZE_1BPP"

; icon tile offsets
DEF ICON_TILE_BASIC_POKEMON   EQU $d0
DEF ICON_TILE_STAGE_1_POKEMON EQU $d4
DEF ICON_TILE_STAGE_2_POKEMON EQU $d8
DEF ICON_TILE_TRAINER         EQU $dc

DEF ICON_TILE_FIRE            EQU $e0
DEF ICON_TILE_GRASS           EQU $e4
DEF ICON_TILE_LIGHTNING       EQU $e8
DEF ICON_TILE_WATER           EQU $ec
DEF ICON_TILE_FIGHTING        EQU $f0
DEF ICON_TILE_PSYCHIC         EQU $f4
DEF ICON_TILE_COLORLESS       EQU $f8
DEF ICON_TILE_ENERGY          EQU $fc
