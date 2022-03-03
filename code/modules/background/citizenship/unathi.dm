/datum/citizenship/zakkeran_communes
	name = CITIZENSHIP_ZAKKERAN
	description = "The people of Moghes are divided between hundreds of powerful city-states ruled by God-Kings called Ensi. Moghes is seen as a home of conservatism, where thousand-year-old traditions are kept alive and unchanged.\
	
These Ensi wield unchecked power and use advanced technology to uphold their appearance as gods to their peoplep\
	They are locked into a bitter rivalry with their antithesis of the Yzali Unathi and try to subjugate the human-unathi people of Zakkeran."
	consular_outfit = /datum/outfit/job/representative/consular/izweski

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
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_BULWARK,
			SPECIES_VAURCA_BREEDER
		)
	)

/datum/citizenship/izweski/get_objectives(mission_level, var/mob/living/carbon/human/H)
	var/rep_objectives

	switch(mission_level)
		if(REPRESENTATIVE_MISSION_HIGH)
			if(isvaurca(H))
				rep_objectives = pick("Assist K'laxan Nanotrasen personnel with their avowal process",
								"Obtain [rand(2,3)] sheets of solid phoron below market value, buying directly from the source")
			else
				rep_objectives = pick("Encourage [rand(1,2)] Unathi to spread their ideals across the crew.",
								"Gather [rand(2,3)] evidences of any marginalization of Unathi beliefs")

		if(REPRESENTATIVE_MISSION_MEDIUM)
			if(isvaurca(H))
				rep_objectives = pick("Collect evidence of Nanotrasen being unfair or bigoted to Vaurca or Unathi Employees, to be used as leverage in future labor negotiations",
								"Upsell K'laxan Vaurca to different command staff. Have one complete a Bound Vaurca requisition form")
			else
				rep_objectives = pick("Speak out against any violation of Unathi rights, no matter how small they may seem.",
								"Proselytize the religions to the crew",
								"Encourage [rand(2,4)] Unathi to visit the Ziggaruts on Rhea to enforce faith.")
		else
			if(isvaurca(H))
				rep_objectives = pick("Promote Cultural Exchange between Vaurca, Unathi and other species")
			else
				rep_objectives = pick("Ensure all Unathi on station are being respected in their beliefs and customs and traditions",
								"Obtain [rand(2,3)] sheets of solid phoron below market value.")

	return rep_objectives

/datum/outfit/job/representative/consular/izweski
	name = "Voluntary Envoy"

	uniform = /obj/item/clothing/under/unathi
	suit = /obj/item/clothing/accessory/poncho/unathimantle
	backpack_contents = list(/obj/item/device/camera = 1)
	belt = /obj/item/gun/energy/pistol/hegemony

/datum/citizenship/yzalia
	name = CITIZENSHIP_YZALIA
	description = "Yzali is a home of wealth and prestige, where progress is worth any sacrifice. Everything is a commodity or a science project, including friendships and the family.\
	 
Wealth, hedonism, and overriding personal advancement are the primary goals of every Yzali.\
	 The Tech-Princes that rule its many city-states are locked in a bitter rivalry with their antithesis of the Moghean Unathi and try to exploit the human-unathi people of Zakkeran."
	consular_outfit = /datum/outfit/job/representative/consular/izweski

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
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_BULWARK,
			SPECIES_VAURCA_BREEDER
		)
	)

/datum/citizenship/izweski/get_objectives(mission_level, var/mob/living/carbon/human/H)
	var/rep_objectives

	switch(mission_level)
		if(REPRESENTATIVE_MISSION_HIGH)
			if(isvaurca(H))
				rep_objectives = pick("Assist K'laxan Nanotrasen personnel with their avowal process",
								"Obtain [rand(2,3)] sheets of solid phoron below market value, buying directly from the source")
			else
				rep_objectives = pick("Encourage [rand(1,2)] Unathi to engage in science experiments or give them money to expand the Sciences.",
								"Gather [rand(2,3)] evidences of any marginalization of Unathi beliefs")

		if(REPRESENTATIVE_MISSION_MEDIUM)
			if(isvaurca(H))
				rep_objectives = pick("Collect evidence of Nanotrasen being unfair or bigoted to Vaurca or Unathi Employees, to be used as leverage in future labor negotiations",
								"Upsell K'laxan Vaurca to different command staff. Have one complete a Bound Vaurca requisition form")
			else
				rep_objectives = pick("Speak out against any violation of Yzali rights occuring on Perspehone.",
								"Proselytize the sciences over everything else occuring on the facility.",
								"Encourage [rand(2,4)] Unathi to consider investing their wealth in the sciences.")
		else
			if(isvaurca(H))
				rep_objectives = pick("Promote Cultural Exchange between Vaurca, Unathi and other species")
			else
				rep_objectives = pick("Ensure all Unathi on station are being respected in their beliefs and customs and traditions",
								"Free Pick.")

	return rep_objectives

/datum/outfit/job/representative/consular/izweski
	name = "Tech-Envoy"

	uniform = /obj/item/clothing/under/unathi
	suit = /obj/item/clothing/accessory/poncho/unathimantle
	backpack_contents = list(/obj/item/device/camera = 1)
	belt = /obj/item/gun/energy/pistol/hegemony
