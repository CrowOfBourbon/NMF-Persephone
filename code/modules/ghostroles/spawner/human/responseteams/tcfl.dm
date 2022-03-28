/datum/ghostspawner/human/ert/irf
	name = "IRF Private"
	short_name = "irfp"
	desc = "The Interstellar Republic Force's rank and file."
	welcome_message = "The Interstellar Republic Force works for the Interstellar Republic, located around the Sol System; your job is to protect the place you're heading to and fix the problem. You can be a Private (Pvt.), Corporal (Cpt.) or Sergeant (Sgt.). The first option is recommended for new players."
	max_count = 3
	outfit = /datum/outfit/admin/ert/legion
	spawnpoints = list("TCFLERTSpawn")
	possible_species = list(SPECIES_HUMAN, SPECIES_HUMAN_OFFWORLD, SPECIES_TAJARA, SPECIES_TAJARA_MSAI, SPECIES_TAJARA_ZHAN, SPECIES_SKRELL, SPECIES_SKRELL_AXIORI, SPECIES_UNATHI, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_WORKER, SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL, SPECIES_DIONA, SPECIES_DIONA_COEUS)
	mob_name_prefix = "Vol. "

/datum/ghostspawner/human/ert/irf/specialist
	name = "IRF Corporal"
	short_name = "irfc"
	max_count = 2
	desc = "An experienced Corporal of the IRF."
	outfit = /datum/outfit/admin/ert/legion/specialist
	mob_name_prefix = "Lgn. "

/datum/ghostspawner/human/ert/irf/leader
	name = "IRF Sergeant"
	short_name = "irfs"
	max_count = 1
	desc = "A leader of Task Force XI Marines - Delta Company."
	outfit = /datum/outfit/admin/ert/legion/leader
	mob_name_prefix = "Pfct. "
	spawnpoints = list("TCFLERTSpawn - Prefect")

/datum/ghostspawner/human/ert/irf/pilot
	name = "IRF Dropship Pilot"
	short_name = "irfdp"
	max_count = 1
	desc = "A dropship pilot of the IRF."
	welcome_message = "As a pilot of the Interstellar Republic Forces, your job is to pilot your assigned dropship and keep it safe from any hostile forces. You may also have to assist the main task force in a supporting role if the need arises."
	outfit = /datum/outfit/admin/ert/legion/pilot
	mob_name_prefix = "PL. "
	spawnpoints = list("TCFLERTSpawn - Pilot")