MACRO deck_const
	IF const_value >= 2
		DEF \1_ID EQU const_value - 2
	ENDC
	const \1
ENDM

; Both *_DECK and *_DECK_ID constants are defined here.
; *_DECK constants are to be used with LoadDeck and related routines.
; *_DECK_ID constants are specific to be loaded into wOpponentDeckID.
; Always, *_DECK_ID = *_DECK - 2. UNNAMED_DECK_ID and UNNAMED_2_DECK_ID do not exist.
	const_def
	deck_const UNNAMED_DECK                ; $00
	deck_const UNNAMED_2_DECK              ; $01
	deck_const SAMS_PRACTICE_DECK          ; $02
	deck_const PRACTICE_PLAYER_DECK        ; $03
	deck_const SAMS_NORMAL_DECK            ; $04
	deck_const CHARMANDER_AND_FRIENDS_DECK ; $05
	deck_const CHARMANDER_EXTRA_DECK       ; $06
	deck_const SQUIRTLE_AND_FRIENDS_DECK   ; $07
	deck_const SQUIRTLE_EXTRA_DECK         ; $08
	deck_const BULBASAUR_AND_FRIENDS_DECK  ; $09
	deck_const BULBASAUR_EXTRA_DECK        ; $0A
	deck_const LIGHTNING_AND_FIRE_DECK     ; $0B
	deck_const WATER_AND_FIGHTING_DECK     ; $0C
	deck_const GRASS_AND_PSYCHIC_DECK      ; $0D
	deck_const LEGENDARY_MOLTRES_DECK      ; $0E
	deck_const LEGENDARY_ZAPDOS_DECK       ; $0F
	deck_const LEGENDARY_ARTICUNO_DECK     ; $10
	deck_const LEGENDARY_DRAGONITE_DECK    ; $11
	deck_const FIRST_STRIKE_DECK           ; $12
	deck_const ROCK_CRUSHER_DECK           ; $13
	deck_const GO_GO_RAIN_DANCE_DECK       ; $14
	deck_const ZAPPING_SELFDESTRUCT_DECK   ; $15
	deck_const FLOWER_POWER_DECK           ; $16
	deck_const STRANGE_PSYSHOCK_DECK       ; $17
	deck_const WONDERS_OF_SCIENCE_DECK     ; $18
	deck_const FIRE_CHARGE_DECK            ; $19
	deck_const IM_RONALD_DECK              ; $1A
	deck_const POWERFUL_RONALD_DECK        ; $1B
	deck_const INVINCIBLE_RONALD_DECK      ; $1C
	deck_const LEGENDARY_RONALD_DECK       ; $1D
	deck_const MUSCLES_FOR_BRAINS_DECK     ; $1E
	deck_const HEATED_BATTLE_DECK          ; $1F
	deck_const LOVE_TO_BATTLE_DECK         ; $20
	deck_const EXCAVATION_DECK             ; $21
	deck_const BLISTERING_POKEMON_DECK     ; $22
	deck_const HARD_POKEMON_DECK           ; $23
	deck_const WATERFRONT_POKEMON_DECK     ; $24
	deck_const LONELY_FRIENDS_DECK         ; $25
	deck_const SOUND_OF_THE_WAVES_DECK     ; $26
	deck_const PIKACHU_DECK                ; $27
	deck_const BOOM_BOOM_SELFDESTRUCT_DECK ; $28
	deck_const POWER_GENERATOR_DECK        ; $29
	deck_const ETCETERA_DECK               ; $2A
	deck_const FLOWER_GARDEN_DECK          ; $2B
	deck_const KALEIDOSCOPE_DECK           ; $2C
	deck_const GHOST_DECK                  ; $2D
	deck_const NAP_TIME_DECK               ; $2E
	deck_const STRANGE_POWER_DECK          ; $2F
	deck_const FLYIN_POKEMON_DECK          ; $30
	deck_const LOVELY_NIDORAN_DECK         ; $31
	deck_const POISON_DECK                 ; $32
	deck_const ANGER_DECK                  ; $33
	deck_const FLAMETHROWER_DECK           ; $34
	deck_const RESHUFFLE_DECK              ; $35
	deck_const IMAKUNI_DECK                ; $36

	deck_const ALL_FIGHTING_POKEMON_DECK   ; $37
	deck_const BENCH_ATTACK_DECK           ; $38
	deck_const BATTLE_CONTEST_DECK         ; $39
	deck_const SQUEAKING_MOUSE_DECK        ; $3a
	deck_const GREAT_QUAKE_DECK            ; $3b
	deck_const BONE_ATTACK_DECK            ; $3c
	deck_const BLUE_WATER_DECK             ; $3d
	deck_const ON_THE_BEACH_DECK           ; $3e
	deck_const PARALYZE_DECK               ; $3f
	deck_const ENERGY_REMOVAL_DECK         ; $40
	deck_const CUTE_POKEMON_DECK           ; $41
	deck_const POKEMON_FLUTE_DECK          ; $42
	deck_const YELLOW_FLASH_DECK           ; $43
	deck_const ELECTRIC_SHOCK_DECK         ; $44
	deck_const INSECT_COLLECTION_DECK      ; $45
	deck_const JUNGLE_DECK                 ; $46
	deck_const PSYCHIC_POWER_DECK          ; $47
	deck_const DREAM_EATER_HAUNTER_DECK    ; $48
	deck_const SCAVENGING_SLOWBRO_DECK     ; $49
	deck_const SCIENCE_CORPS_DECK          ; $4a
	deck_const REPLACE_EM_ALL_DECK         ; $4b
	deck_const CHARI_SAUR_DECK             ; $4c
	deck_const TRAFFIC_LIGHT_DECK          ; $4d
	deck_const FIRE_POKEMON_DECK           ; $4e
	deck_const PSYCHIC_MACHAMP_DECK        ; $4f
	deck_const WATER_BEETLE_DECK           ; $50
	deck_const MYSTERIOUS_POKEMON_DECK     ; $51
	deck_const HAYMAYKER_DECK              ; $52
DEF NUM_VALID_DECKS EQU const_value
DEF NUM_DECK_IDS EQU const_value - 2

DEF NUM_STARTER_DECK_IDS EQU 7
DEF NUM_AI_DECK_IDS EQU NUM_DECK_IDS - NUM_STARTER_DECK_IDS
