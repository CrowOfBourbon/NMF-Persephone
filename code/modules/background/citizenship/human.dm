

/datum/outfit/job/representative/consular/ceti
	name = "Galactica Consular Officer"
	uniform = /obj/item/clothing/under/lawyer/blue
	accessory = /obj/item/clothing/accessory/galactica_pin
	backpack_contents = list(
		/obj/item/storage/box/galactica_visa = 1,
		/obj/item/stamp/biesel = 1,
		/obj/item/gun/energy/pistol = 1
	)


/datum/citizenship/interstellar_republic
	name = CITIZENSHIP_IR
	description = "A juggernaut in terms of cultural and political influence, the Interstellar Republic is \
	by far the largest nation within all of known space. It is arguably the most culturally and linguistically diverse entity within known space, owing primarily to the age of its \
	colonies and its control over the Sol system."
	consular_outfit = /datum/outfit/job/representative/consular/ceti

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
			SPECIES_TAJARA,
			SPECIES_TAJARA_MSAI,
			SPECIES_TAJARA_ZHAN,
			SPECIES_UNATHI,
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_BULWARK,
			SPECIES_VAURCA_BREEDER
		)
	)

/datum/citizenship/sol_alliance/get_objectives(mission_level, var/mob/living/carbon/human/H)
	var/rep_objectives

	switch(mission_level)
		if(REPRESENTATIVE_MISSION_HIGH)
			rep_objectives = pick("Collect evidence of NanoTrasen being unfair or oppressive against Republic employees, to be used as leverage in future diplomatic talks.",
							"Convince [rand(1,3)] solarian employees to apply for the Republic armed forces.")

		if(REPRESENTATIVE_MISSION_MEDIUM)
			rep_objectives = pick("Have [rand(2,5)] amount of IR citizens write down their grievances with the company, and present the report to station command.",
							"Convince [rand(3,6)] qualified specialists among crew to enter Interstellar Republic space, and issue them a visa recommendation.")
		else
			rep_objectives = pick("Collect [rand(3,7)] pictures of secure station areas.",
							"Convince station command to turn a Republic crewmember's sentence into a fine.")

	return rep_objectives

/datum/outfit/job/representative/consular/ceti
	name = "Interstellar Republic Consular"

	uniform = /obj/item/clothing/under/lawyer/blue
	backpack_contents = list(
		/obj/item/gun/energy/pistol = 1
	)
