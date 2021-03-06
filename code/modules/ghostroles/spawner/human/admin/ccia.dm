/*
	Agents and their Escorts
*/

/datum/ghostspawner/human/admin/corporate
	short_name = null
	name = "Corporate Entity"
	desc = "A corporate entity so dull it doesn't even exist. Thrilling!"

	tags = list("CCIA")
	landmark_name = "CCIAAgent"
	req_perms = R_CCIAA

	possible_species = list(SPECIES_HUMAN, SPECIES_SKRELL, SPECIES_SKRELL_AXIORI)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	respawn_flag = null
	mob_name = null

/datum/ghostspawner/human/admin/corporate/scia_agent
	short_name = "sciaagent"
	name = "SCIA Agent"
	desc = "Board the Persephone, annoy crew with your interviews and get squashed by your own shuttle."

	outfit = /datum/outfit/admin/nt/cciaa

	assigned_role = "SCIA Agent"
	special_role = "SCIA Agent"

	mob_name_pick_message = "Pick a name."


/datum/ghostspawner/human/admin/corporate/scia_escort
	short_name = "sciaescort"
	name = "SCIA Escort"
	desc = "Escort a SCIA Agent to the station, watch them annoy the crew and prevent them from throwing themselves under their own shuttle."

	enabled = FALSE
	landmark_name = "CCIAEscort"
	req_perms = null
	req_perms_edit = R_CCIAA
	max_count = 1

	//Vars related to human mobs
	outfit = /datum/outfit/admin/nt/protection_detail

	assigned_role = "Civil Protection Officer"
	special_role = "Civil Protection Officer"

	mob_name_prefix = "Ofc. "
	mob_name_pick_message = "Pick a callsign or last-name."

/datum/ghostspawner/human/admin/corporate/fib
	short_name = "fib"
	name = "FIB Agent"
	desc = "Investigate issues related to crimes under the jurisdiction of the Federal Investigations Bureau."

	outfit = /datum/outfit/admin/nt/fib
	possible_species = list(SPECIES_HUMAN)

	assigned_role = "FIB Agent"
	special_role = "FIB Agent"

	mob_name_prefix = "S/Agt. "
	mob_name_pick_message = "Pick a name."

/datum/ghostspawner/human/admin/corporate/fib/escort
	short_name = "fibescort"
	name = "FIB Escort"
	desc = "Protect the agents of the Federal Investigations Bureau while on the field."

	landmark_name = "CCIAEscort"

	outfit = /datum/outfit/admin/nt/fib/guard

	enabled = FALSE

	req_perms = null
	req_perms_edit = R_CCIAA
	max_count = 1

	assigned_role = "FIB Escort"
	special_role = "FIB Escort"

	mob_name_prefix = "Agt. "
	mob_name_pick_message = "Pick a name."

/*
	ERT and Similar Commanders
*/

/datum/ghostspawner/human/admin/ert_commander
	short_name = "ertcommander"
	name = "ERT Commander"
	desc = "Command the response team from Star Command"

	tags = list("CCIA")
	landmark_name = "ERTCommander"
	req_perms = R_CCIAA

	//Vars related to human mobs
	outfit = /datum/outfit/admin/nt/ert_commander
	possible_species = list(SPECIES_HUMAN)
	allow_appearance_change = APPEARANCE_PLASTICSURGERY

	assigned_role = "Emergency Response Team Commander"
	special_role = "ERT Commander"
	respawn_flag = null

	mob_name = null
	mob_name_pick_message = "Pick a name."

/*
	Misc. Odin Roles
*/

/datum/ghostspawner/human/admin/checkpointsec/prepatory
	short_name = "checkpointsec_prepatory"
	name = "Persephone Prepatory Wing Security"
	desc = "Act as an Odin security officer, guide lost newcomers onto the arrivals shuttle if the need arises."

	enabled = TRUE
	tags = list("CCIA")
	spawnpoints = list("OdinPrepatory")
	req_perms = R_CCIAA
	max_count = 3