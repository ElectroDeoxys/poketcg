AIActionTable_Unreferenced: ; unreferenced
	dw $406c
	dw .do_turn
	dw .do_turn
	dw .star_duel
	dw .forced_switch
	dw .ko_switch
	dw .take_prize

.do_turn
	call AIDecidePlayPokemonCard
	call AIDecideWhetherToRetreat
	jr nc, .try_attack
	call AIDecideBenchPokemonToSwitchTo
	call AITryToRetreat
	call AIDecideWhetherToRetreat
	jr nc, .try_attack
	call AIDecideBenchPokemonToSwitchTo
	call AITryToRetreat
.try_attack
	call AIProcessAndTryToPlayEnergy
	call AIProcessAndTryToUseAttack
	ret c
	ld a, OPPACTION_FINISH_NO_ATTACK
	bank1call AIMakeDecision
	ret

.star_duel
	jp AIPlayInitialBasicCards

.forced_switch
	jp AIDecideBenchPokemonToSwitchTo

.ko_switch
	jp AIDecideBenchPokemonToSwitchTo

.take_prize
	jp AIPickPrizeCards
