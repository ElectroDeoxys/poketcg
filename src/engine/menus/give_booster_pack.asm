GiveBoosterPack:
	ld c, a
	ld a, [wd291]
	push af
	push bc
	call DisableLCD
	call InitMenuScreen
	xor a
	ld [wTextBoxFrameType], a
	pop bc
	push bc
	ld b, 0
	ld hl, BoosterTypes
	add hl, bc
	ld a, [hl]
	ld c, a
	add a
	add a
	ld c, a
	ld hl, BoosterScenesAndNameTexts
	add hl, bc
	ld a, [hli]
	push hl
	lb bc, 6, 0
	call LoadBoosterGfx
	pop hl
	ld a, [hli]
	ld [wTxRam3], a
	xor a
	ld [wTxRam3 + 1], a
	ld a, [hli]
	ld [wTxRam2], a
	ld a, [hl]
	ld [wTxRam2 + 1], a
	call FlashWhiteScreen
	call PauseSong
	ld a, MUSIC_BOOSTER_PACK
	call PlaySong
	pop bc
	ld a, c
	farcall GenerateBoosterPack
	ldtx hl, ReceivedBoosterPackText
	ld a, [wAnotherBoosterPack]
	cp TRUE
	jr nz, .first_booster
	ldtx hl, AndAnotherBoosterPackText
.first_booster
	call PrintScrollableText_NoTextBoxLabel
	call WaitForSongToFinish
	call ResumeSong
	ldtx hl, CheckedCardsInBoosterPackText
	call PrintScrollableText_NoTextBoxLabel
	call DisableLCD
	call SetDefaultPalettes
	call ZeroObjectPositions
	ld a, $1
	ld [wVBlankOAMCopyToggle], a
	ld a, $4
	ld [wTextBoxFrameType], a
	farcall OpenBoosterPack
	farcall WhiteOutDMGPals
	call DoFrameIfLCDEnabled
	pop af
	ld [wd291], a
	ret

BoosterTypes:
	table_width 1, BoosterTypes
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_NEUTRAL
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_GRASS
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_FIRE
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_WATER
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_LIGHTNING
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_FIGHTING
	db BOOSTER_COLOSSEUM  ; BOOSTER_COLOSSEUM_TRAINER
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_NEUTRAL
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_GRASS
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_FIRE
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_WATER
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_FIGHTING
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_PSYCHIC
	db BOOSTER_EVOLUTION  ; BOOSTER_EVOLUTION_TRAINER
	db BOOSTER_MYSTERY    ; BOOSTER_MYSTERY_NEUTRAL
	db BOOSTER_MYSTERY    ; BOOSTER_MYSTERY_GRASS_COLORLESS
	db BOOSTER_MYSTERY    ; BOOSTER_MYSTERY_WATER_COLORLESS
	db BOOSTER_MYSTERY    ; BOOSTER_MYSTERY_LIGHTNING_COLORLESS
	db BOOSTER_MYSTERY    ; BOOSTER_MYSTERY_FIGHTING_COLORLESS
	db BOOSTER_MYSTERY    ; BOOSTER_MYSTERY_TRAINER_COLORLESS
	db BOOSTER_LABORATORY ; BOOSTER_LABORATORY_NEUTRAL
	db BOOSTER_LABORATORY ; BOOSTER_LABORATORY_GRASS
	db BOOSTER_LABORATORY ; BOOSTER_LABORATORY_WATER
	db BOOSTER_LABORATORY ; BOOSTER_LABORATORY_PSYCHIC
	db BOOSTER_LABORATORY ; BOOSTER_LABORATORY_TRAINER
	db BOOSTER_COLOSSEUM  ; BOOSTER_ENERGY_LIGHTNING_FIRE
	db BOOSTER_COLOSSEUM  ; BOOSTER_ENERGY_WATER_FIGHTING
	db BOOSTER_COLOSSEUM  ; BOOSTER_ENERGY_GRASS_PSYCHIC
	db BOOSTER_COLOSSEUM  ; BOOSTER_ENERGY_RANDOM
	assert_table_length NUM_BOOSTERS

BoosterScenesAndNameTexts:
	db SCENE_COLOSSEUM_BOOSTER, SCENE_COLOSSEUM_BOOSTER
	tx ColosseumBoosterText

	db SCENE_EVOLUTION_BOOSTER, SCENE_EVOLUTION_BOOSTER
	tx EvolutionBoosterText

	db SCENE_MYSTERY_BOOSTER, SCENE_MYSTERY_BOOSTER
	tx MysteryBoosterText

	db SCENE_LABORATORY_BOOSTER, SCENE_LABORATORY_BOOSTER
	tx LaboratoryBoosterText

_PauseMenu_Exit:
	ret

LoadBoosterGfx:
	push hl
	push bc
	push de
	ld e, a
	ld a, [wCurTilemap]
	push af
	push bc
	ld a, e
	call _LoadScene
	call FlushAllPalettes
	call SetBoosterLogoOAM
	pop bc
	pop af
	ld [wCurTilemap], a
	pop de
	pop bc
	pop hl
	ret

SetBoosterLogoOAM:
	ld a, [wConsole]
	cp CONSOLE_CGB
	ret nz
	push hl
	push bc
	push de
	push bc
	xor a
	ld [wd4cb], a
	ld [wd4ca], a
	ld a, SPRITE_BOOSTER_PACK_OAM
	farcall Func_8025b
	pop bc
	call ZeroObjectPositions
	ld hl, BoosterLogoOAM
	ld c, [hl]
	inc hl
.oam_loop
	push bc
	ldh a, [hSCX]
	ld d, a
	ldh a, [hSCY]
	ld e, a
	ld a, [wSceneBaseY]
	sub e
	add [hl]
	ld e, a
	inc hl
	ld a, [wSceneBaseX]
	sub d
	add [hl]
	ld d, a
	inc hl
	ld a, [wd61f]
	add [hl]
	ld c, a
	inc hl
	ld b, [hl]
	inc hl
	call SetOneObjectAttributes
	pop bc
	dec c
	jr nz, .oam_loop
	ld hl, wVBlankOAMCopyToggle
	inc [hl]
	pop de
	pop bc
	pop hl
	ret

BoosterLogoOAM:
	db $20
	db $00, $00, $00, $00
	db $00, $08, $01, $00
	db $00, $10, $02, $00
	db $00, $18, $03, $00
	db $00, $20, $04, $00
	db $00, $28, $05, $00
	db $00, $30, $06, $00
	db $00, $38, $07, $00
	db $08, $00, $10, $00
	db $08, $08, $11, $00
	db $08, $10, $12, $00
	db $08, $18, $13, $00
	db $08, $20, $14, $00
	db $08, $28, $15, $00
	db $08, $30, $16, $00
	db $08, $38, $17, $00
	db $10, $00, $08, $00
	db $10, $08, $09, $00
	db $10, $10, $0a, $00
	db $10, $18, $0b, $00
	db $10, $20, $0c, $00
	db $10, $28, $0d, $00
	db $10, $30, $0e, $00
	db $10, $38, $0f, $00
	db $18, $00, $18, $00
	db $18, $08, $19, $00
	db $18, $10, $1a, $00
	db $18, $18, $1b, $00
	db $18, $20, $1c, $00
	db $18, $28, $1d, $00
	db $18, $30, $1e, $00
	db $18, $38, $1f, $00
