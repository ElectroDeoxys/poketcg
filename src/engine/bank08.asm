; unknown byte / card ID / function pointer 1 / function pointer 2
unknown_data_20000: MACRO
	db \1, \2
	dw \3
	dw \4
ENDM

Data_20000: ; 20000 (8:4000)
	unknown_data_20000 $07, POTION,                 CheckIfPotionPreventsKnockOut, AIPlayPotion
	unknown_data_20000 $0a, POTION,                 FindTargetCardForPotion, AIPlayPotion
	unknown_data_20000 $08, SUPER_POTION,           CheckIfSuperPotionPreventsKnockOut, AIPlaySuperPotion
	unknown_data_20000 $0b, SUPER_POTION,           FindTargetCardForSuperPotion, AIPlaySuperPotion
	unknown_data_20000 $0d, DEFENDER,               CheckIfDefenderPreventsKnockOut, AIPlayDefender
	unknown_data_20000 $0e, DEFENDER,               CheckIfDefenderPreventsRecoilKnockOut, AIPlayDefender
	unknown_data_20000 $0d, PLUSPOWER,              CheckIfPluspowerBoostCausesKnockOut, AIPlayPluspower
	unknown_data_20000 $0e, PLUSPOWER,              CheckIfMoveNeedsPluspowerBoostToKnockOut, AIPlayPluspower
	unknown_data_20000 $09, SWITCH,                 CheckIfActiveCardCanSwitch, AIPlaySwitch
	unknown_data_20000 $07, GUST_OF_WIND,           CheckWhetherToUseGustOfWind, AIPlayGustOfWind
	unknown_data_20000 $0a, GUST_OF_WIND,           CheckWhetherToUseGustOfWind, AIPlayGustOfWind
	unknown_data_20000 $04, BILL,                   CheckDeckCardsAmount, AIPlayBill
	unknown_data_20000 $05, ENERGY_REMOVAL,         CheckEnergyCardToRemoveInPlayArea, AIPlayEnergyRemoval
	unknown_data_20000 $05, SUPER_ENERGY_REMOVAL,   CheckTwoEnergyCardsToRemoveInPlayArea, AIPlaySuperEnergyRemoval
	unknown_data_20000 $07, POKEMON_BREEDER,        CheckIfCanEvolve2StageFromHand, AIPlayPokemonBreeder
	unknown_data_20000 $0f, PROFESSOR_OAK,          CheckIfCanPlayProfessorOak, AIPlayProfessorOak
	unknown_data_20000 $0a, ENERGY_RETRIEVAL,       CheckEnergyRetrievalCardsToPick, AIPlayEnergyRetrieval
	unknown_data_20000 $0b, SUPER_ENERGY_RETRIEVAL, CheckSuperEnergyRetrievalCardsToPick, AIPlaySuperEnergyRetrieval
	unknown_data_20000 $06, POKEMON_CENTER,         CheckIfCanPlayPokemonCenter, AIPlayPokemonCenter
	unknown_data_20000 $07, IMPOSTER_PROFESSOR_OAK, CheckWhetherToPlayImposterProfessorOak, AIPlayImposterProfessorOak
	unknown_data_20000 $0c, ENERGY_SEARCH,          CheckIfEnergySearchCanBePlayed, AIPlayEnergySearch
	unknown_data_20000 $03, POKEDEX,                CheckWhetherToPlayPokedex, AIPlayPokedex
	unknown_data_20000 $07, FULL_HEAL,              CheckWhetherToPlayFullHeal, AIPlayFullHeal
	unknown_data_20000 $0a, MR_FUJI,                CheckWhetherToPlayMrFuji, AIPlayMrFuji
	unknown_data_20000 $0a, SCOOP_UP,               CheckWhetherToPlayScoopUp, AIPlayScoopUp
	unknown_data_20000 $02, MAINTENANCE,            CheckWhetherToPlayMaintencance, AIPlayMaintenance
	unknown_data_20000 $03, RECYCLE,                CheckWhetherToPlayRecycle, AIPlayRecycle
	unknown_data_20000 $0d, LASS,                   CheckWhetherToPlayLass, AIPlayLass
	unknown_data_20000 $04, ITEM_FINDER,            CheckWhetherToPlayItemFinder, AIPlayItemFinder
	unknown_data_20000 $01, IMAKUNI_CARD,           CheckWhetherToPlayImakuni, AIPlayImakuni
	unknown_data_20000 $01, GAMBLER,                CheckWhetherToPlayGambler, AIPlayGambler
	unknown_data_20000 $05, REVIVE,                 CheckWhetherToPlayRevive, AIPlayRevive
	unknown_data_20000 $0d, POKEMON_FLUTE,          CheckWhetherToPlayPokemonFlute, AIPlayPokemonFlute
	unknown_data_20000 $05, CLEFAIRY_DOLL,          CheckWhetherToPlayClefairyDollOrMysteriousFossil, AIPlayClefairyDollOrMysteriousFossil
	unknown_data_20000 $05, MYSTERIOUS_FOSSIL,      CheckWhetherToPlayClefairyDollOrMysteriousFossil, AIPlayClefairyDollOrMysteriousFossil
	unknown_data_20000 $02, POKE_BALL,              CheckWhetherToPlayPokeball, AIPlayPokeball
	unknown_data_20000 $02, COMPUTER_SEARCH,        AIDecideComputerSearch, AIPlayComputerSearch
	unknown_data_20000 $02, POKEMON_TRADER,         $5d8f, $5d7a
	db $ff

Func_200e5: ; 200e5 (8:40e5)
	ld [wce18], a
; create hand list in wDuelTempList and wTempHandCardList.
	call CreateHandCardList
	ld hl, wDuelTempList
	ld de, wTempHandCardList
	call CopyBuffer
	ld hl, wTempHandCardList

.loop_hand
	ld a, [hli]
	ld [wce16], a
	cp $ff
	ret z

	push hl
	ld a, [wce18]
	ld d, a
	ld hl, Data_20000
.loop_data
	xor a
	ld [wce21], a
	ld a, [hli]
	cp $ff
	jp z, .pop_hl

; compare input to first byte in data and continue if equal.
	cp d
	jp nz, .inc_hl_by_5
	ld a, [hli]
	ld [wce17], a
	ld a, [wce16]
	call LoadCardDataToBuffer1_FromDeckIndex
	cp SWITCH
	jr nz, .skip_switch_check

	ld b, a
	ld a, [wce20]
	and $02
	jr nz, .inc_hl_by_4
	ld a, b

.skip_switch_check
; compare hand card to second byte in data and continue if equal.
	ld b, a
	ld a, [wce17]
	cp b
	jr nz, .inc_hl_by_4

	push hl
	push de
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	bank1call CheckCantUseTrainerDueToHeadache
	jp c, .next_in_data
	call LoadNonPokemonCardEffectCommands
	ld a, EFFECTCMDTYPE_INITIAL_EFFECT_1
	call TryExecuteEffectCommandFunction
	jp c, .next_in_data
	farcall Func_1743b
	jr c, .next_in_data
	pop de
	pop hl
	push hl
	call CallIndirect
	pop hl
	jr nc, .inc_hl_by_4
	inc hl
	inc hl
	ld [wce19], a

	push de
	push hl
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_PLAY_TRAINER
	bank1call AIMakeDecision
	pop hl
	pop de
	jr c, .inc_hl_by_2
	push hl
	call CallIndirect
	pop hl

	inc hl
	inc hl
	ld a, [wce20]
	ld b, a
	ld a, [wce21]
	or b
	ld [wce20], a
	pop hl
	and $08
	jp z, .loop_hand

.asm_20186 ; 20186 (8:4186)
	call CreateHandCardList
	ld hl, wDuelTempList
	ld de, wTempHandCardList
	call CopyBuffer
	ld hl, wTempHandCardList
	ld a, [wce20]
	and $f7
	ld [wce20], a
	jp .loop_hand

.inc_hl_by_5
	inc hl
.inc_hl_by_4
	inc hl
	inc hl
.inc_hl_by_2
	inc hl
	inc hl
	jp .loop_data

.next_in_data
	pop de
	pop hl
	inc hl
	inc hl
	inc hl
	inc hl
	jp .loop_data

.pop_hl
	pop hl
	jp .loop_hand
; 0x201b5

; makes AI use Potion card.
AIPlayPotion: ; 201b5 (8:41b5)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld e, a
	call GetCardDamage
	cp 20
	jr c, .play_card
	ld a, 20
.play_card
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x201d1

; if AI doesn't decide to retreat this card,
; check if defending Pokémon can KO active card
; next turn after using Potion.
; if it cannot, return carry.
; also take into account whether move is high recoil.
CheckIfPotionPreventsKnockOut: ; 201d1 (8:41d1)
	farcall AIDecideWhetherToRetreat
	jr c, .no_carry
	call Func_22bad
	jr c, .no_carry
	xor a ; active card
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfDefendingPokemonCanKnockOut
	jr nc, .no_carry
	ld d, a

	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	ld h, a
	ld e, PLAY_AREA_ARENA
	call GetCardDamage
	cp 20 + 1 ; if damage <= 20
	jr c, .calculate_hp
	ld a, 20 ; amount of Potion HP healing

; if damage done by defending Pokémon next turn will still
; KO this card after healing, return no carry.
.calculate_hp
	ld l, a
	ld a, h
	add l
	sub d
	jr c, .no_carry
	jr z, .no_carry

; return carry.
	xor a
	scf
	ret
.no_carry
	or a
	ret
; 0x20204

; finds a card in Play Area to use Potion on.
; output:
;	a = card to use Potion on;
;	carry set if Potion should be used.
FindTargetCardForPotion: ; 20204 (8:4204)
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfDefendingPokemonCanKnockOut
	jr nc, .start_from_active
; can KO
	ld d, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	ld h, a
	ld e, PLAY_AREA_ARENA
	call GetCardDamage
	cp 20 + 1  ; if damage <= 20
	jr c, .calculate_hp
	ld a, 20
; return if using healing prevents KO.
.calculate_hp
	ld l, a
	ld a, h
	add l
	sub d
	jr c, .count_prizes
	jr z, .count_prizes
	or a
	ret

; using Potion on active card does not prevent a KO.
; if player is at last prize, start loop with active card.
; otherwise start loop at first bench Pokémon.
.count_prizes
	call SwapTurn
	call CountPrizes
	call SwapTurn
	dec a
	jr z, .start_from_active
	ld e, PLAY_AREA_BENCH_1
	jr .loop

; find Play Area Pokémon with more than 10 damage.
; skip Pokémon if it has a BOOST_IF_TAKEN_DAMAGE attack.
.start_from_active
	ld e, PLAY_AREA_ARENA
.loop
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	ret z
	call .check_boost_if_taken_damage	
	jr c, .has_boost_damage
	call GetCardDamage
	cp 20 ; if damage >= 20
	jr nc, .found
.has_boost_damage
	inc e
	jr .loop

; a card was found, now to check if it's active or benched.
.found
	ld a, e
	or a
	jr z, .active_card

; bench card
	push de
	call SwapTurn
	call CountPrizes
	call SwapTurn
	dec a
	or a
	jr z, .check_random
	ld a, 10
	call Random
	cp 3
; 7/10 chance of returning carry.
.check_random
	pop de
	jr c, .no_carry
	ld a, e
	scf
	ret

; return carry for active card if not Hgh Recoil.
.active_card
	push de
	call Func_22bad
	pop de
	jr c, .no_carry
	ld a, e
	scf
	ret
.no_carry
	or a
	ret
; 0x2027e

; return carry if either of the attacks are usable
; and have the BOOST_IF_TAKEN_DAMAGE effect.
.check_boost_if_taken_damage ; 2027e (8:427e)
	push de
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .second_attack
	ld a, MOVE_FLAG3_ADDRESS | BOOST_IF_TAKEN_DAMAGE_F
	call CheckLoadedMoveFlag
	jr c, .set_carry
.second_attack
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .false
	ld a, MOVE_FLAG3_ADDRESS | BOOST_IF_TAKEN_DAMAGE_F
	call CheckLoadedMoveFlag
	jr c, .set_carry
.false
	pop de
	or a
	ret
.set_carry
	pop de
	scf
	ret
; 0x202a8

; makes AI use Super Potion card.
AIPlaySuperPotion: ; 202a8 (8:42a8)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTempPlayAreaLocation_ffa1], a
	call GetEnergyCardToDiscard
	ldh [hTemp_ffa0], a
	ld a, [wce19]
	ld e, a
	call GetCardDamage
	cp 40
	jr c, .play_card
	ld a, 40
.play_card
	ldh [hTempRetreatCostCards], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x202cc

; if AI doesn't decide to retreat this card and card has
; any energy cards attached,  check if defending Pokémon can KO
; active card next turn after using Super Potion.
; if it cannot, return carry.
; also take into account whether move is high recoil.
CheckIfSuperPotionPreventsKnockOut: ; 202cc (8:42cc)
	farcall AIDecideWhetherToRetreat
	jr c, .no_carry
	call Func_22bad
	jr c, .no_carry
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	ld e, a
	call .check_attached_energy
	ret nc
	farcall CheckIfDefendingPokemonCanKnockOut
	jr nc, .no_carry

	ld d, a
	ld d, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	ld h, a
	ld e, $00
	call GetCardDamage
	cp 40 + 1 ; if damage < 40
	jr c, .calculate_hp
	ld a, 40
.calculate_hp
	ld l, a
	ld a, h
	add l
	sub d
	jr c, .no_carry
	jr z, .no_carry

; return carry
	ld a, e
	scf
	ret
.no_carry
	or a
	ret
; 0x20305

; returns carry if card has energies attached.
.check_attached_energy ; 20305 (8:4305)
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	or a
	ret z
	scf
	ret
; 0x2030f

; finds a card in Play Area to use Super Potion on.
; output:
;	a = card to use Super Potion on;
;	carry set if Super Potion should be used.
FindTargetCardForSuperPotion: ; 2030f (8:430f)
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfDefendingPokemonCanKnockOut
	jr nc, .start_from_active
; can KO
	ld d, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	ld h, a
	ld e, $00
	call GetCardDamage
	cp 40 + 1 ; if damage < 40
	jr c, .calculate_hp
	ld a, 40
; return if using healing prevents KO.
.calculate_hp
	ld l, a
	ld a, h
	add l
	sub d
	jr c, .count_prizes
	jr z, .count_prizes
	or a
	ret

; using Super Potion on active card does not prevent a KO.
; if player is at last prize, start loop with active card.
; otherwise start loop at first bench Pokémon.
.count_prizes
	call SwapTurn
	call CountPrizes
	call SwapTurn
	dec a
	jr z, .start_from_active
	ld e, PLAY_AREA_BENCH_1
	jr .loop

; find Play Area Pokémon with more than 30 damage.
; skip Pokémon if it doesn't have any energy attached,
; has a BOOST_IF_TAKEN_DAMAGE attack,
; or if discarding makes any attack of its attacks unusable.
.start_from_active
	ld e, PLAY_AREA_ARENA
.loop
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	ret z
	ld d, a
	call .check_attached_energy
	jr nc, .next
	call .check_boost_if_taken_damage
	jr c, .next
	call .check_energy_cost
	jr c, .next
	call GetCardDamage
	cp 40 ; if damage >= 40
	jr nc, .found
.next
	inc e
	jr .loop

; a card was found, now to check if it's active or benched.
.found
	ld a, e
	or a
	jr z, .active_card

; bench card
	push de
	call SwapTurn
	call CountPrizes
	call SwapTurn
	dec a
	or a
	jr z, .check_random
	ld a, 10
	call Random
	cp 3
; 7/10 chance of returning carry.
.check_random
	pop de
	jr c, .no_carry
	ld a, e
	scf
	ret

; return carry for active card if not Hgh Recoil.
.active_card
	push de
	call Func_22bad
	pop de
	jr c, .no_carry
	ld a, e
	scf
	ret
.no_carry
	or a
	ret
; 0x20394

; returns carry if card has energies attached.
.check_attached_energy ; 20394 (8:4394)
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	or a
	ret z
	scf
	ret
; 0x2039e

; return carry if either of the attacks are usable
; and have the BOOST_IF_TAKEN_DAMAGE effect.
.check_boost_if_taken_damage ; 2039e (8:439e)
	push de
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .second_attack_1
	ld a, MOVE_FLAG3_ADDRESS | BOOST_IF_TAKEN_DAMAGE_F
	call CheckLoadedMoveFlag
	jr c, .true_1
.second_attack_1
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .false_1
	ld a, MOVE_FLAG3_ADDRESS | BOOST_IF_TAKEN_DAMAGE_F
	call CheckLoadedMoveFlag
	jr c, .true_1
.false_1
	pop de
	or a
	ret
.true_1
	pop de
	scf
	ret
; 0x203c8

; returns carry if discarding energy card renders any attack unusable,
; given that they have enough energy to be used before discarding.
.check_energy_cost ; 203c8 (8:43c8)
	push de
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckEnergyNeededForAttack
	jr c, .second_attack_2
	farcall CheckEnergyNeededForAttackAfterDiscard
	jr c, .true_2

.second_attack_2
	pop de
	push de
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckEnergyNeededForAttack
	jr c, .false_2
	farcall CheckEnergyNeededForAttackAfterDiscard
	jr c, .true_2

.false_2
	pop de
	or a
	ret
.true_2
	pop de
	scf
	ret
; 0x203f8

AIPlayDefender: ; 203f8 (8:43f8)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	xor a
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20406

; returns carry if using Defender can prevent a KO
; by the defending Pokémon.
; this takes into account both attacks and whether they're useable.
CheckIfDefenderPreventsKnockOut: ; 20406 (8:4406)
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .cannot_ko
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .no_carry
	farcall LookForEnergyNeededForMoveInHand
	jr c, .no_carry

.cannot_ko
; check if any of the defending Pokémon's attacks deal
; damage exactly equal to current HP, and if so,
; only continue if that move is useable.
	farcall CheckIfAnyDefendingPokemonAttackDealsSameDamageAsHP
	jr nc, .no_carry
	call SwapTurn
	farcall CheckIfSelectedMoveIsUnusable
	call SwapTurn
	jr c, .no_carry

	ld a, [wSelectedMoveIndex]
	farcall EstimateDamage_FromDefendingPokemon
	ld a, [wDamage]
	ld [wce06], a
	ld d, a

; load in a the attack that was not selected,
; and check if it is useable.
	ld a, [wSelectedMoveIndex]
	ld b, a
	ld a, $01
	sub b
	ld [wSelectedMoveIndex], a
	push de
	call SwapTurn
	farcall CheckIfSelectedMoveIsUnusable
	call SwapTurn
	pop de
	jr c, .switch_back

; the other attack is useable.
; compare its damage to the selected move.
	ld a, [wSelectedMoveIndex]
	push de
	farcall EstimateDamage_FromDefendingPokemon
	pop de
	ld a, [wDamage]
	cp d
	jr nc, .subtract

; in case the non-selected move is useable
; and deals less damage than the selected move,
; switch back to the other attack.
.switch_back
	ld a, [wSelectedMoveIndex]
	ld b, a
	ld a, $01
	sub b
	ld [wSelectedMoveIndex], a
	ld a, [wce06]
	ld [wDamage], a

; now the selected attack is the one that deals
; the most damage of the two (and is useable).
; if subtracting damage by using Defender
; still prevents a KO, return carry.
.subtract
	ld a, [wDamage]
	sub 20
	ld d, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	sub d
	jr c, .no_carry
	jr z, .no_carry
	scf
	ret
.no_carry
	or a
	ret
; 0x20486

; return carry if using Defender prevents Pokémon
; from being knocked out by an attack with recoil.
CheckIfDefenderPreventsRecoilKnockOut: ; 20486 (8:4486)
	ld a, MOVE_FLAG1_ADDRESS | HIGH_RECOIL_F
	call CheckLoadedMoveFlag
	jr c, .recoil
	ld a, MOVE_FLAG1_ADDRESS | LOW_RECOIL_F
	call CheckLoadedMoveFlag
	jr c, .recoil
	or a
	ret

.recoil
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call LoadCardDataToBuffer2_FromDeckIndex
	ld a, [wSelectedMoveIndex]
	or a
	jr nz, .second_attack
; first attack
	ld a, [wLoadedCard2Move1Unknown1]
	jr .check_weak
.second_attack
	ld a, [wLoadedCard2Move2Unknown1]

; double recoil damage if card is weak to its own color.
.check_weak
	ld d, a
	push de
	call GetArenaCardColor
	call TranslateColorToWR
	ld b, a
	call GetArenaCardWeakness
	and b
	pop de
	jr z, .check_resist
	sla d

; subtract 30 from recoil damage if card resists its own color.
; if this yields a negative number, return no carry.
.check_resist
	push de
	call GetArenaCardColor
	call TranslateColorToWR
	ld b, a
	call GetArenaCardResistance
	and b
	pop de
	jr z, .subtract
	ld a, d
	sub 30
	jr c, .no_carry
	ld d, a

; subtract damage prevented by Defender.
; if damage still knocks out card, return no carry.
; if damage does not knock out, return carry.
.subtract
	ld a, d
	or a
	jr z, .no_carry
	sub 20
	ld d, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetTurnDuelistVariable
	sub d
	jr c, .no_carry
	jr z, .no_carry
	scf
	ret
.no_carry
	or a
	ret
; 0x204e8

AIPlayPluspower: ; 204e8 (8:44e8)
	ld a, [wce21]
	or $01
	ld [wce21], a
	ld a, [wce19]
	ld [wcdd6], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20501

; returns carry if using a Pluspower can KO defending Pokémon
; if active card cannot KO without the boost.
CheckIfPluspowerBoostCausesKnockOut: ; 20501 (8:4501)
; this is mistakenly duplicated
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a

; continue if no attack can knock out.
; if there's an attack that can, only continue
; if it's unusable and there's no card in hand
; to fulfill its energy cost.
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .cannot_ko
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .no_carry
	farcall LookForEnergyNeededForMoveInHand
	jr c, .no_carry

; cannot use an attack that knocks out.
.cannot_ko
; get active Pokémon's info.
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempTurnDuelistCardID], a

; get defending Pokémon's info and check
; its No Damage or Effect substatus.
; if substatus is active, return.
	call SwapTurn
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempNonTurnDuelistCardID], a
	bank1call HandleNoDamageOrEffectSubstatus
	call SwapTurn
	jr c, .no_carry

; check both attacks and decide which one
; can KO with Pluspower boost.
; if neither can KO, return no carry.
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	call .check_ko_with_pluspower
	jr c, .kos_with_pluspower_1
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	call .check_ko_with_pluspower
	jr c, .kos_with_pluspower_2

.no_carry
	or a
	ret

; first attack can KO with Pluspower.
.kos_with_pluspower_1
	call .check_mr_mime
	jr nc, .no_carry
	xor a ; first attack
	scf
	ret
; second attack can KO with Pluspower.
.kos_with_pluspower_2
	call .check_mr_mime
	jr nc, .no_carry
	ld a, $01 ; second attack
	scf
	ret
; 0x20562

; return carry if move is useable and KOs
; defending Pokémon with Pluspower boost.
.check_ko_with_pluspower ; 20562 (8:4562)
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .unusable
	ld a, [wSelectedMoveIndex]
	farcall EstimateDamage_VersusDefendingCard
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	ld b, a
	ld hl, wDamage
	sub [hl]
	jr c, .no_carry
	jr z, .no_carry
	ld a, [hl]
	add 10 ; add Pluspower boost
	ld c, a
	ld a, b
	sub c
	ret c ; return carry if damage > HP left
	ret nz ; does not KO
	scf
	ret ; KOs with Pluspower boost
.unusable
	or a
	ret
; 0x20589

; returns carry if Pluspower boost does
; not exceed 30 damage when facing Mr. Mime.
.check_mr_mime ; 20589 (8:4589)
	ld a, [wDamage]
	add 10 ; add Pluspower boost
	cp 30 ; no danger in preventing damage
	ret c
	call SwapTurn
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	call SwapTurn
	ld a, e
	cp MR_MIME
	ret z
; damage is >= 30 but not Mr. Mime
	scf
	ret
; 0x205a5

; returns carry 7/10 of the time
; if selected move is useable, can't KO without Pluspower boost
; can damage Mr. Mime even with Pluspower boost
; and has a minimum damage > 0.
CheckIfMoveNeedsPluspowerBoostToKnockOut: ; 205a5 (8:45a5)
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	call .check_can_ko
	jr nc, .no_carry
	call .check_random
	jr nc, .no_carry
	call .check_mr_mime
	jr nc, .no_carry
	scf
	ret
.no_carry
	or a
	ret
; 0x205bb

; returns carry if Pluspower boost does
; not exceed 30 damage when facing Mr. Mime.
.check_mr_mime ; 205bb (8:45bb)
	ld a, [wDamage]
	add 10 ; add Pluspower boost
	cp 30 ; no danger in preventing damage
	ret c
	call SwapTurn
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	call SwapTurn
	ld a, e
	cp MR_MIME
	ret z
; damage is >= 30 but not Mr. Mime
	scf
	ret
; 0x205d7

; return carry if move is useable but cannot KO.
.check_can_ko ; 205d7 (8:45d7)
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .unuseable
	ld a, [wSelectedMoveIndex]
	farcall EstimateDamage_VersusDefendingCard
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	ld b, a
	ld hl, wDamage
	sub [hl]
	jr c, .no_carry
	jr z, .no_carry
; can't KO.
	scf
	ret
.unuseable
	or a
	ret
; 0x205f6

; return carry 7/10 of the time if
; move is useable and minimum damage > 0.
.check_random ; 205f6 (8:45f6)
	farcall CheckIfSelectedMoveIsUnusable
	jr c, .unuseable
	ld a, [wSelectedMoveIndex]
	farcall EstimateDamage_VersusDefendingCard
	ld a, [wAIMinDamage]
	cp 10
	jr c, .unuseable
	ld a, 10
	call Random
	cp 3
	ret
; 0x20612

AIPlaySwitch: ; 20612 (8:4612)
	ld a, [wce21]
	or $02
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	xor a
	ld [wcdb4], a
	ret
; 0x2062e

; returns carry if the active card has less energy cards
; than the retreat cost and if AI can't play an energy
; card from the hand to fulfill the cost
CheckIfActiveCardCanSwitch: ; 2062e (8:462e)
; check if AI can already play an energy card from hand to retreat
	ld a, [wAIPlayEnergyCardForRetreat]
	or a
	jr z, .check_cost_amount

; can't play energy card from hand to retreat
; compare number of energy cards attached to retreat cost
	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	call GetPlayAreaCardRetreatCost
	push af
	ld e, PLAY_AREA_ARENA
	farcall CountNumberOfEnergyCardsAttached
	ld b, a
	pop af
	sub b
	; jump if cards attached > retreat cost
	jr c, .check_cost_amount
	cp 2
	; jump if retreat cost is 2 more energy cards
	; than the number of cards attached
	jr nc, .switch

.check_cost_amount
	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	call GetPlayAreaCardRetreatCost
	cp 3
	; jump if retreat cost >= 3
	jr nc, .switch

	push af
	ld e, PLAY_AREA_ARENA
	farcall CountNumberOfEnergyCardsAttached
	pop bc
	cp b
	; jump if energy cards attached < retreat cost
	jr c, .switch
	ret

.switch
	farcall AIDecideBenchPokemonToSwitchTo
	ccf
	ret
; 0x20666

AIPlayGustOfWind: ; 20666 (8:4666)
	ld a, [wce21]
	or $10
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x2067e

CheckWhetherToUseGustOfWind: ; 2067e (8:467e)
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetNonTurnDuelistVariable
	dec a
	or a
	ret z ; no bench cards
	ld a, [wce20]
	and $10
	ret nz
	farcall CheckIfActivePokemonCanUseAnyNonResidualMove
	ret nc ; no non-residual move can be used

	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .check_id ; if can't KO
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .no_carry ; if KO move is useable
	farcall LookForEnergyNeededForMoveInHand
	jr c, .no_carry ; if energy card is in hand

.check_id
	; skip if current active card is MEW3 or MEWTWO1
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	cp MEW3
	jr z, .no_carry
	cp MEWTWO1
	jr z, .no_carry

	call .FindBenchCardToKnockOut
	ret c

	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	call .CheckIfNoAttackDealsDamage
	jr c, .check_bench_energy

	; skip if current arena card's color is
	; the defending card's weakness
	call GetArenaCardColor
	call TranslateColorToWR
	ld b, a
	call SwapTurn
	call GetArenaCardWeakness
	call SwapTurn
	and b
	jr nz, .no_carry

; check weakness
	call .FindBenchCardWithWeakness
	ret nc ; no bench card weak to arena card
	scf
	ret ; found bench card weak to arena card

.no_carry
	or a
	ret

; being here means AI's arena card cannot damage player's arena card

; first check if there is a card in player's bench that
; has no attached energy cards and that the AI can damage
.check_bench_energy
	; return carry if there's a bench card with weakness
	call .FindBenchCardWithWeakness
	ret c

	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetNonTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA
; loop through bench and check attached energy cards
.loop_1
	inc e
	dec d
	jr z, .check_bench_hp
	call SwapTurn
	call GetPlayAreaCardAttachedEnergies
	call SwapTurn
	ld a, [wTotalAttachedEnergies]
	or a
	jr nz, .loop_1 ; skip if has energy attached
	call .CheckIfCanDamageBenchedCard
	jr nc, .loop_1
	ld a, e
	scf
	ret

.check_bench_hp
	ld a, $ff
	ld [wce06], a
	xor a
	ld [wce08], a
	ld e, a
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetNonTurnDuelistVariable
	ld d, a

; find bench card with least amount of available HP
.loop_2
	inc e
	dec d
	jr z, .check_found
	ld a, e
	add DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	ld b, a
	ld a, [wce06]
	inc b
	cp b
	jr c, .loop_2
	call .CheckIfCanDamageBenchedCard
	jr nc, .loop_2
	dec b
	ld a, b
	ld [wce06], a
	ld a, e
	ld [wce08], a
	jr .loop_2

.check_found
	ld a, [wce08]
	or a
	jr z, .no_carry
; a card was found

.set_carry
	scf
	ret

.check_can_damage
	push bc
	push hl
	xor a ; PLAY_AREA_ARENA
	farcall CheckIfCanDamageDefendingPokemon
	pop hl
	pop bc
	jr nc, .loop_3
	ld a, c
	scf
	ret

; returns carry if any of the player's
; benched cards is weak to color in b
; and has a way to damage it
.FindBenchCardWithWeakness ; 2074d (8:474d)
	ld a, DUELVARS_BENCH
	call GetNonTurnDuelistVariable
	ld c, PLAY_AREA_ARENA
.loop_3
	inc c
	ld a, [hli]
	cp $ff
	jr z, .no_carry
	call SwapTurn
	call LoadCardDataToBuffer1_FromDeckIndex
	call SwapTurn
	ld a, [wLoadedCard1Weakness]
	and b
	jr nz, .check_can_damage
	jr .loop_3

; returns carry if neither attack can deal damage
.CheckIfNoAttackDealsDamage ; 2076b (8:476b)
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	call .CheckIfAttackDealsNoDamage
	jr c, .second_attack
	ret
.second_attack
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	call .CheckIfAttackDealsNoDamage
	jr c, .true
	ret
.true
	scf
	ret

; returns carry if attack is Pokemon Power
; or otherwise doesn't deal any damage
.CheckIfAttackDealsNoDamage ; 20782 (8:4782)
	ld a, [wSelectedMoveIndex]
	ld e, a
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	ld d, a
	call CopyMoveDataAndDamage_FromDeckIndex
	ld a, [wLoadedMoveCategory]

	; skip if move is a Power or has 0 damage
	cp POKEMON_POWER
	jr z, .no_damage
	ld a, [wDamage]
	or a
	ret z

	; check damage against defending card
	ld a, [wSelectedMoveIndex]
	farcall EstimateDamage_VersusDefendingCard
	ld a, [wAIMaxDamage]
	or a
	ret nz

.no_damage
	scf
	ret

; returns carry if there is a player's bench card that
; the opponent's current active card can KO
.FindBenchCardToKnockOut ; 207a9 (8:47a9)
	ld a, DUELVARS_BENCH
	call GetNonTurnDuelistVariable
	ld e, PLAY_AREA_BENCH_1

.loop_4
	ld a, [hli]
	cp $ff
	ret z

; overwrite the player's active card and its HP
; with the current bench card that is being checked
	push hl
	push de
	ld b, a
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	push af
	ld [hl], b
	ld a, e
	add DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	ld b, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	push af
	ld [hl], b

	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	call .CheckIfAnyAttackKnocksOut
	jr nc, .next
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .found
	farcall LookForEnergyNeededForMoveInHand
	jr c, .found

; the following two local routines can be condensed into one
; since they both revert the player's arena card
.next
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	pop de
	inc e
	pop hl
	jr .loop_4

; revert player's arena card and set carry
.found
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	pop de
	ld a, e
	pop hl
	scf
	ret

; returns carry if any of arena card's attacks
; KOs player card in location stored in e
.CheckIfAnyAttackKnocksOut ; 20806 (8:4806)
	xor a ; first attack
	call .CheckIfAttackKnocksOut
	ret c
	ld a, $01 ; second attack

; returns carry if attack KOs player card
; in location stored in e
.CheckIfAttackKnocksOut
	push de
	farcall EstimateDamage_VersusDefendingCard
	pop de
	ld a, DUELVARS_ARENA_CARD_HP
	add e
	call GetNonTurnDuelistVariable
	ld hl, wDamage
	sub [hl]
	ret c
	ret nz
	scf
	ret

; returns carry if opponent's arena card can damage
; this benched card if it were switched with
; the player's arena card
.CheckIfCanDamageBenchedCard ; 20821 (8:4821)
	push bc
	push de
	push hl

	; overwrite arena card data
	ld a, e
	add DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	ld b, a
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	push af
	ld [hl], b

	; overwrite arena card HP
	ld a, e
	add DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	ld b, a
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	push af
	ld [hl], b

	xor a ; PLAY_AREA_ARENA
	farcall CheckIfCanDamageDefendingPokemon
	jr c, .can_damage

; the following two local routines can be condensed into one
; since they both revert the player's arena card

; can't damage
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	pop hl
	pop de
	pop bc
	or a
	ret

.can_damage
	ld a, DUELVARS_ARENA_CARD_HP
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	pop af
	ld [hl], a
	pop hl
	pop de
	pop bc
	scf
	ret
; 0x2086d

AIPlayBill: ; 2086d (8:486d)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20878

; return carry if cards in deck > 9
CheckDeckCardsAmount: ; 20878 (8:4878)
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	cp DECK_SIZE - 9
	ret
; 0x20880

AIPlayEnergyRemoval: ; 20880 (8:4880)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, [wce1a]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20895

; picks an energy card in the player's Play Area to remove
CheckEnergyCardToRemoveInPlayArea: ; 20895 (8:4895)
; check if the current active card can KO player's card
; if it's possible to KO, then do not consider the player's
; active card to remove its attached energy
	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .cannot_ko
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .can_ko
	farcall LookForEnergyNeededForMoveInHand
	jr nc, .cannot_ko

.can_ko
	; start checking from the bench
	ld a, PLAY_AREA_BENCH_1
	ld [wce0f], a
	jr .check_bench_energy
.cannot_ko
	; start checking from the arena card
	xor a ; PLAY_AREA_ARENA
	ld [wce0f], a

; loop each card and check if it has enough energy to use any attack
; if it does, then proceed to pick an energy card to remove
.check_bench_energy
	call SwapTurn
	ld a, [wce0f]
	ld e, a
.loop_1
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	jr z, .default

	ld d, a
	call .CheckIfCardHasEnergyAttached
	jr nc, .next_1
	call .CheckIfNotEnoughEnergyToAttack
	jr nc, .pick_energy ; jump if enough energy to attack
.next_1
	inc e
	jr .loop_1

.pick_energy
; a play area card was picked to remove energy
; store the picked energy card to remove in wce1a
; and set carry
	ld a, e
	push af
	call PickAttachedEnergyCard
	ld [wce1a], a
	pop af
	call SwapTurn
	scf
	ret

; if no card in player's Play Area was found with enough energy
; to attack, just pick an energy card from player's active card
; (in case the AI cannot KO it this turn)
.default
	ld a, [wce0f]
	or a
	jr nz, .check_bench_damage ; not active card
	call .CheckIfCardHasEnergyAttached
	jr c, .pick_energy

; lastly, check what attack on player's Play Area is highest damaging
; and pick an energy card attached to that Pokemon to remove
.check_bench_damage
	xor a
	ld [wce06], a
	ld [wce08], a

	ld e, PLAY_AREA_BENCH_1
.loop_2
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	jr z, .found_damage

	ld d, a
	call .CheckIfCardHasEnergyAttached
	jr nc, .next_2
	call .FindHighestDamagingAttack
.next_2
	inc e
	jr .loop_2

.found_damage
	ld a, [wce08]
	or a
	jr z, .no_carry ; skip if none found
	ld e, a
	jr .pick_energy
.no_carry
	call SwapTurn
	or a
	ret

; returns carry if this card has any energy cards attached
.CheckIfCardHasEnergyAttached ; 2091a (8:491a)
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	or a
	ret z
	scf
	ret

; returns carry if this card does not
; have enough energy for either of its attacks
.CheckIfNotEnoughEnergyToAttack ; 20924 (8:4924)
	push de
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckEnergyNeededForAttack
	jr nc, .enough_energy
	pop de

	push de
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckEnergyNeededForAttack
	jr nc, .check_surplus
	pop de

; neither attack has enough energy
	scf
	ret

.enough_energy
	pop de
	or a
	ret

; first attack doesn't have enough energy (or is just a Pokemon Power)
; but second attack has enough energy to be used
; check if there's surplus energy for attack and, if so, return carry
.check_surplus
	farcall CheckIfNoSurplusEnergyForMove
	pop de
	ccf
	ret

; stores in wce06 the highest damaging attack
; for the card in play area location in e
; and stores this card's location in wce08
.FindHighestDamagingAttack ; 2094f (8:494f)
	push de
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a

	xor a ; first attack
	farcall EstimateDamage_VersusDefendingCard
	ld a, [wDamage]
	or a
	jr z, .skip_1
	ld e, a
	ld a, [wce06]
	cp e
	jr nc, .skip_1
	ld a, e
	ld [wce06], a ; store this damage value
	pop de
	ld a, e
	ld [wce08], a ; store this location
	jr .second_attack

.skip_1
	pop de

.second_attack
	push de
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a

	ld a, $01 ; second attack
	farcall EstimateDamage_VersusDefendingCard
	ld a, [wDamage]
	or a
	jr z, .skip_2
	ld e, a
	ld a, [wce06]
	cp e
	jr nc, .skip_2
	ld a, e
	ld [wce06], a ; store this damage value
	pop de
	ld a, e
	ld [wce08], a ; store this location
	ret
.skip_2
	pop de
	ret
; 0x20994

AIPlaySuperEnergyRemoval: ; 20994 (8:4994)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, [wce1a]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, [wce1b]
	ldh [hTempRetreatCostCards], a
	ld a, [wce1c]
	ldh [hTempRetreatCostCards + 1], a
	ld a, [wce1d]
	ldh [hTempRetreatCostCards + 2], a
	ld a, $ff
	ldh [hTempRetreatCostCards + 3], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x209bc

; picks two energy cards in the player's Play Area to remove
CheckTwoEnergyCardsToRemoveInPlayArea: ; 209bc (8:49bc)
	ld e, PLAY_AREA_BENCH_1
.loop_1
; first find an Arena card with a color energy card
; to discard for card effect
; return immediately if no Arena cards
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	jr z, .exit
	
	ld d, a
	push de
	call .LookForNonDoubleColorless
	pop de
	jr c, .not_double_colorless
	inc e
	jr .loop_1

; returns carry if an energy card other than double colorless
; is found attached to the card in play area location e
.LookForNonDoubleColorless
	ld a, e
	call CreateArenaOrBenchEnergyCardList
	ld hl, wDuelTempList
.loop_2
	ld a, [hli]
	cp $ff
	ret z
	call LoadCardDataToBuffer1_FromDeckIndex
	cp DOUBLE_COLORLESS_ENERGY
	; any basic energy card
	; will set carry flag here
	jr nc, .loop_2
	ret

.exit
	or a
	ret

; card in Play Area location e was found with
; a basic energy card
.not_double_colorless
	ld a, e
	ld [wce0f], a

; check if the current active card can KO player's card
; if it's possible to KO, then do not consider the player's
; active card to remove its attached energy
	xor a ; PLAY_AREA_ARENA
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .cannot_ko
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .can_ko
	farcall LookForEnergyNeededForMoveInHand
	jr nc, .cannot_ko

.can_ko
	; start checking from the bench
	call SwapTurn
	ld e, PLAY_AREA_BENCH_1
	jr .loop_3
.cannot_ko
	; start checking from the arena card
	call SwapTurn
	ld e, PLAY_AREA_ARENA

; loop each card and check if it has enough energy to use any attack
; if it does, then proceed to pick energy cards to remove
.loop_3
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	jr z, .no_carry

	ld d, a
	call .CheckIfFewerThanTwoEnergyCards
	jr c, .next_1
	call .CheckIfNotEnoughEnergyToAttack
	jr nc, .found_card ; jump if enough energy to attack
.next_1
	inc e
	jr .loop_3

.found_card
; a play area card was picked to remove energy
; if this is not the Arena Card, then check
; entire bench to pick the highest damage
	ld a, e
	or a
	jr nz, .check_bench_damage

; store the picked energy card to remove in wce1a
; and set carry
.pick_energy
	ld [wce1b], a
	call PickTwoAttachedEnergyCards
	ld [wce1c], a
	ld a, b
	ld [wce1d], a
	call SwapTurn
	ld a, [wce0f]
	push af
	call GetEnergyCardToDiscard
	ld [wce1a], a
	pop af
	scf
	ret

; check what attack on player's Play Area is highest damaging
; and pick an energy card attached to that Pokemon to remove
.check_bench_damage
	xor a
	ld [wce06], a
	ld [wce08], a

	ld e, PLAY_AREA_BENCH_1
.loop_4
	ld a, DUELVARS_ARENA_CARD
	add e
	call GetTurnDuelistVariable
	cp $ff
	jr z, .found_damage

	ld d, a
	call .CheckIfFewerThanTwoEnergyCards
	jr c, .next_2
	call .CheckIfNotEnoughEnergyToAttack
	jr c, .next_2
	call .FindHighestDamagingAttack
.next_2
	inc e
	jr .loop_4

.found_damage
	ld a, [wce08]
	or a
	jr z, .no_carry
	jr .pick_energy
.no_carry
	call SwapTurn
	or a
	ret

; returns carry if the number of energy cards attached
; is fewer than 2, or if all energy combined yields
; fewer than 2 energy
.CheckIfFewerThanTwoEnergyCards ; 20a77 (8:4a77)
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	cp 2
	ret c ; return if fewer than 2 attached cards

; count all energy attached
; i.e. colored energy card = 1
; and double colorless energy card = 2
	xor a
	ld b, NUM_COLORED_TYPES
	ld hl, wAttachedEnergies
.loop_5
	add [hl]
	inc hl
	dec b
	jr nz, .loop_5
	ld b, [hl]
	srl b
	add b
	cp 2
	ret

; returns carry if this card does not
; have enough energy for either of its attacks
.CheckIfNotEnoughEnergyToAttack ; 20a92 (8:4a92)
	push de
	xor a ; first attack
	ld [wSelectedMoveIndex], a
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckEnergyNeededForAttack
	jr nc, .enough_energy
	pop de

	push de
	ld a, $01 ; second attack
	ld [wSelectedMoveIndex], a
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a
	farcall CheckEnergyNeededForAttack
	jr nc, .check_surplus
	pop de

; neither attack has enough energy
	scf
	ret

.enough_energy
	pop de
	or a
	ret

; first attack doesn't have enough energy (or is just a Pokemon Power)
; but second attack has enough energy to be used
; check if there's surplus energy for attack and, if so,
; return carry if this surplus energy is at least 2
.check_surplus
	farcall CheckIfNoSurplusEnergyForMove
	cp 2
	jr c, .enough_energy
	pop de
	scf
	ret
; 0x20ac1

; stores in wce06 the highest damaging attack
; for the card in play area location in e
; and stores this card's location in wce08
.FindHighestDamagingAttack ; 20ac1 (8:4ac1)
	push de
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a

	xor a ; first attack
	farcall EstimateDamage_VersusDefendingCard
	ld a, [wDamage]
	or a
	jr z, .skip_1
	ld e, a
	ld a, [wce06]
	cp e
	jr nc, .skip_1
	ld a, e
	ld [wce06], a ; store this damage value
	pop de
	ld a, e
	ld [wce08], a ; store this location
	jr .second_attack

.skip_1
	pop de

.second_attack
	push de
	ld a, e
	ldh [hTempPlayAreaLocation_ff9d], a

	ld a, $01 ; second attack
	farcall EstimateDamage_VersusDefendingCard
	ld a, [wDamage]
	or a
	jr z, .skip_2
	ld e, a
	ld a, [wce06]
	cp e
	jr nc, .skip_2
	ld a, e
	ld [wce06], a ; store this damage value
	pop de
	ld a, e
	ld [wce08], a ; store this location
	ret
.skip_2
	pop de
	ret
; 0x20b06

AIPlayPokemonBreeder: ; 20b06 (8:4b06)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, [wce1a]
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20b1b

CheckIfCanEvolve2StageFromHand: ; 20b1b (8:4b1b)
	call IsPrehistoricPowerActive
	jp c, .done

	ld a, 7
	ld hl, wce08
	call ClearMemory_Bank8

	xor a
	ld [wce06], a
	call CreateHandCardList
	ld hl, wDuelTempList

.loop_hand_1
	ld a, [hli]
	cp $ff
	jr z, .not_found_in_hand

; check if card in hand is any of the following
; stage 2 Pokemon cards
	ld d, a
	call LoadCardDataToBuffer1_FromDeckIndex
	cp VENUSAUR1
	jr z, .found
	cp VENUSAUR2
	jr z, .found
	cp BLASTOISE
	jr z, .found
	cp VILEPLUME
	jr z, .found
	cp ALAKAZAM
	jr z, .found
	cp GENGAR
	jr nz, .loop_hand_1

.found
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	push hl
	call GetTurnDuelistVariable
	pop hl
	ld c, a
	ld e, PLAY_AREA_ARENA

; check Play Area for card that can evolve into
; the picked stage 2 Pokemon
.loop_play_area_1
	push hl
	push bc
	push de
	call CheckIfCanEvolveInto_BasicToStage2
	pop de
	call nc, .can_evolve
	pop bc
	pop hl
	inc e
	dec c
	jr nz, .loop_play_area_1
	jr .loop_hand_1

.can_evolve
	ld a, DUELVARS_ARENA_CARD_HP
	add e
	call GetTurnDuelistVariable
	call ConvertHPToCounters
	swap a
	ld b, a

; count number of energy cards attached and keep
; the lowest 4 bits (capped at $0f)
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	cp $10
	jr c, .not_maxed_out
	ld a, %00001111
.not_maxed_out
	or b

; 4 high bits of a = HP counters Pokemon still has
; 4 low  bits of a = number of energy cards attached

; store this score in wce08 + PLAY_AREA*
	ld hl, wce08
	ld c, e
	ld b, $00
	add hl, bc
	ld [hl], a

; store the deck index of stage 2 Pokemon in wce0f + PLAY_AREA*
	ld hl, wce0f
	add hl, bc
	ld [hl], d

; increase wce06 by one
	ld hl, wce06
	inc [hl]
	ret

.not_found_in_hand
	ld a, [wce06]
	or a
	jr z, .check_evolution_and_dragonite

; an evolution has been found before
	xor a
	ld [wce06], a
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld c, a
	ld e, $00
	ld d, $00

; find highest score in wce08
.loop_score_1
	ld hl, wce08
	add hl, de
	ld a, [wce06]
	cp [hl]
	jr nc, .not_higher

; store this score to wce06
	ld a, [hl]
	ld [wce06], a
; store this PLay Area location to wce07
	ld a, e
	ld [wce07], a

.not_higher
	inc e
	dec c
	jr nz, .loop_score_1

; store the deck index of the stage 2 card
; that has been decided in wce1a,
; return the Play Area location of card
; to evolve in a and return carry
	ld a, [wce07]
	ld e, a
	ld hl, wce0f
	add hl, de
	ld a, [hl]
	ld [wce1a], a
	ld a, [wce07]
	scf
	ret

.check_evolution_and_dragonite
	ld a, 7
	ld hl, wce08
	call ClearMemory_Bank8

	xor a
	ld [wce06], a
	call CreateHandCardList
	ld hl, wDuelTempList
	push hl

.loop_hand_2
	pop hl
	ld a, [hli]
	cp $ff
	jr z, .check_evolution_found

	push hl
	ld d, a
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld c, a
	ld e, PLAY_AREA_ARENA

.loop_play_area_2
; check if evolution is possible
	push bc
	push de
	call CheckIfCanEvolveInto_BasicToStage2
	pop de
	call nc, .HandleDragonite1Evolution
	call nc, .can_evolve

; not possible to evolve or returned carry
; when handling Dragonite1 evolution
	pop bc
	inc e
	dec c
	jr nz, .loop_play_area_2
	jr .loop_hand_2

.check_evolution_found
	ld a, [wce06]
	or a
	jr nz, .evolution_was_found
; no evolution was found before
	or a
	ret

.evolution_was_found
	xor a
	ld [wce06], a
	ld a, $ff
	ld [wce07], a

	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld c, a
	ld e, $00
	ld d, $00

; find highest score in wce08 with at least
; 2 energy cards attached
.loop_score_2
	ld hl, wce08
	add hl, de
	ld a, [wce06]
	cp [hl]
	jr nc, .next_score

; take the lower 4 bits (total energy cards)
; and skip if less than 2
	ld a, [hl]
	ld b, a
	and %00001111
	cp 2
	jr c, .next_score

; has at least 2 energy cards
; store the score in wce06
	ld a, b
	ld [wce06], a
; store this PLay Area location to wce07
	ld a, e
	ld [wce07], a

.next_score
	inc e
	dec c
	jr nz, .loop_score_2

	ld a, [wce07]
	cp $ff
	jr z, .done

; a card to evolve was found
; store the deck index of the stage 2 card
; that has been decided in wce1a,
; return the Play Area location of card
; to evolve in a and return carry
	ld e, a
	ld hl, wce0f
	add hl, de
	ld a, [hl]
	ld [wce1a], a
	ld a, [wce07]
	scf
	ret

.done
	or a
	ret

; return carry if card is evolving to Dragonite1 and if
; - the card that is evolving is not Arena card and
;   number of damage counters in Play Area is under 8;
; - the card that is evolving is Arena card and has under 5
;   damage counters or has less than 3 energy cards attached.
.HandleDragonite1Evolution ; 20c5c (8:4c5c)
	push af
	push bc
	push de
	push hl
	push de

; check card ID
	ld a, d
	call GetCardIDFromDeckIndex
	ld a, e
	pop de
	cp DRAGONITE1
	jr nz, .no_carry

; check card Play Area location
	ld a, e
	or a
	jr z, .active_card_dragonite

; the card that is evolving is not active card
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld b, a
	ld c, 0

; count damage counters in Play Area
.loop_play_area_damage
	dec b
	ld e, b
	push bc
	call GetCardDamage
	pop bc
	call ConvertHPToCounters
	add c
	ld c, a

	ld a, b
	or a
	jr nz, .loop_play_area_damage

; compare number of total damage counters
; with 7, if less or equal to that, set carry
	ld a, 7
	cp c
	jr c, .no_carry
	jr .set_carry

.active_card_dragonite
; the card that is evolving is active card
; compare number of this card's damage counters
; with 5, if less than that, set carry
	ld e, PLAY_AREA_ARENA
	call GetCardDamage
	cp 5
	jr c, .set_carry

; compare number of this card's attached energy cards
; with 3, if less than that, set carry
	ld e, PLAY_AREA_ARENA
	farcall CountNumberOfEnergyCardsAttached
	cp 3
	jr c, .set_carry
	jr .no_carry

.no_carry
	pop hl
	pop de
	pop bc
	pop af
	ret

.set_carry
	pop hl
	pop de
	pop bc
	pop af
	scf
	ret
; 0x20cae

AIPlayProfessorOak: ; 20cae (8:4cae)
	ld a, [wce21]
	or $0c
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20cc1

; sets carry if AI determines a score of playing
; Professor Oak is over a certain threshold.
CheckIfCanPlayProfessorOak: ; 20cc1 (8:4cc1)
; return if cards in deck <= 6
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	cp DECK_SIZE - 6
	ret nc

	ld a, [wOpponentDeckID]
	cp LEGENDARY_ARTICUNO_DECK_ID
	jp z, .HandleLegendaryArticunoDeck
	cp EXCAVATION_DECK_ID
	jp z, .HandleExcavationDeck
	cp WONDERS_OF_SCIENCE_DECK_ID
	jp z, .HandleWondersOfScienceDeck

; return if cards in deck <= 14
.check_cards_deck
	ld a, [hl]
	cp DECK_SIZE - 14
	ret nc

; initialize score
	ld a, $1e
	ld [wce06], a

; check number of cards in hand
.check_cards_hand
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetTurnDuelistVariable
	cp 4
	jr nc, .more_than_3_cards

; less than 4 cards in hand
	ld a, [wce06]
	add $32
	ld [wce06], a
	jr .check_energy_cards

.more_than_3_cards
	cp 9
	jr c, .check_energy_cards

; more than 8 cards
	ld a, [wce06]
	sub $1e
	ld [wce06], a

.check_energy_cards
	farcall CreateEnergyCardListFromHand
	jr nc, .handle_blastoise

; no energy cards in hand
	ld a, [wce06]
	add $28
	ld [wce06], a

.handle_blastoise
	ld a, MUK
	call CountPokemonIDInBothPlayAreas
	jr c, .check_hand

; no Muk in Play Area
	ld a, BLASTOISE
	call CountPokemonIDInPlayArea
	jr nc, .check_hand

; at least one Blastoise in AI Play Area
	ld a, WATER_ENERGY
	farcall LookForCardIDInHand
	jr nc, .check_hand

; no Water energy in hand
	ld a, [wce06]
	add $0a
	ld [wce06], a

; this part seems buggy
; the AI loops through all the cards in hand and checks
; if any of them is not a Pokemon card and has Basic stage.
; it seems like the intention was that if there was
; any Basic Pokemon still in hand, the AI would add to the score.
.check_hand
	call CreateHandCardList
	ld hl, wDuelTempList
.loop_hand
	ld a, [hli]
	cp $ff
	jr z, .check_evolution

	call LoadCardDataToBuffer1_FromDeckIndex
	ld a, [wLoadedCard1Type]
	cp TYPE_ENERGY
	jr c, .loop_hand ; bug, should be jr nc

	ld a, [wLoadedCard1Stage]
	or a
	jr nz, .loop_hand

	ld a, [wce06]
	add $0a
	ld [wce06], a

.check_evolution
	xor a
	ld [wce0f], a
	ld [wce0f + 1], a

	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

.loop_play_area
	push de
	call .LookForEvolution
	pop de
	jr nc, .not_in_hand

; there's a card in hand that can evolve
	ld a, $01
	ld [wce0f], a

.not_in_hand
; check if a card that can evolve was found at all
; if not, go to the next card in the Play Area
	ld a, [wce08]
	cp $01
	jr nz, .next_play_area

; if it was found, set wce0f + 1 to $01
	ld a, $01
	ld [wce0f + 1], a

.next_play_area
	inc e
	dec d
	jr nz, .loop_play_area

; if a card was found that evolves...
	ld a, [wce0f + 1]
	or a
	jr z, .check_score

; ...but that card is not in the hand...
	ld a, [wce0f]
	or a
	jr nz, .check_score

; ...add to the score
	ld a, [wce06]
	add $0a
	ld [wce06], a

; only return carry if score >  $3c
.check_score
	ld a, [wce06]
	ld b, $3c
	cp b
	jr nc, .set_carry
	or a
	ret

.set_carry
	scf
	ret
; 0x20d9d

; return carry if there's a card in the hand that
; can evolve the card in Play Area location in e.
; sets wce08 to $01 if any card is found that can
; evolve regardless of card location.
.LookForEvolution ; 20d9d (8:4d9d)
	xor a
	ld [wce08], a
	ld d, 0

; loop through the whole deck to check if there's
; a card that can evolve this Pokemon.
.loop_deck_evolution
	push de
	call CheckIfCanEvolveInto
	pop de
	jr nc, .can_evolve
.evolution_not_in_hand
	inc d
	ld a, DECK_SIZE
	cp d
	jr nz, .loop_deck_evolution

	or a
	ret

; a card was found that can evolve, set wce08 to $01
; and if the card is in the hand, return carry.
; otherwise resume looping through deck.
.can_evolve
	ld a, $01
	ld [wce08], a
	ld a, DUELVARS_CARD_LOCATIONS
	add d
	call GetTurnDuelistVariable
	cp CARD_LOCATION_HAND
	jr nz, .evolution_not_in_hand

	scf
	ret
; 0x20dc3

; handles Legendary Articuno Deck AI logic.
.HandleLegendaryArticunoDeck ; 20dc3 (8:4dc3)
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp 3
	jr nc, .check_playable_cards

; has less than 3 Pokemon in Play Area.
	push af
	call CreateHandCardList
	pop af
	ld d, a
	ld e, PLAY_AREA_ARENA

; if no cards in hand evolve cards in Play Area,
; returns carry.
.loop_play_area_articuno
	ld a, DUELVARS_ARENA_CARD
	add e

	push de
	call GetTurnDuelistVariable
	farcall CheckForEvolutionInList
	pop de
	jr c, .check_playable_cards

	inc e
	ld a, d
	cp e
	jr nz, .loop_play_area_articuno

.set_carry_articuno
	scf
	ret

; if there are more than 3 energy cards in hand,
; return no carry, otherwise check for playable cards.
.check_playable_cards
	call CountEnergyCardsInHand
	cp 4
	jr nc, .no_carry_articuno

; remove both Professor Oak cards from list
; before checking for playable cards
	call CreateHandCardList
	ld hl, wDuelTempList
	ld e, PROFESSOR_OAK
	farcall RemoveCardIDInList
	ld e, PROFESSOR_OAK
	farcall RemoveCardIDInList

; look in hand for cards that can be played.
; if a card that cannot be played is found, return no carry.
; otherwise return carry.
.loop_hand_articuno
	ld a, [hli]
	cp $ff
	jr z, .set_carry_articuno
	push hl
	farcall CheckIfCardCanBePlayed
	pop hl
	jr c, .loop_hand_articuno

.no_carry_articuno
	or a
	ret
; 0x20e11

; handles Excavation deck AI logic.
; sets score depending on whether there's no
; Mysterious Fossil in play and in hand.
.HandleExcavationDeck ; 20e11 (8:4e11)
; return no carry if cards in deck < 15
	ld a, [hl]
	cp 46
	ret nc

; look for Mysterious Fossil
	ld a, MYSTERIOUS_FOSSIL
	call LookForCardIDInHandAndPlayArea
	jr c, .found_mysterious_fossil
	ld a, $50
	ld [wce06], a
	jp .check_cards_hand
.found_mysterious_fossil
	ld a, $1e
	ld [wce06], a
	jp .check_cards_hand
; 0x20e2c

; handles Wonders of Science AI logic.
; if there's either Grimer or Muk in hand,
; do not play Professor Oak.
.HandleWondersOfScienceDeck ; 20e2c (8:4e2c)
	ld a, GRIMER
	call LookForCardIDInHandList_Bank8
	jr c, .found_grimer_or_muk
	ld a, MUK
	call LookForCardIDInHandList_Bank8
	jr c, .found_grimer_or_muk

	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	jp .check_cards_deck

.found_grimer_or_muk
	or a
	ret
; 0x20e44

AIPlayEnergyRetrieval: ; 20e44 (8:4e44)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, [wce1a]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, [wce1b]
	ldh [hTempRetreatCostCards], a
	cp $ff
	jr z, .asm_20e68
	ld a, $ff
	ldh [$ffa3], a
.asm_20e68
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20e6e

; checks whether AI can play Energy Retrieval and
; picks the energy cards from the discard pile,
; and duplicate cards in hand to discard.
CheckEnergyRetrievalCardsToPick: ; 20e6e (8:4e6e)
; return no carry if no cards in hand
	farcall CreateEnergyCardListFromHand
	jp nc, .no_carry

; handle Go Go Rain Dance deck
; return no carry if there's no Muk card in play and
; if there's no Blastoise card in Play Area
; if there's a Muk in play, continue as normal
	ld a, [wOpponentDeckID]
	cp GO_GO_RAIN_DANCE_DECK_ID
	jr nz, .start
	ld a, MUK
	call CountPokemonIDInBothPlayAreas
	jr c, .start
	ld a, BLASTOISE
	call CountPokemonIDInPlayArea
	jp nc, .no_carry

.start
; find duplicate cards in hand
	call CreateHandCardList
	ld hl, wDuelTempList
	call FindDuplicateCards
	jp c, .no_carry

	ld [wce06], a
	ld a, CARD_LOCATION_DISCARD_PILE
	call FindBasicEnergyCardsInLocation
	jp c, .no_carry

; some basic energy cards were found in Discard Pile
	ld a, $ff
	ld [wce1a], a
	ld [wce1b], a
	ld [wce1c], a

	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

; first check if there are useful energy cards in the list
; and choose them for retrieval first
.loop_play_area
	ld a, DUELVARS_ARENA_CARD
	add e
	push de

; load this card's ID in wTempCardID
; and this card's Type in wTempCardType
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	pop de
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY
	ld [wTempCardType], a

; loop the energy cards in the Discard Pile
; and check if they are useful for this Pokemon
	ld hl, wDuelTempList
.loop_energy_cards_1
	ld a, [hli]
	cp $ff
	jr z, .next_play_area

	ld b, a
	push hl
	farcall CheckIfEnergyIsUseful
	pop hl
	jr nc, .loop_energy_cards_1

	ld a, [wce1a]
	cp $ff
	jr nz, .second_energy_1

; check if there were already chosen cards,
; if this is the second chosen card, return carry

; first energy card found
	ld a, b
	ld [wce1a], a
	call RemoveCardFromList
	jr .next_play_area
.second_energy_1
	ld a, b
	ld [wce1b], a
	jr .set_carry

.next_play_area
	inc e
	dec d
	jr nz, .loop_play_area

; next, if there are still energy cards left to choose,
; loop through the energy cards again and select
; them in order.
	ld hl, wDuelTempList
.loop_energy_cards_2
	ld a, [hli]
	cp $ff
	jr z, .check_chosen
	ld b, a
	ld a, [wce1a]
	cp $ff
	jr nz, .second_energy_2
	ld a, b
	ld [wce1a], a
	call RemoveCardFromList
	jr .loop_energy_cards_2

.second_energy_2
	ld a, b
	ld [wce1b], a
	jr .set_carry

; will set carry if at least one has been chosen
.check_chosen
	ld a, [wce1a]
	cp $ff
	jr nz, .set_carry
.no_carry
	or a
	ret

.set_carry
	ld a, [wce06]
	scf
	ret
; 0x20f27

; remove an element from the list
; and shortens it accordingly
; input:
;   hl = pointer to element after the one to remove
RemoveCardFromList: ; 20f27 (8:4f27)
	push de
	ld d, h
	ld e, l
	dec hl
	push hl
.loop_remove
	ld a, [de]
	ld [hli], a
	cp $ff
	jr z, .done_remove
	inc de
	jr .loop_remove
.done_remove
	pop hl
	pop de
	ret
; 0x20f38

; finds duplicates in card list in hl.
; if a duplicate of Pokemon cards are found, return in
; a the deck index of the second one.
; otherwise, if a duplicate of non-Pokemon cards are found
; return in a the deck index of the second one.
; if no duplicates found, return carry.
; input:
;   hl = list to look in
; output:
;   a = deck index of duplicate card
FindDuplicateCards: ; 20f38 (8:4f38)
	ld a, $ff
	ld [wce0f], a
	ld [wce0f + 1], a
	push hl

.loop_outer
; get ID of current card
	pop hl
	ld a, [hli]
	cp $ff
	jr z, .check_found
	call GetCardIDFromDeckIndex
	ld b, e
	push hl

; loop the rest of the list to find
; another card with the same ID
.loop_inner
	ld a, [hli]
	cp $ff
	jr z, .loop_outer
	ld c, a
	call GetCardIDFromDeckIndex
	ld a, e
	cp b
	jr nz, .loop_inner

; found two cards with same ID
	push bc
	call GetCardType
	pop bc
	cp TYPE_ENERGY
	jr c, .not_energy

; they are energy or trainer cards
; loads wce0f+1 with this card deck index
	ld a, c
	ld [wce0f + 1], a
	jr .loop_outer

.not_energy
; they are Pokemon cards
; loads wce0f with this card deck index
	ld a, c
	ld [wce0f], a
	jr .loop_outer

.check_found
	ld a, [wce0f]
	cp $ff
	jr nz, .no_carry
	ld a, [wce0f + 1]
	cp $ff
	jr nz, .no_carry

; only set carry if duplicate cards were not found
	scf
	ret

.no_carry
; two cards with the same ID were found
; of either Pokemon or Non-Pokemon cards
	or a
	ret
; 0x20f80

AIPlaySuperEnergyRetrieval: ; 20f80 (8:4f80)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, [wce1a]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, [wce1b]
	ldh [hTempRetreatCostCards], a
	ld a, [wce1c]
	ldh [$ffa3], a
	cp $ff
	jr z, .asm_20fbb
	ld a, [wce1d]
	ldh [$ffa4], a
	cp $ff
	jr z, .asm_20fbb
	ld a, [wce1e]
	ldh [$ffa5], a
	cp $ff
	jr z, .asm_20fbb
	ld a, $ff
	ldh [$ffa6], a
.asm_20fbb
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x20fc1

CheckSuperEnergyRetrievalCardsToPick: ; 20fc1 (8:4fc1)
; return no carry if no cards in hand
	farcall CreateEnergyCardListFromHand
	jp nc, .no_carry

; handle Go Go Rain Dance deck
; return no carry if there's no Muk card in play and
; if there's no Blastoise card in Play Area
; if there's a Muk in play, continue as normal
	ld a, [wOpponentDeckID]
	cp GO_GO_RAIN_DANCE_DECK_ID
	jr nz, .start
	ld a, MUK
	call CountPokemonIDInBothPlayAreas
	jr c, .start
	ld a, BLASTOISE
	call CountPokemonIDInPlayArea
	jp nc, .no_carry

.start
; find duplicate cards in hand
	call CreateHandCardList
	ld hl, wDuelTempList
	call FindDuplicateCards
	jp c, .no_carry

; remove the duplicate card in hand
; and run the hand check again
	ld [wce06], a
	ld hl, wDuelTempList
	call FindAndRemoveCardFromList
	call FindDuplicateCards
	jp c, .no_carry

	ld [wce08], a
	ld a, CARD_LOCATION_DISCARD_PILE
	call FindBasicEnergyCardsInLocation
	jp c, .no_carry

; some basic energy cards were found in Discard Pile
	ld a, $ff
	ld [wce1b], a
	ld [wce1c], a
	ld [wce1d], a
	ld [wce1e], a
	ld [wce1f], a

	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

; first check if there are useful energy cards in the list
; and choose them for retrieval first
.loop_play_area
	ld a, DUELVARS_ARENA_CARD
	add e
	push de

; load this card's ID in wTempCardID
; and this card's Type in wTempCardType
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	pop de
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY
	ld [wTempCardType], a

; loop the energy cards in the Discard Pile
; and check if they are useful for this Pokemon
	ld hl, wDuelTempList
.loop_energy_cards_1
	ld a, [hli]
	cp $ff
	jr z, .next_play_area

	ld b, a
	push hl
	farcall CheckIfEnergyIsUseful
	pop hl
	jr nc, .loop_energy_cards_1

; first energy
	ld a, [wce1b]
	cp $ff
	jr nz, .second_energy_1
	ld a, b
	ld [wce1b], a
	call RemoveCardFromList
	jr .next_play_area

.second_energy_1
	ld a, [wce1c]
	cp $ff
	jr nz, .third_energy_1
	ld a, b
	ld [wce1c], a
	call RemoveCardFromList
	jr .next_play_area

.third_energy_1
	ld a, [wce1d]
	cp $ff
	jr nz, .fourth_energy_1
	ld a, b
	ld [wce1d], a
	call RemoveCardFromList
	jr .next_play_area

.fourth_energy_1
	ld a, b
	ld [wce1e], a
	jr .set_carry

.next_play_area
	inc e
	dec d
	jr nz, .loop_play_area

; next, if there are still energy cards left to choose,
; loop through the energy cards again and select
; them in order.
	ld hl, wDuelTempList
.loop_energy_cards_2
	ld a, [hli]
	cp $ff
	jr z, .check_chosen
	ld b, a
	ld a, [wce1b]
	cp $ff
	jr nz, .second_energy_2
	ld a, b

; first energy
	ld [wce1b], a
	call RemoveCardFromList
	jr .loop_energy_cards_2

.second_energy_2
	ld a, [wce1c]
	cp $ff
	jr nz, .third_energy_2
	ld a, b
	ld [wce1c], a
	call RemoveCardFromList
	jr .loop_energy_cards_2

.third_energy_2
	ld a, [wce1d]
	cp $ff
	jr nz, .fourth_energy
	ld a, b
	ld [wce1d], a
	call RemoveCardFromList
	jr .loop_energy_cards_2

.fourth_energy
	ld a, b
	ld [wce1e], a
	jr .set_carry

; will set carry if at least one has been chosen
.check_chosen
	ld a, [wce1b]
	cp $ff
	jr nz, .set_carry

.no_carry
	or a
	ret
.set_carry
	ld a, [wce08]
	ld [wce1a], a
	ld a, [wce06]
	scf
	ret
; 0x210d5

; finds the card with deck index a in list hl,
; and removes it from the list.
; the card HAS to exist in the list, since this
; routine does not check for the terminating byte $ff!
; input:
;   a  = card deck index to look
;   hl = pointer to list of cards
FindAndRemoveCardFromList: ; 210d5 (8:50d5)
	push hl
	ld b, a
.loop_duplicate
	ld a, [hli]
	cp b
	jr nz, .loop_duplicate
	call RemoveCardFromList
	pop hl
	ret
; 0x210e0

AIPlayPokemonCenter: ; 210e0 (8:50e0)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x210eb

CheckIfCanPlayPokemonCenter: ; 210eb (8:50eb)
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a

; return if active Pokemon can KO player's card.
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .start
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .no_carry
	farcall LookForEnergyNeededForMoveInHand
	jr c, .no_carry

.start
	xor a
	ld [wce06], a
	ld [wce08], a
	ld [wce0f], a

	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

.loop_play_area
	ld a, DUELVARS_ARENA_CARD
	add e
	push de
	call GetTurnDuelistVariable
	call LoadCardDataToBuffer1_FromDeckIndex
	ld a, e ; useless instruction
	pop de

; get this Pokemon's current HP in number of counters
; and add it to the total.
	ld a, [wLoadedCard1HP]
	call ConvertHPToCounters
	ld b, a
	ld a, [wce06]
	add b
	ld [wce06], a

; get this Pokemon's current damage counters
; and add it to the total.
	call GetCardDamage
	call ConvertHPToCounters
	ld b, a
	ld a, [wce08]
	add b
	ld [wce08], a

; get this Pokemon's number of attached energy cards
; and add it to the total.
; if there's overflow, return no carry.
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	ld b, a
	ld a, [wce0f]
	add b
	jr c, .no_carry
	ld [wce0f], a

	inc e
	dec d
	jr nz, .loop_play_area

; if (number of damage counters / 2) < (total energy cards attached)
; return no carry.
	ld a, [wce08]
	srl a
	ld hl, wce0f
	cp [hl]
	jr c, .no_carry

; if (number of HP counters * 6 / 10) >= (number of damage counters)
; return no carry.
	ld a, [wce06]
	ld l, a
	ld h, 6
	call HtimesL
	call CalculateWordTensDigit
	ld a, l
	ld hl, wce08
	cp [hl]
	jr nc, .no_carry

	scf
	ret

.no_carry
	or a
	ret
; 0x21170

AIPlayImposterProfessorOak: ; 21170 (8:5170)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x2117b

; sets carry depending on player's number of cards
; in deck in in hand.
CheckWhetherToPlayImposterProfessorOak: ; 2117b (8:517b)
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetNonTurnDuelistVariable
	cp DECK_SIZE - 14
	jr c, .more_than_14_cards

; if player has less than 14 cards in deck, only
; set carry if number of cards in their hands < 6
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetNonTurnDuelistVariable
	cp 6
	jr c, .set_carry
.no_carry
	or a
	ret

; if player has more than 14 cards in deck, only
; set carry if number of cards in their hands >= 9
.more_than_14_cards
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetNonTurnDuelistVariable
	cp 9
	jr c, .no_carry
.set_carry
	scf
	ret
; 0x2119a

AIPlayEnergySearch: ; 2119a (8:519a)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x211aa

; AI checks for playing Energy Search
CheckIfEnergySearchCanBePlayed: ; 211aa (8:51aa)
	farcall CreateEnergyCardListFromHand
	jr c, .start
	call .CheckForUsefulEnergyCards
	jr c, .start

; there are energy cards in hand and at least
; one of them is useful to a card in Play Area
.no_carry
	or a
	ret

.start
	ld a, [wOpponentDeckID]
	cp HEATED_BATTLE_DECK_ID
	jr z, .heated_battle
	cp WONDERS_OF_SCIENCE_DECK_ID
	jr z, .wonders_of_science

; if no energy cards in deck, return no carry
	ld a, CARD_LOCATION_DECK
	call FindBasicEnergyCardsInLocation
	jr c, .no_carry

; if any of the energy cards in deck is useful
; return carry right away...
	call .CheckForUsefulEnergyCards
	jr c, .no_useful
	scf
	ret

; ...otherwise save the list in a before return carry.
.no_useful
	ld a, [wDuelTempList]
	scf
	ret

; Heated Battle deck only searches for Fire and Lightning
; if they are found to be useful to some card in Play Area
.heated_battle
	ld a, CARD_LOCATION_DECK
	call FindBasicEnergyCardsInLocation
	jr c, .no_carry
	call .CheckUsefulFireOrLightningEnergy
	jr c, .no_carry
	scf
	ret

; this subroutine has a bug.
; it was supposed to use the .CheckUsefulGrassEnergy subroutine
; but uses .CheckUsefulFireOrLightningEnergy instead.
.wonders_of_science
	ld a, CARD_LOCATION_DECK
	call FindBasicEnergyCardsInLocation
	jr c, .no_carry
	call .CheckUsefulFireOrLightningEnergy
	jr c, .no_carry
	scf
	ret
; 0x211f1

; return carry if cards in wDuelTempList are not
; useful to any of the Play Area Pokemon
.CheckForUsefulEnergyCards ; 211f1 (8:51f1)
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

.loop_play_area_1
	ld a, DUELVARS_ARENA_CARD
	add e
	push de
	call GetTurnDuelistVariable

; store ID and type of card
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	pop de
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY
	ld [wTempCardType], a

; look in list for a useful energy,
; is any is found return no carry.
	ld hl, wDuelTempList
.loop_energy_1
	ld a, [hli]
	cp $ff
	jr z, .none_found
	ld b, a
	push hl
	farcall CheckIfEnergyIsUseful
	pop hl
	jr nc, .loop_energy_1

	ld a, b
	or a
	ret

.none_found
	inc e
	ld a, e
	cp d
	jr nz, .loop_play_area_1

	scf
	ret
; 0x2122e

; checks whether there are useful energies
; only for Fire and Lightning type Pokemon cards
; in Play Area. If none found, return carry.
.CheckUsefulFireOrLightningEnergy ; 2122e (8:522e)
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

.loop_play_area_2
	ld a, DUELVARS_ARENA_CARD
	add e
	push de
	call GetTurnDuelistVariable

; get card's ID and Type
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	pop de
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY

; only do check if the Pokemon's type
; is either Fire or Lightning
	cp TYPE_ENERGY_FIRE
	jr z, .fire_or_lightning
	cp TYPE_ENERGY_LIGHTNING
	jr nz, .next_play_area

; loop each energy card in list
.fire_or_lightning
	ld [wTempCardType], a
	ld hl, wDuelTempList
.loop_energy_2
	ld a, [hli]
	cp $ff
	jr z, .next_play_area

; if this energy card is useful,
; return no carry.
	ld b, a
	push hl
	farcall CheckIfEnergyIsUseful
	pop hl
	jr nc, .loop_energy_2

	ld a, b
	or a
	ret

.next_play_area
	inc e
	ld a, e
	cp d
	jr nz, .loop_play_area_2

; no card was found to be useful
; for Fire/Lightning type Pokemon card.
	scf
	ret
; 0x21273

; checks whether there are useful energies
; only for Grass type Pokemon cards
; in Play Area. If none found, return carry.
.CheckUsefulGrassEnergy ; 21273 (8:5273)
; unreferenced
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	ld d, a
	ld e, PLAY_AREA_ARENA

.loop_play_area_3
	ld a, DUELVARS_ARENA_CARD
	add e
	push de
	call GetTurnDuelistVariable

; get card's ID and Type
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	pop de
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY

; only do check if the Pokemon's type is Grass
	cp TYPE_ENERGY_GRASS
	jr nz, .next_play_area_3

; loop each energy card in list
	ld [wTempCardType], a
	ld hl, wDuelTempList
.loop_energy_3
	ld a, [hli]
	cp $ff
	jr z, .next_play_area_3

; if this energy card is useful,
; return no carry.
	ld b, a
	push hl
	farcall CheckIfEnergyIsUseful
	pop hl
	jr nc, .loop_energy_3

	ld a, b
	or a
	ret

.next_play_area_3
	inc e
	ld a, e
	cp d
	jr nz, .loop_play_area_3

; no card was found to be useful
; for Grass type Pokemon card.
	scf
	ret
; 0x212b4

AIPlayPokedex: ; 212b4 (8:52b4)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce1a]
	ldh [hTemp_ffa0], a
	ld a, [wce1b]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, [wce1c]
	ldh [hTempRetreatCostCards], a
	ld a, [wce1d]
	ldh [$ffa3], a
	ld a, [wce1e]
	ldh [$ffa4], a
	ld a, $ff
	ldh [$ffa5], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x212dc

CheckWhetherToPlayPokedex: ; 212dc (8:52dc)
	ld a, [wcda6]
	cp $06
	jr c, .no_carry

; return no carry if number of cards in deck <= 4
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	cp DECK_SIZE - 4
	jr nc, .no_carry

; has a 3 in 10 chance of actually playing card
	ld a, 10
	call Random
	cp 3
	jr c, .pick_cards

.no_carry
	or a
	ret

.pick_cards
; the following comparison is disregarded
; the Wonders of Science deck was probably intended
; to use PickPokedexCards_Unreferenced instead
	ld a, [wOpponentDeckID]
	cp WONDERS_OF_SCIENCE_DECK_ID
	jp PickPokedexCards ; bug, should be jp nz
; 0x212ff

; picks order of the cards in deck from the effects of Pokedex.
; prioritises Pokemon cards, then Trainer cards, then energy cards.
; stores the resulting order in wce1a.
PickPokedexCards_Unreferenced: ; 212ff (8:52ff)
; unreferenced
	xor a
	ld [wcda6], a

	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	add DUELVARS_DECK_CARDS
	ld l, a
	lb de, $00, $00
	ld b, 5

; run through 5 of the remaining cards in deck
.next_card
	ld a, [hli]
	ld c, a
	call .GetCardType

; load this card's deck index and type in memory
; wce08 = card types
; wce0f = card deck indices
	push hl
	ld hl, wce08
	add hl, de
	ld [hl], a
	ld hl, wce0f
	add hl, de
	ld [hl], c
	pop hl

	inc e
	dec b
	jr nz, .next_card

; terminate the wce08 list
	ld a, $ff
	ld [wce08 + 5], a

	ld de, wce1a

; find Pokemon
	ld hl, wce08
	ld c, -1
	ld b, $00

; run through the stored cards
; and look for any Pokemon cards.
.loop_pokemon
	inc c
	ld a, [hli]
	cp $ff
	jr z, .find_trainers
	cp TYPE_ENERGY
	jr nc, .loop_pokemon
; found a Pokemon card
; store it in wce1a list
	push hl
	ld hl, wce0f
	add hl, bc
	ld a, [hl]
	pop hl
	ld [de], a
	inc de
	jr .loop_pokemon

; run through the stored cards
; and look for any Trainer cards.
.find_trainers
	ld hl, wce08
	ld c, -1
	ld b, $00

.loop_trainers
	inc c
	ld a, [hli]
	cp $ff
	jr z, .find_energy
	cp TYPE_TRAINER
	jr nz, .loop_trainers
; found a Trainer card
; store it in wce1a list
	push hl
	ld hl, wce0f
	add hl, bc
	ld a, [hl]
	pop hl
	ld [de], a
	inc de
	jr .loop_trainers

.find_energy
	ld hl, wce08
	ld c, -1
	ld b, $00

; run through the stored cards
; and look for any energy cards.
.loop_energy
	inc c
	ld a, [hli]
	cp $ff
	jr z, .done
	and TYPE_ENERGY
	jr z, .loop_energy
; found an energy card
; store it in wce1a list
	push hl
	ld hl, wce0f
	add hl, bc
	ld a, [hl]
	pop hl
	ld [de], a
	inc de
	jr .loop_energy

.done
	scf
	ret
; 0x21383

.GetCardType ; 21383 (8:5383)
	push bc
	push de
	call GetCardIDFromDeckIndex
	call GetCardType
	pop de
	pop bc
	ret
; 0x2138e

; picks order of the cards in deck from the effects of Pokedex.
; prioritises energy cards, then Pokemon cards, then Trainer cards.
; stores the resulting order in wce1a.
PickPokedexCards: ; 2138e (8:538e)
	xor a
	ld [wcda6], a

	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	add DUELVARS_DECK_CARDS
	ld l, a
	lb de, $00, $00
	ld b, 5

; run through 5 of the remaining cards in deck
.next_card
	ld a, [hli]
	ld c, a
	call .GetCardType

; load this card's deck index and type in memory
; wce08 = card types
; wce0f = card deck indices
	push hl
	ld hl, wce08
	add hl, de
	ld [hl], a
	ld hl, wce0f
	add hl, de
	ld [hl], c
	pop hl

	inc e
	dec b
	jr nz, .next_card

; terminate the wce08 list
	ld a, $ff
	ld [wce08 + 5], a

	ld de, wce1a

; find energy
	ld hl, wce08
	ld c, -1
	ld b, $00

; run through the stored cards
; and look for any energy cards.
.loop_energy
	inc c
	ld a, [hli]
	cp $ff
	jr z, .find_pokemon
	and TYPE_ENERGY
	jr z, .loop_energy
; found an energy card
; store it in wce1a list
	push hl
	ld hl, wce0f
	add hl, bc
	ld a, [hl]
	pop hl
	ld [de], a
	inc de
	jr .loop_energy

.find_pokemon
	ld hl, wce08
	ld c, -1
	ld b, $00

; run through the stored cards
; and look for any Pokemon cards.
.loop_pokemon
	inc c
	ld a, [hli]
	cp $ff
	jr z, .find_trainers
	cp TYPE_ENERGY
	jr nc, .loop_pokemon
; found a Pokemon card
; store it in wce1a list
	push hl
	ld hl, wce0f
	add hl, bc
	ld a, [hl]
	pop hl
	ld [de], a
	inc de
	jr .loop_pokemon

; run through the stored cards
; and look for any Trainer cards.
.find_trainers
	ld hl, wce08
	ld c, -1
	ld b, $00

.loop_trainers
	inc c
	ld a, [hli]
	cp $ff
	jr z, .done
	cp TYPE_TRAINER
	jr nz, .loop_trainers
; found a Trainer card
; store it in wce1a list
	push hl
	ld hl, wce0f
	add hl, bc
	ld a, [hl]
	pop hl
	ld [de], a
	inc de
	jr .loop_trainers

.done
	scf
	ret
; 0x21412

.GetCardType ; 21412 (8:5412)
	push bc
	push de
	call GetCardIDFromDeckIndex
	call GetCardType
	pop de
	pop bc
	ret
; 0x2141d

AIPlayFullHeal: ; 2141d (8:541d)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x21428

CheckWhetherToPlayFullHeal: ; 21428 (8:5428)
	ld a, DUELVARS_ARENA_CARD_STATUS
	call GetTurnDuelistVariable

; skip if no status on arena card
	or a ; NO_STATUS
	jr z, .no_carry

	and CNF_SLP_PRZ
	cp PARALYZED
	jr z, .paralyzed
	cp ASLEEP
	jr z, .asleep
	cp CONFUSED
	jr z, .confused
	; if either PSN or DBLPSN, fallthrough

.set_carry
	scf
	ret

.asleep
; set carry if any of the following
; cards are in the Play Area.
	ld a, GASTLY1
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayArea_Bank8
	jr c, .set_carry
	ld a, GASTLY2
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayArea_Bank8
	jr c, .set_carry
	ld a, HAUNTER2
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayArea_Bank8
	jr c, .set_carry

; otherwise fallthrough

.paralyzed
; if Scoop Up is in hand and decided to be played, skip.
	ld a, SCOOP_UP
	call LookForCardIDInHandList_Bank8
	jr nc, .no_scoop_up_prz
	call CheckWhetherToPlayScoopUp
	jr c, .no_carry

.no_scoop_up_prz
; if card can damage defending Pokemon...
	xor a ; PLAY_AREA_ARENA
	farcall CheckIfCanDamageDefendingPokemon
	jr nc, .no_carry
; ...and can play an energy card to retreat, set carry.
	ld a, [wAIPlayEnergyCardForRetreat]
	or a
	jr nz, .set_carry

; if not, check whether it's a card it would rather retreat,
; and if it isn't, set carry.
	farcall AIDecideWhetherToRetreat
	jr nc, .set_carry

.no_carry
	or a
	ret

.confused
; if Scoop Up is in hand and decided to be played, skip.
	ld a, SCOOP_UP
	call LookForCardIDInHandList_Bank8
	jr nc, .no_scoop_up_cnf
	call CheckWhetherToPlayScoopUp
	jr c, .no_carry

.no_scoop_up_cnf
; if card can damage defending Pokemon...
	xor a ; PLAY_AREA_ARENA
	farcall CheckIfCanDamageDefendingPokemon
	jr nc, .no_carry
; ...and can play an energy card to retreat, set carry.
	ld a, [wAIPlayEnergyCardForRetreat]
	or a
	jr nz, .set_carry
; if not, return no carry.
	jr .no_carry
; 0x21497

AIPlayMrFuji: ; 21497 (8:5497)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x214a7

; AI logic for playing Mr Fuji
CheckWhetherToPlayMrFuji: ; 214a7 (8:54a7)
	ld a, $ff
	ld [wce06], a
	ld [wce08], a

; if just one Pokemon in Play Area, skip.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp 1
	ret z

	dec a
	ld d, a
	ld e, PLAY_AREA_BENCH_1

; find a Pokemon in the bench that has damage counters.
.loop_bench
	ld a, DUELVARS_ARENA_CARD
	add e
	push de
	call GetTurnDuelistVariable
	call LoadCardDataToBuffer1_FromDeckIndex
	pop de

	ld a, [wLoadedCard1HP]
	ld b, a

	; skip if zero damage counters
	call GetCardDamage
	call ConvertHPToCounters
	or a
	jr z, .next

; a = damage counters
; b = hp left
	call CalculateBDividedByA_Bank8
	cp 20
	jr nc, .next

; here, HP left in counters is less than twice
; the number of damage counters, that is:
; HP < 1/3 max HP

; if value is less than the one found before, store this one.
	ld hl, wce08
	cp [hl]
	jr nc, .next
	ld [hl], a
	ld a, e
	ld [wce06], a
.next
	inc e
	dec d
	jr nz, .loop_bench

	ld a, [wce06]
	cp $ff
	ret z

	scf
	ret
; 0x214f1

AIPlayScoopUp: ; 214f1 (8:54f1)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, [wce1a]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x21506

CheckWhetherToPlayScoopUp: ; 21506 (8:5506)
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a

; if only one Pokemon in Play Area, skip.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp 2
	jr c, .no_carry

; handle some decks differently
	ld a, [wOpponentDeckID]
	cp LEGENDARY_ARTICUNO_DECK_ID
	jr z, .HandleLegendaryArticuno
	cp LEGENDARY_RONALD_DECK_ID
	jp z, .HandleLegendaryRonald

; if can't KO defending Pokemon, check if defending Pokemon
; can KO this card. If so, then continue.
; If not, return no carry.

; if it can KO the defending Pokemon this turn,
; return no carry.
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .cannot_ko
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .no_carry
	farcall LookForEnergyNeededForMoveInHand
	jr c, .no_carry

.cannot_ko
	ld a, DUELVARS_ARENA_CARD_STATUS
	call GetTurnDuelistVariable
	and CNF_SLP_PRZ
	cp PARALYZED
	jr z, .cannot_retreat
	cp ASLEEP
	jr z, .cannot_retreat

; doesn't have a status that prevents retreat.
; so check if it has enough energy to retreat.
; if not, return no carry.
	xor a
	ldh [hTempPlayAreaLocation_ff9d], a
	call GetPlayAreaCardRetreatCost
	ld b, a
	ld e, PLAY_AREA_ARENA
	farcall CountNumberOfEnergyCardsAttached
	cp b
	jr c, .cannot_retreat

.no_carry
	or a
	ret

.cannot_retreat
; store damage and total HP left
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call LoadCardDataToBuffer1_FromDeckIndex
	ld a, [wLoadedCard1HP]
	call ConvertHPToCounters
	ld d, a

; skip if card has no damage counters.
	ld e, PLAY_AREA_ARENA
	call GetCardDamage
	or a
	jr z, .no_carry

; if (total damage / total HP counters) < 7
; return carry.
; (this corresponds to damage counters
; being under 70% of the max HP)
	ld b, a
	ld a, d
	call CalculateBDividedByA_Bank8
	cp 7
	jr c, .no_carry

; store Pokemon to switch to in wce1a and set carry.
.decide_switch
	farcall AIDecideBenchPokemonToSwitchTo
	jr c, .no_carry
	ld [wce1a], a
	xor a
	scf
	ret

; this deck will use Scoop Up on a benched Articuno2.
; it checks if the defending Pokemon is a Snorlax,
; but interestingly does not check for Muk in both Play Areas.
; will also use Scoop Up on 
.HandleLegendaryArticuno
; if less than 3 Play Area Pokemon cards, skip.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp 3
	jr c, .no_carry

; look for Articuno2 in bench
	ld a, ARTICUNO2
	ld b, PLAY_AREA_BENCH_1
	call LookForCardIDInPlayArea_Bank8
	jr c, .articuno_bench

; check Arena card
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	cp ARTICUNO2
	jr z, .articuno_or_chansey
	cp CHANSEY
	jr nz, .no_carry

; here either Articuno2 or Chansey
; is the Arena Card.
.articuno_or_chansey
; if can't KO defending Pokemon, check if defending Pokemon
; can KO this card. If so, then continue.
; If not, return no carry.

; if it can KO the defending Pokemon this turn,
; return no carry.
	farcall CheckIfAnyMoveKnocksOutDefendingCard
	jr nc, .check_ko
	farcall CheckIfSelectedMoveIsUnusable
	jr nc, .no_carry
	farcall LookForEnergyNeededForMoveInHand
	jr c, .no_carry
.check_ko
	farcall CheckIfDefendingPokemonCanKnockOut
	jr nc, .no_carry
	jr .decide_switch

.articuno_bench
; skip if the defending card is Snorlax
	push af
	ld a, DUELVARS_ARENA_CARD
	call GetNonTurnDuelistVariable
	call SwapTurn
	call GetCardIDFromDeckIndex
	call SwapTurn
	ld a, e
	cp SNORLAX
	pop bc
	jr z, .no_carry

; check attached energy cards.
; if it has any, return no carry.
	ld a, b
.check_attached_energy
	ld e, a
	push af
	farcall CountNumberOfEnergyCardsAttached
	or a
	pop bc
	ld a, b
	jr z, .no_energy
	jp .no_carry

.no_energy
; has decided to Scoop Up benched card,
; store $ff as the Pokemon card to switch to
; because there's no need to switch.
	push af
	ld a, $ff
	ld [wce1a], a
	pop af
	scf
	ret
; 0x215e7

; this deck will use Scoop Up on a benched Articuno2, Zapdos3 or Molres2.
; interestingly, does not check for Muk in both Play Areas.
.HandleLegendaryRonald ; 215e7 (8:55e7)
; if less than 3 Play Area Pokemon cards, skip.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp 3
	jp c, .no_carry

	ld a, ARTICUNO2
	ld b, PLAY_AREA_BENCH_1
	call LookForCardIDInPlayArea_Bank8
	jr c, .articuno_bench
	ld a, ZAPDOS3
	ld b, PLAY_AREA_BENCH_1
	call LookForCardIDInPlayArea_Bank8
	jr c, .check_attached_energy
	ld a, MOLTRES2
	ld b, PLAY_AREA_BENCH_1
	call LookForCardIDInPlayArea_Bank8
	jr c, .check_attached_energy
	jp .no_carry
; 0x2160f

AIPlayMaintenance: ; 2160f (8:560f)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce1a]
	ldh [hTemp_ffa0], a
	ld a, [wce1b]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x2162c

; AI logic for playing Maintenance
CheckWhetherToPlayMaintencance: ; 2162c (8:562c)
; Imakuni? has his own thing
	ld a, [wOpponentDeckID]
	cp IMAKUNI_DECK_ID
	jr z, .imakuni

; skip if number of cars in hand < 4.
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetTurnDuelistVariable
	cp 4
	jr c, .no_carry

; list out all the hand cards and remove
; the card in wce16. Then find any duplicate cards.
	call CreateHandCardList
	ld hl, wDuelTempList
	ld a, [wce16]
	call FindAndRemoveCardFromList
; if duplicates are not found, return no carry.
	call FindDuplicateCards
	jp c, .no_carry

; store the first duplicate card and remove it from the list.
; run duplicate check again.
	ld [wce1a], a
	ld hl, wDuelTempList
	call FindAndRemoveCardFromList
; if duplicates are not found, return no carry.
	call FindDuplicateCards
	jp c, .no_carry

; store the second duplicate card and return carry.
	ld [wce1b], a
	scf
	ret

.no_carry
	or a
	ret

.imakuni
; has a 2 in 10 chance of not skipping.
	ld a, 10
	call Random
	cp 2
	jr nc, .no_carry

; skip if number of cards in hand < 3.
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetTurnDuelistVariable
	cp 3
	jr c, .no_carry

; shuffle hand cards
	call CreateHandCardList
	ld hl, wDuelTempList
	call CountCardsInDuelTempList
	call ShuffleCards

; go through each card and find
; cards that are different from wce16.
; if found, add those cards to wce1a and wce1a+1.
	ld a, [wce16]
	ld b, a
	ld c, 2
	ld de, wce1a

.loop
	ld a, [hli]
	cp $ff
	jr z, .no_carry
	cp b
	jr z, .loop
	ld [de], a
	inc de
	dec c
	jr nz, .loop

; two cards were found, return carry.
	scf
	ret
; 0x2169a

AIPlayRecycle: ; 2169a (8:569a)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld de, $ef
	bank1call TossCoin
	jr nc, .asm_216ae
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	jr .asm_216b2
.asm_216ae
	ld a, $ff
	ldh [hTemp_ffa0], a
.asm_216b2
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x216b8

; lists cards to look for in the Discard Pile.
; has priorities for Ghost Deck, and a "default" priority list
; (which is the Fire Charge deck, since it's the only other
; deck that runs a Recycle card in it.)
CheckWhetherToPlayRecycle: ; 216b8 (8:56b8)
; no use checking if no cards in Discard Pile
	call CreateDiscardPileCardList
	jr c, .no_carry

	ld a, $ff
	ld [wce08], a
	ld [wce08 + 1], a
	ld [wce08 + 2], a
	ld [wce08 + 3], a
	ld [wce08 + 4], a

; handle Ghost deck differently
	ld hl, wDuelTempList
	ld a, [wOpponentDeckID]
	cp GHOST_DECK_ID
	jr z, .loop_2

; priority list for Fire Charge deck
.loop_1
	ld a, [hli]
	cp $ff
	jr z, .done

	ld b, a
	call LoadCardDataToBuffer1_FromDeckIndex

; double colorless
	cp DOUBLE_COLORLESS_ENERGY
	jr nz, .chansey
	ld a, b
	ld [wce08], a
	jr .loop_1

.chansey
	cp CHANSEY
	jr nz, .tauros
	ld a, b
	ld [wce08 + 1], a
	jr .loop_1

.tauros
	cp TAUROS
	jr nz, .jigglypuff
	ld a, b
	ld [wce08 + 2], a
	jr .loop_1

.jigglypuff
	cp JIGGLYPUFF1
	jr nz, .loop_1
	ld a, b
	ld [wce08 + 3], a
	jr .loop_1

; loop through wce08 and set carry
; on the first that was found in Discard Pile.
; if none were found, return no carry.
.done
	ld hl, wce08
	ld b, 5
.loop_found
	ld a, [hli]
	cp $ff
	jr nz, .set_carry
	dec b
	jr nz, .loop_found
.no_carry
	or a
	ret
.set_carry
	scf
	ret

; priority list for Ghost deck
.loop_2
	ld a, [hli]
	cp $ff
	jr z, .done

	ld b, a
	call LoadCardDataToBuffer1_FromDeckIndex

; gastly2
	cp GASTLY2
	jr nz, .gastly1
	ld a, b
	ld [wce08], a
	jr .loop_2

.gastly1
	cp GASTLY1
	jr nz, .zubat
	ld a, b
	ld [wce08 + 1], a
	jr .loop_2

.zubat
	cp ZUBAT
	jr nz, .ditto
	ld a, b
	ld [wce08 + 2], a
	jr .loop_2

.ditto
	cp DITTO
	jr nz, .meowth
	ld a, b
	ld [wce08 + 3], a
	jr .loop_2

.meowth
	cp MEOWTH2
	jr nz, .loop_2
	ld a, b
	ld [wce08 + 4], a
	jr .loop_2
; 0x21755

AIPlayLass: ; 21755 (8:5755)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x21768

CheckWhetherToPlayLass: ; 21768 (8:5768)
; skip if player has less than 7 cards in hand
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetNonTurnDuelistVariable
	cp 7
	jr c, .no_carry

; look for Trainer cards in hand (except for Lass)
; if any is found, return no carry.
; otherwise, return carry.
	call CreateHandCardList
	ld hl, wDuelTempList
.loop
	ld a, [hli]
	cp $ff
	jr z, .set_carry
	ld b, a
	call LoadCardDataToBuffer1_FromDeckIndex
	cp LASS
	jr z, .loop
	ld a, [wLoadedCard1Type]
	cp TYPE_TRAINER
	jr nz, .loop
.no_carry
	or a
	ret
.set_carry
	scf
	ret
; 0x2178f

AIPlayItemFinder: ; 2178f (8:578f)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce1a]
	ldh [hTemp_ffa0], a
	ld a, [wce1b]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, [wce19]
	ldh [hTempRetreatCostCards], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x217b1

; checks whether there's Energy Removal in Discard Pile.
; if so, find duplicate cards in hand to discard
; that are not Mr Mime and Pokemon Trader cards.
; this logic is suitable only for Strange Psyshock deck.
CheckWhetherToPlayItemFinder: ; 217b1 (8:57b1)
; skip if no Discard Pile.
	call CreateDiscardPileCardList
	jr c, .no_carry

; look for Energy Removal in Discard Pile
	ld hl, wDuelTempList
.loop_discard_pile
	ld a, [hli]
	cp $ff
	jr z, .no_carry
	ld b, a
	call LoadCardDataToBuffer1_FromDeckIndex
	cp ENERGY_REMOVAL
	jr nz, .loop_discard_pile
; found, store this deck index
	ld a, b
	ld [wce06], a

; before looking for cards to discard in hand,
; remove any Mr Mime and Pokemon Trader cards.
; this way these are guaranteed to not be discarded.
	call CreateHandCardList
	ld hl, wDuelTempList
.loop_hand
	ld a, [hli]
	cp $ff
	jr z, .asm_217eb
	ld b, a
	call LoadCardDataToBuffer1_FromDeckIndex
	cp MR_MIME
	jr nz, .pkmn_trader
	call RemoveCardFromList
	jr .loop_hand
.pkmn_trader
	cp POKEMON_TRADER
	jr nz, .loop_hand
	call RemoveCardFromList
	jr .loop_hand

; choose cards to discard from hand.
.asm_217eb
	ld hl, wDuelTempList

; do not discard card in wce16
	ld a, [wce16]
	call FindAndRemoveCardFromList
; find any duplicates, if not found, return no carry.
	call FindDuplicateCards
	jp c, .no_carry

; store the duplicate found in wce1a and
; remove it from the hand list.
	ld [wce1a], a
	ld hl, wDuelTempList
	call FindAndRemoveCardFromList
; find duplicates again, if not found, return no carry.
	call FindDuplicateCards
	jp c, .no_carry

; store the duplicate found in wce1b.
; output the card to be recovered from the Discard Pile.
	ld [wce1b], a
	ld a, [wce06]
	scf
	ret

.no_carry
	or a
	ret
; 0x21813

AIPlayImakuni: ; 21813 (8:5813)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x2181e

; only sets carry if Active card is not confused.
CheckWhetherToPlayImakuni: ; 2181e (8:581e)
	ld a, DUELVARS_ARENA_CARD_STATUS
	call GetTurnDuelistVariable
	and CNF_SLP_PRZ
	cp CONFUSED
	jr z, .confused
	scf
	ret
.confused
	or a
	ret
; 0x2182d

AIPlayGambler: ; 2182d (8:582d)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wOpponentDeckID]
	cp IMAKUNI_DECK_ID
	jr z, .asm_2186a
	ld hl, wRNG1
	ld a, [hli]
	ld [wce06], a
	ld a, [hli]
	ld [wce08], a
	ld a, [hl]
	ld [wce0f], a
	ld a, $50
	ld [hld], a
	ld [hld], a
	ld [hl], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ld hl, wRNG1
	ld a, [wce06]
	ld [hli], a
	ld a, [wce08]
	ld [hli], a
	ld a, [wce0f]
	ld [hl], a
	ret
.asm_2186a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, OPPACTION_EXECUTE_TRAINER_EFFECTS
	bank1call AIMakeDecision
	ret
; 0x21875

; checks whether to play Gambler.
; aside from Imakuni, all other opponents only
; play if there's less than 4 cards in the deck.
CheckWhetherToPlayGambler: ; 21875 (8:5875)
; Imakuni? has his own routine
	ld a, [wOpponentDeckID]
	cp IMAKUNI_DECK_ID
	jr z, .imakuni

	ld a, [wcda7]
	and $80
	jr z, .no_carry

; set carry if number of cards in deck <= 4
	ld a, DUELVARS_NUMBER_OF_CARDS_NOT_IN_DECK
	call GetTurnDuelistVariable
	cp DECK_SIZE - 4
	jr nc, .set_carry
.no_carry
	or a
	ret

.imakuni
; has a 2 in 10 chance of returning carry
	ld a, 10
	call Random
	cp 2
	jr nc, .no_carry
.set_carry
	scf
	ret
; 0x21899

AIPlayRevive: ; 21899 (8:5899)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, $07
	bank1call AIMakeDecision
	ret
; 0x218a9

; checks certain cards in Discard Pile to use Revive on.
; suitable for Muscle For Brains deck only.
CheckWhetherToPlayRevive: ; 218a9 (8:58a9)
; skip if no cards in Discard Pile
	call CreateDiscardPileCardList
	jr c, .no_carry

; skip if number of Pokemon cards in Play Area >= 4
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp 4
	jr nc, .no_carry

; look in Discard Pile for specific cards.
	ld hl, wDuelTempList
.loop_discard_pile
	ld a, [hli]
	cp $ff
	jr z, .no_carry
	ld b, a
	call LoadCardDataToBuffer1_FromDeckIndex

; these checks have a bug.
; it works fine for Hitmonchan and Hitmonlee,
; but in case it's a Tauros card, the routine will fallthrough
; into the Kangaskhan check. since it will never be equal to Kangaskhan,
; it will fallthrough into the set carry branch.
; in case it's a Kangaskhan card, the check will fail in the Tauros check
; and jump back into the loop. so just by accident the Tauros check works,
; but Kangaskhan will never be correctly checked because of this.
	cp HITMONCHAN
	jr z, .set_carry
	cp HITMONLEE
	jr z, .set_carry
	cp TAUROS
	jr nz, .loop_discard_pile ; bug, these two lines should be swapped
	cp KANGASKHAN
	jr z, .set_carry ; bug, these two lines should be swapped

.set_carry
	ld a, b
	scf
	ret
.no_carry
	or a
	ret
; 0x218d8

AIPlayPokemonFlute: ; 218d8 (8:58d8)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTemp_ffa0], a
	ld a, $07
	bank1call AIMakeDecision
	ret
; 0x218e8

CheckWhetherToPlayPokemonFlute: ; 218e8 (8:58e8)
; if player has no Discard Pile, skip.
	call SwapTurn
	call CreateDiscardPileCardList
	call SwapTurn
	jr c, .no_carry

; if player's Play Area is already full, skip.
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetNonTurnDuelistVariable
	cp MAX_PLAY_AREA_POKEMON
	jr nc, .no_carry

	ld a, [wOpponentDeckID]
	cp IMAKUNI_DECK_ID
	jr z, .imakuni

	ld a, $ff
	ld [wce06], a
	ld [wce08], a

; find Basic stage Pokemon with lowest HP in Discard Pile
	ld hl, wDuelTempList
.loop_1
	ld a, [hli]
	cp $ff
	jr z, .done

	ld b, a
	call SwapTurn
	call LoadCardDataToBuffer1_FromDeckIndex
	call SwapTurn
; skip this card if it's not Pokemon card
	ld a, [wLoadedCard1Type]
	cp TYPE_ENERGY
	jr nc, .loop_1
; skip this card if it's not Basic Stage
	ld a, [wLoadedCard1Stage]
	or a ; BASIC
	jr nz, .loop_1

; compare this HP with one stored
	ld a, [wLoadedCard1HP]
	push hl
	ld hl, wce06
	cp [hl]
	pop hl
	jr nc, .loop_1
; if lower, store this one
	ld [wce06], a
	ld a, b
	ld [wce08], a
	jr .loop_1

.done
; if lowest HP found >= 50, return no carry
	ld a, [wce06]
	cp 50
	jr nc, .no_carry
; otherwise output its deck index in a and set carry.
	ld a, [wce08]
	scf
	ret
.no_carry
	or a
	ret

.imakuni
; has 2 in 10 chance of not skipping
	ld a, 10
	call Random
	cp 2
	jr nc, .no_carry

; look for any Basic Pokemon card
	ld hl, wDuelTempList
.loop_2
	ld a, [hli]
	cp $ff
	jr z, .no_carry
	ld b, a
	call SwapTurn
	call LoadCardDataToBuffer1_FromDeckIndex
	call SwapTurn
	ld a, [wLoadedCard1Type]
	cp TYPE_ENERGY
	jr nc, .loop_2
	ld a, [wLoadedCard1Stage]
	or a ; BASIC
	jr nz, .loop_2

; a Basic stage Pokemon was found, return carry
	ld a, b
	scf
	ret
; 0x21977

AIPlayClefairyDollOrMysteriousFossil: ; 21977 (8:5977)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, $07
	bank1call AIMakeDecision
	ret
; 0x21982

; AI logic for playing Clefairy Doll
CheckWhetherToPlayClefairyDollOrMysteriousFossil: ; 21982 (8:5982)
; if has max number of Play Area Pokemon, skip
	ld a, DUELVARS_NUMBER_OF_POKEMON_IN_PLAY_AREA
	call GetTurnDuelistVariable
	cp MAX_PLAY_AREA_POKEMON
	jr nc, .no_carry

; store number of Play Area Pokemon cards
	ld [wce06], a

; if the Arena card is Wigglytuff, return carry
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	cp WIGGLYTUFF
	jr z, .set_carry

; if number of Play Area Pokemon >= 4, return no carry
	ld a, [wce06]
	cp 4
	jr nc, .no_carry

.set_carry
	scf
	ret
.no_carry
	or a
	ret
; 0x219a6

AIPlayPokeball: ; 219a6 (8:59a6)
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld de, $ef
	bank1call TossCoin
	ldh [hTemp_ffa0], a
	jr nc, .asm_219bc
	ld a, [wce19]
	ldh [hTempPlayAreaLocation_ffa1], a
	jr .asm_219c0
.asm_219bc
	ld a, $ff
	ldh [hTempPlayAreaLocation_ffa1], a
.asm_219c0
	ld a, $07
	bank1call AIMakeDecision
	ret
; 0x219c6

CheckWhetherToPlayPokeball: ; 219c6 (8:59c6)
; go to the routines associated with deck ID
	ld a, [wOpponentDeckID]
	cp FIRE_CHARGE_DECK_ID
	jr z, .fire_charge
	cp HARD_POKEMON_DECK_ID
	jr z, .hard_pokemon
	cp PIKACHU_DECK_ID
	jr z, .pikachu
	cp ETCETERA_DECK_ID
	jr z, .etcetera
	cp LOVELY_NIDORAN_DECK_ID
	jp z, .lovely_nidoran
	or a
	ret

; this deck runs a deck check for specific
; card IDs in order of decreasing priority
.fire_charge
	ld e, CHANSEY
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, TAUROS
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, JIGGLYPUFF1
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ret

; this deck runs a deck check for specific
; card IDs in order of decreasing priority
.hard_pokemon
	ld e, RHYHORN
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, RHYDON
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, ONIX
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ret

; this deck runs a deck check for specific
; card IDs in order of decreasing priority
.pikachu
	ld e, PIKACHU2
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, PIKACHU3
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, PIKACHU4
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, PIKACHU1
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, FLYING_PIKACHU
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ret

; this deck runs a deck check for specific
; card IDs in order of decreasing priority
; given a specific energy card in hand.
; also it avoids redundancy, so if it already
; has that card ID in the hand, it is skipped.
.etcetera
; fire
	ld a, FIRE_ENERGY
	call LookForCardIDInHandList_Bank8
	jr nc, .lightning
	ld a, CHARMANDER
	call LookForCardIDInHandList_Bank8
	jr c, .lightning
	ld a, MAGMAR2
	call LookForCardIDInHandList_Bank8
	jr c, .lightning
	ld e, CHARMANDER
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, MAGMAR2
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c

.lightning
	ld a, LIGHTNING_ENERGY
	call LookForCardIDInHandList_Bank8
	jr nc, .fighting
	ld a, PIKACHU1
	call LookForCardIDInHandList_Bank8
	jr c, .fighting
	ld a, MAGNEMITE1
	call LookForCardIDInHandList_Bank8
	jr c, .fighting
	ld e, PIKACHU1
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, MAGNEMITE1
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c

.fighting
	ld a, FIGHTING_ENERGY
	call LookForCardIDInHandList_Bank8
	jr nc, .psychic
	ld a, DIGLETT
	call LookForCardIDInHandList_Bank8
	jr c, .psychic
	ld a, MACHOP
	call LookForCardIDInHandList_Bank8
	jr c, .psychic
	ld e, DIGLETT
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, MACHOP
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c

.psychic
	ld a, PSYCHIC_ENERGY
	call LookForCardIDInHandList_Bank8
	jr nc, .done_etcetera
	ld a, GASTLY1
	call LookForCardIDInHandList_Bank8
	jr c, .done_etcetera
	ld a, JYNX
	call LookForCardIDInHandList_Bank8
	jr c, .done_etcetera
	ld e, GASTLY1
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
	ld e, JYNX
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret c
.done_etcetera
	or a
	ret

; this deck looks for card evolutions if
; its pre-evolution is in hand or in Play Area.
; if none of these are found, it looks for pre-evolutions
; of cards it has in hand.
; it does this for both the NidoranM (first)
; and NidoranF (second) families.
.lovely_nidoran
	ld b, NIDORANM
	ld a, NIDORINO
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	ret c
	ld b, NIDORINO
	ld a, NIDOKING
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	ret c
	ld a, NIDORANM
	ld b, NIDORINO
	call LookForCardIDInDeck_GivenCardIDInHand
	ret c
	ld a, NIDORINO
	ld b, NIDOKING
	call LookForCardIDInDeck_GivenCardIDInHand
	ret c
	ld b, NIDORANF
	ld a, NIDORINA
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	ret c
	ld b, NIDORINA
	ld a, NIDOQUEEN
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	ret c
	ld a, NIDORANF
	ld b, NIDORINA
	call LookForCardIDInDeck_GivenCardIDInHand
	ret c
	ld a, NIDORINA
	ld b, NIDOQUEEN
	call LookForCardIDInDeck_GivenCardIDInHand
	ret c
	ret
; 0x21b12

AIPlayComputerSearch: ; 21b12 (8:5b12)
	ld a, [wce21]
	or $08
	ld [wce21], a
	ld a, [wce16]
	ldh [hTempCardIndex_ff9f], a
	ld a, [wce19]
	ldh [hTempRetreatCostCards], a
	ld a, [wce1a]
	ldh [hTemp_ffa0], a
	ld a, [wce1b]
	ldh [hTempPlayAreaLocation_ffa1], a
	ld a, $07
	bank1call AIMakeDecision
	ret
; 0x21b34

; checks what Deck ID AI is playing and handle
; them in their own routine.
AIDecideComputerSearch: ; 21b34 (8:5b34)
; skip if number of cards in hand < 3
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetTurnDuelistVariable
	cp 3
	jr c, .no_carry

	ld a, [wOpponentDeckID]
	cp ROCK_CRUSHER_DECK_ID
	jr z, AIDecideComputerSearch_RockCrusher
	cp WONDERS_OF_SCIENCE_DECK_ID
	jp z, AIDecideComputerSearch_WondersOfScience
	cp FIRE_CHARGE_DECK_ID
	jp z, AIDecideComputerSearch_FireCharge
	cp ANGER_DECK_ID
	jp z, AIDecideComputerSearch_Anger

.no_carry
	or a
	ret

AIDecideComputerSearch_RockCrusher: ; 21b55 (8:5b55)
; if number of cards in hand is equal to 3,
; target Professor Oak in deck
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetTurnDuelistVariable
	cp 3
	jr nz, .graveler

	ld e, PROFESSOR_OAK
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jr c, .find_discard_cards_1
	; no Professor Oak in deck, fallthrough

.no_carry
	or a
	ret

.find_discard_cards_1
	ld [wce06], a
	ld a, $ff
	ld [wce1a], a
	ld [wce1b], a

	call CreateHandCardList
	ld hl, wDuelTempList
	ld de, wce1a
.loop_hand_1
	ld a, [hli]
	cp $ff
	jr z, .check_discard_cards

	ld c, a
	call LoadCardDataToBuffer1_FromDeckIndex

; if any of the following cards are in the hand,
; return no carry.
	cp PROFESSOR_OAK
	jr z, .no_carry
	cp FIGHTING_ENERGY
	jr z, .no_carry
	cp DOUBLE_COLORLESS_ENERGY
	jr z, .no_carry
	cp DIGLETT
	jr z, .no_carry
	cp GEODUDE
	jr z, .no_carry
	cp ONIX
	jr z, .no_carry
	cp RHYHORN
	jr z, .no_carry

; if it's same as card in wce16, skip this card.
	ld a, [wce16]
	ld b, a
	ld a, c
	cp b
	jr z, .loop_hand_1

; store this card index in memory
	ld [de], a
	inc de
	jr .loop_hand_1

.check_discard_cards
; check if two cards were found
; if so, output in a the deck index
; of Professor Oak card found in deck and set carry.
	ld a, [wce1b]
	cp $ff
	jr z, .no_carry
	ld a, [wce06]
	scf
	ret

; more than 3 cards in hand, so look for
; specific evolution cards.

; checks if there is a Graveler card in the deck to target.
; if so, check if there's Geodude in hand or Play Area,
; and if there's no Graveler card in hand, proceed.
; also removes Geodude from hand list so that it is not discarded.
.graveler
	ld e, GRAVELER
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jr nc, .golem
	ld [wce06], a
	ld a, GEODUDE
	call LookForCardIDInHandAndPlayArea
	jr nc, .golem
	ld a, GRAVELER
	call LookForCardIDInHandList_Bank8
	jr c, .golem
	call CreateHandCardList
	ld hl, wDuelTempList
	ld e, GEODUDE
	farcall RemoveCardIDInList
	jr .find_discard_cards_2

; checks if there is a Golem card in the deck to target.
; if so, check if there's Graveler in Play Area,
; and if there's no Golem card in hand, proceed.
.golem
	ld e, GOLEM
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jr nc, .dugtrio
	ld [wce06], a
	ld a, GRAVELER
	call LookForCardIDInPlayArea_Bank8
	jr nc, .dugtrio
	ld a, GOLEM
	call LookForCardIDInHandList_Bank8
	jr c, .dugtrio
	call CreateHandCardList
	ld hl, wDuelTempList
	jr .find_discard_cards_2

; checks if there is a Dugtrio card in the deck to target.
; if so, check if there's Diglett in Play Area,
; and if there's no Dugtrio card in hand, proceed.
.dugtrio
	ld e, DUGTRIO
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .no_carry
	ld [wce06], a
	ld a, DIGLETT
	call LookForCardIDInPlayArea_Bank8
	jp nc, .no_carry
	ld a, DUGTRIO
	call LookForCardIDInHandList_Bank8
	jp c, .no_carry
	call CreateHandCardList
	ld hl, wDuelTempList
	jr .find_discard_cards_2

.find_discard_cards_2
	ld a, $ff
	ld [wce1a], a
	ld [wce1b], a

	ld bc, wce1a
	ld d, $00 ; start considering Trainer cards only
	ld a, [wce16]
	ld e, a

; this loop will store in wce1a cards to discard from hand.
; at the start it will only consider Trainer cards,
; then if there are still needed to discard,
; move on to Pokemon cards, and finally to Energy cards.
.loop_hand_2
	call RemoveFromListDifferentCardOfGivenType
	jr c, .found
	inc d ; move on to next type (Pokemon, then Energy)
	ld a, $03
	cp d
	jp z, .no_carry ; no more types to look
	jr .loop_hand_2
.found
; store this card in memory,
; and if there's still one more card to search for,
; jump back into the loop.
	ld [bc], a
	inc bc
	ld a, [wce1b]
	cp $ff
	jr z, .loop_hand_2

; output in a Computer Search target and set carry.
	ld a, [wce06]
	scf
	ret

AIDecideComputerSearch_WondersOfScience: ; 21c56 (8:5c56)
; if number of cards in hand < 5, target Professor Oak in deck
	ld a, DUELVARS_NUMBER_OF_CARDS_IN_HAND
	call GetTurnDuelistVariable
	cp 5
	jr nc, .look_in_hand

; target Professor Oak for Computer Search
	ld e, PROFESSOR_OAK
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .look_in_hand ; can be a jr
	ld [wce06], a
	jr .find_discard_cards

; Professor Oak not in deck, move on to
; look for other cards instead.
; if Grimer or Muk are not in hand,
; check whether to use Computer Search on them.
.look_in_hand
	ld a, GRIMER
	call LookForCardIDInHandList_Bank8
	jr nc, .target_grimer
	ld a, MUK
	call LookForCardIDInHandList_Bank8
	jr nc, .target_muk

.no_carry
	or a
	ret

; first check Grimer
; if in deck, check cards to discard.
.target_grimer
	ld e, GRIMER
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .no_carry ; can be a jr
	ld [wce06], a
	jr .find_discard_cards

; first check Muk
; if in deck, check cards to discard.
.target_muk
	ld e, MUK
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .no_carry ; can be a jr
	ld [wce06], a

; only discard Trainer cards from hand.
; if there are less than 2 Trainer cards to discard,
; then return with no carry.
; else, store the cards to discard and the
; target card deck index, and return carry.
.find_discard_cards
	call CreateHandCardList
	ld hl, wDuelTempList
	ld d, $00 ; first consider Trainer cards
	ld a, [wce16]
	ld e, a
	call RemoveFromListDifferentCardOfGivenType
	jr nc, .no_carry
	ld [wce1a], a
	call RemoveFromListDifferentCardOfGivenType
	jr nc, .no_carry
	ld [wce1b], a
	ld a, [wce06]
	scf
	ret

AIDecideComputerSearch_FireCharge: ; 21cbb (8:5cbb)
; pick target card in deck from highest to lowest priority.
; if not found in hand, go to corresponding branch.
	ld a, CHANSEY
	call LookForCardIDInHandList_Bank8
	jr nc, .chansey
	ld a, TAUROS
	call LookForCardIDInHandList_Bank8
	jr nc, .tauros
	ld a, JIGGLYPUFF1
	call LookForCardIDInHandList_Bank8
	jr nc, .jigglypuff
	; fallthrough

.no_carry
	or a
	ret

; for each card targeted, check if it's in deck and,
; if not, then return no carry.
; else, look for cards to discard.
.chansey
	ld e, CHANSEY
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .no_carry
	ld [wce06], a
	jr .find_discard_cards
.tauros
	ld e, TAUROS
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .no_carry
	ld [wce06], a
	jr .find_discard_cards
.jigglypuff
	ld e, JIGGLYPUFF1
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	jp nc, .no_carry
	ld [wce06], a

; only discard Trainer cards from hand.
; if there are less than 2 Trainer cards to discard,
; then return with no carry.
; else, store the cards to discard and the
; target card deck index, and return carry.
.find_discard_cards
	call CreateHandCardList
	ld hl, wDuelTempList
	ld d, $00 ; first consider Trainer cards
	ld a, [wce16]
	ld e, a
	call RemoveFromListDifferentCardOfGivenType
	jr nc, .no_carry
	ld [wce1a], a
	call RemoveFromListDifferentCardOfGivenType
	jr nc, .no_carry
	ld [wce1b], a
	ld a, [wce06]
	scf
	ret
; 0x21d1e

AIDecideComputerSearch_Anger: ; 21d1e (8:5d1e)
; for each of the following cards,
; first run a check if there's a pre-evolution in
; Play Area or in the hand. If there is, search for card.
; otherwise, check if the evolution card is in
; hand and if so, search for it instead.
	ld b, RATTATA
	ld a, RATICATE
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	jr c, .find_discard_cards
	ld a, RATTATA
	ld b, RATICATE
	call LookForCardIDInDeck_GivenCardIDInHand
	jr c, .find_discard_cards
	ld b, GROWLITHE
	ld a, ARCANINE1
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	jr c, .find_discard_cards
	ld a, GROWLITHE
	ld b, ARCANINE1
	call LookForCardIDInDeck_GivenCardIDInHand
	jr c, .find_discard_cards
	ld b, DODUO
	ld a, DODRIO
	call LookForCardIDInDeck_GivenCardIDInHandAndPlayArea
	jr c, .find_discard_cards
	ld a, DODUO
	ld b, DODRIO
	call LookForCardIDInDeck_GivenCardIDInHand
	jr c, .find_discard_cards
	; fallthrough

.no_carry
	or a
	ret

; only discard Trainer cards from hand.
; if there are less than 2 Trainer cards to discard,
; then return with no carry.
; else, store the cards to discard and the
; target card deck index, and return carry.
.find_discard_cards
	ld [wce06], a
	call CreateHandCardList
	ld hl, wDuelTempList
	ld d, $00 ; first consider Trainer cards
	ld a, [wce16]
	ld e, a
	call RemoveFromListDifferentCardOfGivenType
	jr nc, .no_carry
	ld [wce1a], a
	call RemoveFromListDifferentCardOfGivenType
	jr nc, .no_carry
	ld [wce1b], a
	ld a, [wce06]
	scf
	ret
; 0x21d7a

Func_21d7a: ; 21d7a (8:5d7a)
	INCROM $21d7a, $227f6

; lists in wDuelTempList all the basic energy cards
; is card location of a.
; returns carry if none were found.
; input:
;   a = CARD_LOCATION_* to look
FindBasicEnergyCardsInLocation: ; 227f6 (8:67f6)
	ld [wTempAI], a
	lb de, 0, 0
	ld hl, wDuelTempList

; d = number of basic energy cards found
; e = current card in deck
; loop entire deck
.loop
	ld a, DUELVARS_CARD_LOCATIONS
	add e
	push hl
	call GetTurnDuelistVariable
	ld hl, wTempAI
	cp [hl]
	pop hl
	jr nz, .next_card

; is in the card location we're looking for
	ld a, e
	push de
	push hl
	call GetCardIDFromDeckIndex
	pop hl
	ld a, e
	pop de
	cp DOUBLE_COLORLESS_ENERGY
	; only basic energy cards
	; will set carry here
	jr nc, .next_card

; is a basic energy card
; add this card to the TempList
	ld a, e
	ld [hli], a
	inc d
.next_card
	inc e
	ld a, DECK_SIZE
	cp e
	jr nz, .loop

; check if any were found
	ld a, d
	or a
	jr z, .set_carry

; some were found, add the termination byte on TempList
	ld a, $ff
	ld [hl], a
	ld a, d
	ret

.set_carry
	scf
	ret
; 0x2282e

; returns in a the card index of energy card
; attached to Pokémon in Play Area location a,
; that is to be discarded.
GetEnergyCardToDiscard: ; 2282e (8:682e)
; load Pokémon's attached energy cards.
	ldh [hTempPlayAreaLocation_ff9d], a
	call CreateArenaOrBenchEnergyCardList
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld e, a
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	or a
	jr z, .no_energy

; load card's ID and type.
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld b, a
	ld a, DUELVARS_ARENA_CARD
	add b
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY
	ld [wTempCardType], a

; find a card that is not useful.
; if none is found, just return the first energy card attached.
	ld hl, wDuelTempList
.loop
	ld a, [hl]
	cp $ff
	jr z, .not_found
	farcall CheckIfEnergyIsUseful
	jr nc, .found
	inc hl
	jr .loop

.found
	ld a, [hl]
	ret
.not_found
	ld hl, wDuelTempList
	ld a, [hl]
	ret
.no_energy
	ld a, $ff
	ret
; 0x22875

; returns in a the deck index of an energy card attached to card
; in Play Area location a..
; prioritises double colorless energy, then any useful energy,
; then defaults to the first energy card attached if neither
; of those are found.
; returns $ff in a if there are no energy cards attached.
; input:
;   a = Play Area location to check
; output:
;   a = deck index of attached energy card
PickAttachedEnergyCard: ; 22875 (8:6875)
; construct energy list and check if there are any energy cards attached
	ldh [hTempPlayAreaLocation_ff9d], a
	call CreateArenaOrBenchEnergyCardList
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld e, a
	call GetPlayAreaCardAttachedEnergies
	ld a, [wTotalAttachedEnergies]
	or a
	jr z, .no_energy

; load card data and store its type
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld b, a
	ld a, DUELVARS_ARENA_CARD
	add b
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY
	ld [wTempCardType], a

; first look for any double colorless energy
	ld hl, wDuelTempList
.loop_1
	ld a, [hl]
	cp $ff
	jr z, .check_useful
	push hl
	call GetCardIDFromDeckIndex
	ld a, e
	cp DOUBLE_COLORLESS_ENERGY
	pop hl
	jr z, .found
	inc hl
	jr .loop_1

; then look for any energy cards that are useful
.check_useful
	ld hl, wDuelTempList
.loop_2
	ld a, [hl]
	cp $ff
	jr z, .default
	farcall CheckIfEnergyIsUseful
	jr c, .found
	inc hl
	jr .loop_2

; return the energy card that was found
.found
	ld a, [hl]
	ret

; if none were found with the above criteria,
; just return the first option
.default
	ld hl, wDuelTempList
	ld a, [hl]
	ret

; return $ff if no energy cards attached
.no_energy
	ld a, $ff
	ret
; 0x228d1

; stores in wTempAI and wCurCardCanAttack the deck indices
; of energy cards attached to card in Play Area location a.
; prioritises double colorless energy, then any useful energy,
; then defaults to the first two energy cards attached if neither
; of those are found.
; returns $ff in a if there are no energy cards attached.
; input:
;   a = Play Area location to check
; output:
;   [wTempAI] = deck index of attached energy card
;   [wCurCardCanAttack] = deck index of attached energy card
PickTwoAttachedEnergyCards: ; 228d1 (8:68d1)
	ldh [hTempPlayAreaLocation_ff9d], a
	call CreateArenaOrBenchEnergyCardList
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld e, a
	farcall CountNumberOfEnergyCardsAttached
	cp 2
	jp c, .not_enough

; load card data and store its type
	ldh a, [hTempPlayAreaLocation_ff9d]
	ld b, a
	ld a, DUELVARS_ARENA_CARD
	add b
	call GetTurnDuelistVariable
	call GetCardIDFromDeckIndex
	ld a, e
	ld [wTempCardID], a
	call LoadCardDataToBuffer1_FromCardID
	ld a, [wLoadedCard1Type]
	or TYPE_ENERGY
	ld [wTempCardType], a
	ld a, $ff
	ld [wTempAI], a
	ld [wCurCardCanAttack], a

; first look for any double colorless energy
	ld hl, wDuelTempList
.loop_1
	ld a, [hl]
	cp $ff
	jr z, .check_useful
	push hl
	call GetCardIDFromDeckIndex
	ld a, e
	cp DOUBLE_COLORLESS_ENERGY
	pop hl
	jr z, .found_double_colorless
	inc hl
	jr .loop_1
.found_double_colorless
	ld a, [wTempAI]
	cp $ff
	jr nz, .already_chosen_1
	ld a, [hli]
	ld [wTempAI], a
	jr .loop_1
.already_chosen_1
	ld a, [hl]
	ld [wCurCardCanAttack], a
	jr .done

; then look for any energy cards that are useful
.check_useful
	ld hl, wDuelTempList
.loop_2
	ld a, [hl]
	cp $ff
	jr z, .default
	farcall CheckIfEnergyIsUseful
	jr c, .found_useful
	inc hl
	jr .loop_2
.found_useful
	ld a, [wTempAI]
	cp $ff
	jr nz, .already_chosen_2
	ld a, [hli]
	ld [wTempAI], a
	jr .loop_2
.already_chosen_2
	ld a, [hl]
	ld [wCurCardCanAttack], a
	jr .done

; if none were found with the above criteria,
; just return the first 2 options
.default
	ld hl, wDuelTempList
	ld a, [wTempAI]
	cp $ff
	jr nz, .pick_one_card

; pick 2 cards
	ld a, [hli]
	ld [wTempAI], a
	ld a, [hl]
	ld [wCurCardCanAttack], a
	jr .done
.pick_one_card
	ld a, [wTempAI]
	ld b, a
.loop_3
	ld a, [hli]
	cp b
	jr z, .loop_3 ; already picked
	ld [wCurCardCanAttack], a

.done
	ld a, [wCurCardCanAttack]
	ld b, a
	ld a, [wTempAI]
	ret

; return $ff if no energy cards attached
.not_enough
	ld a, $ff
	ret
; 0x2297b

; copies $ff terminated buffer from hl to de
CopyBuffer: ; 2297b (8:697b)
	ld a, [hli]
	ld [de], a
	cp $ff
	ret z
	inc de
	jr CopyBuffer
; 0x22983

; zeroes a bytes starting at hl
ClearMemory_Bank8: ; 22983 (8:6983)
	push af
	push bc
	push hl
	ld b, a
	xor a
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	pop hl
	pop bc
	pop af
	ret
; 0x22990

; counts number of energy cards found in hand
; and outputs result in a
; sets carry if none are found
; output:
; 	a = number of energy cards found
CountEnergyCardsInHand: ; 22990 (8:6990)
	farcall CreateEnergyCardListFromHand
	ret c
	ld b, -1
	ld hl, wDuelTempList
.loop
	inc b
	ld a, [hli]
	cp $ff
	jr nz, .loop
	ld a, b
	or a
	ret
; 0x229a3

; converts HP in a to number of equivalent damage counters
; input:
; 	a = HP
; output:
; 	a = number of damage counters
ConvertHPToCounters: ; 229a3 (8:69a3)
	push bc
	ld c, 0
.loop
	sub 10
	jr c, .carry
	inc c
	jr .loop
.carry
	ld a, c
	pop bc
	ret
; 0x229b0

; calculates floor(hl / 10)
CalculateWordTensDigit: ; 229b0 (8:69b0)
	push bc
	push de
	lb bc, $ff, -10
	lb de, $ff, -1
.asm_229b8
	inc de
	add hl, bc
	jr c, .asm_229b8
	ld h, d
	ld l, e
	pop de
	pop bc
	ret
; 0x229c1

CalculateBDividedByA_Bank8: ; 229c1 (8:69c1)
	push bc
	ld c, a
	ld a, b
	ld b, c
	ld c, 0
.loop
	sub b
	jr c, .done
	inc c
	jr .loop
.done
	ld a, c
	pop bc
	ret
; 0x229d0

; returns in a the deck index of the first
; instance of card with ID equal to the ID in e
; in card location a.
; returns carry if found.
; input:
;   a = CARD_LOCATION_*
;   e = card ID to look for
LookForCardIDInLocation: ; 229d0 (8:69d0)
	ld b, a
	ld c, e
	lb de, $00, 0 ; d is never used
.loop
	ld a, DUELVARS_CARD_LOCATIONS
	add e
	call GetTurnDuelistVariable
	cp b
	jr nz, .next
	ld a, e
	push de
	call GetCardIDFromDeckIndex
	ld a, e
	pop de
	cp c
	jr z, .found
.next
	inc e
	ld a, DECK_SIZE
	cp e
	jr nz, .loop

; not found
	or a
	ret
.found
	ld a, e
	scf
	ret
; 0x229f3

; return carry if card ID loaded in a is found in hand
; and outputs in a the deck index of that card
; input:
;	a = card ID
; output:
; 	a = card deck index, if found
;	carry set if found
LookForCardIDInHandList_Bank8: ; 229f3 (8:69f3)
	ld [wTempCardIDToLook], a
	call CreateHandCardList
	ld hl, wDuelTempList

.loop
	ld a, [hli]
	cp $ff
	ret z

	ldh [hTempCardIndex_ff98], a
	call LoadCardDataToBuffer1_FromDeckIndex
	ld b, a
	ld a, [wTempCardIDToLook]
	cp b
	jr nz, .loop

	ldh a, [hTempCardIndex_ff98]
	scf
	ret
; 0x22a10

; searches in deck for card ID 1 in a, and
; if found, searches in Hand/Play Area for card ID 2 in b, and
; if found, searches for card ID 1 in Hand/Play Area, and
; if none found, return carry and output deck index
; of the card ID 1 in deck.
; input:
;   a = card ID 1
;   b = card ID 2
; output:
;   a = index of card ID 1 in deck
LookForCardIDInDeck_GivenCardIDInHandAndPlayArea: ; 22a10 (8:6a10)
; store a in wCurCardCanAttack
; and b in wTempAI
	ld c, a
	ld a, b
	ld [wTempAI], a
	ld a, c
	ld [wCurCardCanAttack], a

; look for the card ID 1 in deck
	ld e, a
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret nc

; was found, store its deck index in memory
	ld [wTempAIPokemonCard], a

; look for the card ID 2
; in Hand and Play Area, return if not found.
	ld a, [wTempAI]
	call LookForCardIDInHandAndPlayArea
	ret nc

; look for the card ID 1 in the Hand and Play Area
; if any card is found, return no carry.
	ld a, [wCurCardCanAttack]
	call LookForCardIDInHandAndPlayArea
	jr c, .no_carry
; none found

	ld a, [wTempAIPokemonCard]
	scf
	ret

.no_carry
	or a
	ret
; 0x22a39

; returns carry if card ID in a
; is found in Play Area or in hand
; input:
;	a = card ID
LookForCardIDInHandAndPlayArea: ; 22a39 (8:6a39)
	ld b, a
	push bc
	call LookForCardIDInHandList_Bank8
	pop bc
	ret c

	ld a, b
	ld b, PLAY_AREA_ARENA
	call LookForCardIDInPlayArea_Bank8
	ret c
	or a
	ret
; 0x22a49

; searches in deck for card ID 1 in a, and
; if found, searches in Hand Area for card ID 2 in b, and
; if found, searches for card ID 1 in Hand/Play Area, and
; if none found, return carry and output deck index
; of the card ID 1 in deck.
; input:
;   a = card ID 1
;   b = card ID 2
; output:
;   a = index of card ID 1 in deck
LookForCardIDInDeck_GivenCardIDInHand: ; 22a49 (8:6a49)
; store a in wCurCardCanAttack
; and b in wTempAI
	ld c, a
	ld a, b
	ld [wTempAI], a
	ld a, c
	ld [wCurCardCanAttack], a

; look for the card ID 1 in deck
	ld e, a
	ld a, CARD_LOCATION_DECK
	call LookForCardIDInLocation
	ret nc

; was found, store its deck index in memory
	ld [wTempAIPokemonCard], a

; look for the card ID 2 in hand, return if not found.
	ld a, [wTempAI]
	call LookForCardIDInHandList_Bank8
	ret nc

; look for the card ID 1 in the Hand and Play Area
; if any card is found, return no carry.
	ld a, [wCurCardCanAttack]
	call LookForCardIDInHandAndPlayArea
	jr c, .no_carry
; none found

	ld a, [wTempAIPokemonCard]
	scf
	ret

.no_carry
	or a
	ret
; 0x22a72

; returns carry if card ID in a
; is found in Play Area, starting with
; location in b
; input:
;	a = card ID
;	b = PLAY_AREA_* to start with
; ouput:
;	a = PLAY_AREA_* of found card
;	carry set if found
LookForCardIDInPlayArea_Bank8: ; 22a72 (8:6a72)
	ld [wTempCardIDToLook], a
.loop
	ld a, DUELVARS_ARENA_CARD
	add b
	call GetTurnDuelistVariable
	cp $ff
	ret z

	call LoadCardDataToBuffer1_FromDeckIndex
	ld c, a
	ld a, [wTempCardIDToLook]
	cp c
	jr z, .is_same

	inc b
	ld a, MAX_PLAY_AREA_POKEMON
	cp b
	jr nz, .loop
	ld b, $ff
	or a
	ret

.is_same
	ld a, b
	scf
	ret
; 0x22a95

; runs through list avoiding card in e.
; removes first card in list not equal to e
; and that has a type allowed to be removed, in d.
; returns carry if successful in finding a card.
; input:
;   d = type of card allowed to be removed
;       ($00 = Trainer, $01 = Pokemon, $02 = Energy)
;   e = card deck index to avoid removing
; output:
;   a = card index of removed card
RemoveFromListDifferentCardOfGivenType: ; 22a95 (8:6a95)
	push hl
	push de
	push bc
	call CountCardsInDuelTempList
	call ShuffleCards

; loop list until a card with
; deck index different from e is found.
.loop_list
	ld a, [hli]
	cp $ff
	jr z, .no_carry
	cp e
	jr z, .loop_list

; get this card's type
	ldh [hTempCardIndex_ff98], a
	push de
	call GetCardIDFromDeckIndex
	call GetCardType
	pop de
	cp TYPE_ENERGY
	jr c, .pkmn_card
	cp TYPE_TRAINER
	jr nz, .energy

; only remove from list specific type.

; trainer
	ld a, d
	or a
	jr nz, .loop_list
	jr .remove_card
.energy
	ld a, d
	cp $02
	jr nz, .loop_list
	jr .remove_card
.pkmn_card
	ld a, d
	cp $01
	jr nz, .loop_list
	; fallthrough

.remove_card
	ld d, h
	ld e, l
	dec hl
.loop_remove
	ld a, [de]
	inc de
	ld [hli], a
	cp $ff
	jr nz, .loop_remove

; success
	ldh a, [hTempCardIndex_ff98]
	pop bc
	pop de
	pop hl
	scf
	ret
.no_carry
	pop bc
	pop de
	pop hl
	or a
	ret
; 0x22ae0

Func_22ae0 ; 22ae0 (8:6ae0)
	INCROM $22ae0, $22bad

; return carry flag if move is not high recoil.
Func_22bad: ; 22bad (8:6bad)
	farcall Func_169ca
	ret nc
	ld a, [wSelectedMoveIndex]
	ld e, a
	ld a, DUELVARS_ARENA_CARD
	call GetTurnDuelistVariable
	ld d, a
	call CopyMoveDataAndDamage_FromDeckIndex
	ld a, MOVE_FLAG1_ADDRESS | HIGH_RECOIL_F
	call CheckLoadedMoveFlag
	ccf
	ret
; 0x22bc6

Func_22bc6 ; 22bc6 (8:6bc6)
	INCROM $22bc6, $24000
