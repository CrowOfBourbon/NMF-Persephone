/datum/citizenship/royal_adhomian_empire
	name = CITIZENSHIP_RAE
	description = "Placeholder"
	consular_outfit = /datum/outfit/job/representative/consular/pra

	job_species_blacklist = list(
		"Consular Officer" = list(
			SPECIES_HUMAN,
			SPECIES_HUMAN_OFFWORLD,
			SPECIES_IPC,
			SPECIES_IPC_BISHOP,
			SPECIES_IPC_G1,
			SPECIES_IPC_G2,
			SPECIES_IPC_SHELL,
			SPECIES_IPC_UNBRANDED,
			SPECIES_IPC_XION,
			SPECIES_IPC_ZENGHU,
			SPECIES_DIONA,
			SPECIES_DIONA_COEUS,
			SPECIES_SKRELL,
			SPECIES_SKRELL_AXIORI,
			SPECIES_UNATHI,
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_BULWARK,
			SPECIES_VAURCA_BREEDER,
			SPECIES_TAJARA_ZHAN,
			SPECIES_TAJARA_MSAI
		)
	)

/datum/citizenship/pra/get_objectives(mission_level, var/mob/living/carbon/human/H)
	switch(mission_level)
		if(REPRESENTATIVE_MISSION_LOW)
			return "Ensure the loyalty of RAE Citizen to the empire."

/datum/outfit/job/representative/consular/pra
	name = "RAE Consular Officer"

	glasses = null
	uniform = /obj/item/clothing/under/tajaran/consular
	head = /obj/item/clothing/head/tajaran/consular
	backpack_contents = list(
		/obj/item/gun/projectile/pistol/adhomai = 1,
		/obj/item/storage/field_ration = 1,
		/obj/item/storage/box/syndie_kit/spy/hidden = 1)

/datum/citizenship/united_republic_of_adhomai
	name = CITIZENSHIP_URA
	description = "Placeholder"
	consular_outfit = /datum/outfit/job/representative/consular/dpra

	job_species_blacklist = list(
		"Consular Officer" = list(
			SPECIES_HUMAN,
			SPECIES_HUMAN_OFFWORLD,
			SPECIES_IPC,
			SPECIES_IPC_BISHOP,
			SPECIES_IPC_G1,
			SPECIES_IPC_G2,
			SPECIES_IPC_SHELL,
			SPECIES_IPC_UNBRANDED,
			SPECIES_IPC_XION,
			SPECIES_IPC_ZENGHU,
			SPECIES_DIONA,
			SPECIES_DIONA_COEUS,
			SPECIES_SKRELL,
			SPECIES_SKRELL_AXIORI,
			SPECIES_UNATHI,
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_BULWARK,
			SPECIES_VAURCA_BREEDER,
			SPECIES_TAJARA_ZHAN,
			SPECIES_TAJARA_MSAI
		)
	)

/datum/citizenship/dpra/get_objectives(mission_level, var/mob/living/carbon/human/H)
	switch(mission_level)
		if(REPRESENTATIVE_MISSION_LOW)
			return "Ensure that URA citizens are following the right path in life. Defend the rights of the Tajara through diplomacy."

/datum/outfit/job/representative/consular/dpra
	name = "URA Consular Officer"

	glasses = null
	uniform = /obj/item/clothing/under/tajaran/consular/dpra
	head = /obj/item/clothing/head/tajaran/consular/dpra
	backpack_contents = list(
		/obj/item/gun/projectile/silenced = 1,
		/obj/item/storage/field_ration/dpra = 1,
		/obj/item/storage/box/syndie_kit/spy/hidden = 1)

/datum/citizenship/naziir_coalition
	name = CITIZENSHIP_NC
	description = "Placeholder"
	consular_outfit = /datum/outfit/job/representative/consular/nka

	job_species_blacklist = list(
		"Consular Officer" = list(
			SPECIES_HUMAN,
			SPECIES_HUMAN_OFFWORLD,
			SPECIES_IPC,
			SPECIES_IPC_BISHOP,
			SPECIES_IPC_G1,
			SPECIES_IPC_G2,
			SPECIES_IPC_SHELL,
			SPECIES_IPC_UNBRANDED,
			SPECIES_IPC_XION,
			SPECIES_IPC_ZENGHU,
			SPECIES_DIONA,
			SPECIES_DIONA_COEUS,
			SPECIES_SKRELL,
			SPECIES_SKRELL_AXIORI,
			SPECIES_UNATHI,
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_BULWARK,
			SPECIES_VAURCA_BREEDER,
			SPECIES_TAJARA_ZHAN,
			SPECIES_TAJARA_MSAI
		)
	)

/datum/citizenship/nka/get_objectives(mission_level, var/mob/living/carbon/human/H)
	switch(mission_level)
		if(REPRESENTATIVE_MISSION_LOW)
			return "Ensure that NC citizens are loyal. You must also promote the relationship between NanoTrasen and the NC through diplomacy."

/datum/outfit/job/representative/consular/nka
	name = "NC Consular Officer"

	glasses = null
	uniform = /obj/item/clothing/under/tajaran/consular/nka
	head = /obj/item/clothing/head/tajaran/consular/nka
	backpack_contents = list(
		/obj/item/folder/blue/nka = 1,
		/obj/item/gun/projectile/revolver/adhomian = 1,
		/obj/item/storage/field_ration/nka = 1,
		/obj/item/storage/box/syndie_kit/spy/hidden = 1)
