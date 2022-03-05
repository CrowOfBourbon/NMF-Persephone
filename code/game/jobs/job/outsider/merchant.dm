/datum/job/merchant
	title = "Merchant"
	faction = "Station"
	flag = MERCHANT
	department_flag = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	total_positions = 1
	spawn_positions = 1
	supervisors = "Head of Personnel"
	minimal_player_age = 18
	economic_modifier = 5
	ideal_character_age = 30

	create_record = TRUE
	account_allowed = TRUE
	public_account = TRUE
	initial_funds_override = 2500

	access = list(access_merchant)
	minimal_access = list(access_merchant)

	latejoin_at_spawnpoints = TRUE

	outfit = /datum/outfit/job/merchant
	blacklisted_species = list(SPECIES_VAURCA_BULWARK, SPECIES_VAURCA_BREEDER)

/datum/job/merchant/announce(mob/living/carbon/human/H)
	to_chat(H,"You are a merchant working on the NMF Persephone.")

/datum/job/merchant/New()
	..()
	if(prob(config.merchant_chance))
		spawn_positions = 1
		total_positions = 1

/datum/outfit/job/merchant
	name = "Merchant"
	jobtype = /datum/job/merchant

	uniform =/obj/item/clothing/under/suit_jacket/charcoal
	shoes = /obj/item/clothing/shoes/laceup
	head = /obj/item/clothing/head/that
	id = /obj/item/card/id/merchant
	tab_pda = /obj/item/modular_computer/handheld/pda/civilian/merchant
	wristbound = /obj/item/modular_computer/handheld/wristbound/preset/pda/civilian
	tablet = /obj/item/modular_computer/handheld/preset/civilian
	r_pocket = /obj/item/device/price_scanner
