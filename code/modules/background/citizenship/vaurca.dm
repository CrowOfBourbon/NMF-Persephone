/datum/citizenship/xal
	name = CITIZENSHIP_XAL
	description = "The Xallian Hive, currently the most powerful hive on Ka'xillia. Only very recently initiated first contact with Humanity via NanoTrasen, this young civilization only several hundreds of years old, \
	facing heavy discrimination in Human space, though with their homeworlds' extremely high phoron content, they are a wealthy and powerful ally to have. Vaurcae born within the Hive are the only eligible for citizenship."

	consular_outfit = /datum/outfit/job/representative/consular/xal

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
			SPECIES_VAURCA_BULWARK
		)
	)

/datum/citizenship/xal/get_objectives(mission_level, var/mob/living/carbon/human/H)
	var/rep_objectives

	switch(mission_level)
		if(REPRESENTATIVE_MISSION_HIGH)
			rep_objectives = pick("Collect evidence of Nanotrasen being unfair or bigoted to Vaurca employees, to be used as leverage in future hive labor negotiations",
							"Develop a metric to grade the performance of different Vaurca broods that share a job")
		else
			rep_objectives = pick("Question Non-Vaurcan employees about Vaurcan employees, looking for areas of improvement",
							"Protect and promote the public image of the Xal hive to all Nanotrasen employees")

	return rep_objectives

/datum/outfit/job/representative/consular/xal
	name = "Xal Consul Officer"

	uniform = /obj/item/clothing/under/gearharness

	glasses = null
	head = /obj/item/clothing/head/vaurca_breeder
	shoes = /obj/item/clothing/shoes/vaurca/breeder
	mask = /obj/item/clothing/mask/breath/vaurca/filter
	suit = /obj/item/clothing/suit/vaurca/breeder

/datum/outfit/job/representative/consular/zora/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(H && !visualsOnly)
		if(isvaurca(H))

			H.equip_to_slot_or_del(new /obj/item/storage/backpack/typec(H), slot_back)
			H.equip_to_slot_or_del(new /obj/item/storage/box/tcfl_pamphlet(H), slot_in_backpack)

		addtimer(CALLBACK(src, .proc/send_representative_mission, H), 5 MINUTES)
	return TRUE