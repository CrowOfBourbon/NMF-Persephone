/datum/citizenship/elodile_empire
	name = CITIZENSHIP_ELODILE
	description = "Elodile Empire is a dictatorship run by a main dictator (Klaark) and his council of generals of different ranks and positions.\
	 The capital of the Empire is located at the city of Pluq'ooi on the core planet Moqy within the Chargo system.\
	 The quality of life within Empire is based on the class you're born in. Xiialt are fairly treated, with a system in place that promotes good behavior,\
	 and heavily punishes behavior that's against the Empire. This class hails the nobles, celebrities, political figures, and prized scientists.\
	 These Skrell are happy in life and spoiled to keep them happy. The Axiori are considered second class citizens. These Skrell do not have a government stamped passport,\
	 are quite rebellious in nature, and enjoy a loud nightlife. Axiori water domes are akin to cyberpunk cities, with run down cities running rampant with\
	 crime and party life. Axiori are constantly being kidnapped by the man and shut up if they speak out too much about their oppression.\
	 They are allowed to leave the Empire with the stipulation that they never return."
	consular_outfit = /datum/outfit/job/representative/consular/jargon

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
			SPECIES_DIONA_COEUS,
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

/datum/citizenship/jargon/get_objectives(mission_level, var/mob/living/carbon/human/H)
	var/rep_objectives

	switch(mission_level)
		if(REPRESENTATIVE_MISSION_HIGH)
			rep_objectives = pick("Some Skrell are not part of the Empire; attempt to convince them to become a citizen",
							"Acquire information on dissidents towards the Empire, forwarding it to the embassy",
							"Curtail the spreading of written literature or verbal notions that contain negative connotations towards the Empire.")

		if(REPRESENTATIVE_MISSION_MEDIUM)
			rep_objectives = pick("Ensure the interests of Elodile citizens are upheld by the station.",
							"Legally curtail the advancements and liberal thinking towards synthetics",
							"Persephone hosts some of the brightest minds in the galaxy; winning them over towards the Empire is a major victory")
		else
			rep_objectives = pick("Consider assisting crew within the capacity of your role, an altruistic image is good PR towards the empire",
							"Some Skrell are not part of the Empire; attempt to convince them to become a citizen")

	return rep_objectives

/datum/outfit/job/representative/consular/jargon
	name = "Elodile Consular Officer"

	uniform = /obj/item/clothing/under/skrell
