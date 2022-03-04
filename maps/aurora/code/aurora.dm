/datum/map/aurora
	name = "Persephone"
	full_name = "NMF Persephone"
	description = "You're working on the <b>NMF Persephone</b>, a state-of-the-art facility specializing in phoron acquisition and scientific discoveries. \
				   It is staffed by Nanotrasen personnel that live in the nearby Keep on the planet Hades.. \
				   Orbiting at the very edge of the Cerberus system, \
				   it is under the joint administration of Hades and the trans-stellar corporation NanoTrasen."
	path = "aurora"

	lobby_icons = list('icons/misc/titlescreens/aurora/nss_aurora.dmi')
	lobby_transitions = 10 SECONDS

	station_levels = list(2, 3, 4, 5, 6, 7)
	admin_levels = list(1)
	contact_levels = list(3, 4, 5, 6, 7)
	player_levels = list(2, 3, 4, 5, 6, 7, 8)
	restricted_levels = list()
	accessible_z_levels = list("2" = 60, "6" = 20, "7" = 20)
	meteor_levels = list(6)
	base_turf_by_z = list(
		"1" = /turf/simulated/floor/snow/base,
		"2" = /turf/simulated/floor/snow/base,
		"3" = /turf/simulated/floor/snow/base,
		"4" = /turf/simulated/floor/snow/base,
		"5" = /turf/simulated/floor/snow/base,
		"6" = /turf/simulated/floor/snow/base,
		"7" = /turf/simulated/floor/snow/base,
		"8" = /turf/simulated/floor/snow/base
	)

	station_name = "NMF Persephone"
	station_short = "Persephone"
	dock_name = "NTSC Demeter"
	dock_short = "Demeter"
	boss_name = "Star Command"
	boss_short = "StarCom"
	company_name = "NanoTrasen"
	company_short = "NT"

	command_spawn_enabled = TRUE
	command_spawn_message = "Welcome to the Persephone! NanoTrasen is glad you're here."

	station_networks = list(
		NETWORK_CIVILIAN_MAIN,
		NETWORK_CIVILIAN_SURFACE,
		NETWORK_COMMAND,
		NETWORK_ENGINE,
		NETWORK_ENGINEERING,
		NETWORK_ENGINEERING_OUTPOST,
		NETWORK_STATION,
		NETWORK_MEDICAL,
		NETWORK_MINE,
		NETWORK_RESEARCH,
		NETWORK_RESEARCH_OUTPOST,
		NETWORK_ROBOTS,
		NETWORK_PRISON,
		NETWORK_SECURITY,
		NETWORK_SERVICE,
		NETWORK_SUPPLY
	)

	shuttle_docked_message = "The scheduled crew transfer tram to Persephone Arrivals has docked with the station. It will depart in approximately two minutes."
	shuttle_leaving_dock = "The crew transfer tram has left the facility. Estimate two minutes until the shuttle docks at Keep Galactical Station."
	shuttle_called_message = "A crew transfer to Persephone Tram Dock has been scheduled. The tram has been called. It will arrive in approximately ten minutes."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	emergency_shuttle_docked_message = "The emergency shuttle has docked with the station. You have approximately two minutes to board the emergency shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has left the facility. Estimate two minutes until the shuttle docks at Demeter."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled."
	emergency_shuttle_called_message = "An emergency evacuation shuttle has been called. It will arrive in approximately ten minutes."

	evac_controller_type = /datum/evacuation_controller/shuttle

	map_shuttles = list(
		/datum/shuttle/autodock/ferry/emergency/aurora,
		/datum/shuttle/autodock/ferry/arrival/aurora,
		/datum/shuttle/autodock/ferry/supply/aurora,
		/datum/shuttle/autodock/ferry/merchant_aurora,
		/datum/shuttle/autodock/multi/admin,
		/datum/shuttle/autodock/ferry/autoreturn/ccia,
		/datum/shuttle/autodock/ferry/specops/ert_aurora,
		/datum/shuttle/autodock/multi/antag/skipjack_aurora,
		/datum/shuttle/autodock/multi/antag/burglar_aurora,
		/datum/shuttle/autodock/multi/antag/merc_aurora,
		/datum/shuttle/autodock/multi/legion,
		/datum/shuttle/autodock/multi/research_aurora,
		/datum/shuttle/autodock/multi/distress,
		/datum/shuttle/autodock/multi/merc_aurora_elite
	)

/datum/map/aurora/generate_asteroid()
	// Create the chasms.
	new /datum/random_map/automata/cave_system/chasms(null,0,0,3,255,255)
	new /datum/random_map/automata/cave_system(null,0,0,3,255,255)
	new /datum/random_map/automata/cave_system/chasms(null,0,0,4,255,255)
	new /datum/random_map/automata/cave_system(null,0,0,4,255,255)
	new /datum/random_map/automata/cave_system/chasms(null,0,0,5,255,255)
	new /datum/random_map/automata/cave_system/high_yield(null,0,0,5,255,255)
	new /datum/random_map/automata/cave_system/chasms/surface(null,0,0,6,255,255)

	// Create the deep mining ore distribution map.
	new /datum/random_map/noise/ore(null, 0, 0, 5, 64, 64)
	new /datum/random_map/noise/ore(null, 0, 0, 4, 64, 64)
	new /datum/random_map/noise/ore(null, 0, 0, 3, 64, 64)

/datum/map/aurora/finalize_load()
	// generate an empty space Z
	world.maxz++
