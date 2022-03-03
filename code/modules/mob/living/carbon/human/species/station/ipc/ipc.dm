/datum/species/machine
	name = SPECIES_IPC
	short_name = "ipc"
	name_plural = "Baselines"
	category_name = "Integrated Positronic Chassis"
	bodytype = BODYTYPE_IPC
	age_min = 1
	age_max = 60
	economic_modifier = 3
	default_genders = list(NEUTER)
	selectable_pronouns = list(NEUTER, PLURAL)

	blurb = "IPCs, or Integrated Positronic Chassis, are humanoid robots with a Positronic Brain as their core processor. \
The \"Baseline\" model is a broad category of simplistic, utilitarian designs that make up the bulk of IPC populations. \
They are often notable for their skeletal frames and iconic \"TV-Head\". Variations between chassis of the Baseline frame are mainly aesthetic, \
either due to company design or customer wishes.While many manufactuers of baseline frames exist, \
Titan Universal Manufacturing dominates this market."

	icobase = 'icons/mob/human_races/ipc/r_machine.dmi'
	deform = 'icons/mob/human_races/ipc/r_machine.dmi'
	preview_icon = 'icons/mob/human_races/ipc/machine_preview.dmi'
	eyes = "blank_eyes"

	light_range = 2
	light_power = 0.5
	meat_type = /obj/item/stack/material/steel
	unarmed_types = list(
		/datum/unarmed_attack/punch/ipc,
		/datum/unarmed_attack/stomp/ipc,
		/datum/unarmed_attack/kick/ipc)
	rarity_value = 2

	inherent_eye_protection = FLASH_PROTECTION_MAJOR
	eyes_are_impermeable = TRUE

	name_language = LANGUAGE_EAL
	num_alternate_languages = 2
	secondary_langs = list(LANGUAGE_MARTIAN, LANGUAGE_NEW_MANDARIN, LANGUAGE_LUNIAN, LANGUAGE_ENGLISH, LANGUAGE_EAL, LANGUAGE_SIGN, LANGUAGE_YZALTUM, LANGUAGE_ANGLIKIRTAN, LANGUAGE_SIIK_MAAS, LANGUAGE_YA_SSA, LANGUAGE_DELVAHII, LANGUAGE_TUQ)
	ethanol_resistance = -1//Can't get drunk
	radiation_mod = 0	// not affected by radiation
	remains_type = /obj/effect/decal/remains/robot

	hud_type = /datum/hud_data/ipc

	brute_mod = 1.0
	burn_mod = 1.2

	grab_mod = 1.1 // Smooth, no real edges to grab onto
	resist_mod = 2 // Robotic strength

	show_ssd = "flashing a 'system offline' glyph on their monitor"

	death_message = "gives one shrill beep before falling lifeless."
	death_message_range = 7
	knockout_message = "encounters a hardware fault and suddenly reboots!"
	halloss_message = "encounters a hardware fault and suddenly reboots."
	halloss_message_self = "ERROR: Unrecoverable machine check exception.<BR>System halted, rebooting..."

	warning_low_pressure = 50
	hazard_low_pressure = -1

	cold_level_1 = 50
	cold_level_2 = -1
	cold_level_3 = -1

	heat_level_1 = 600
	heat_level_2 = 1200
	heat_level_3 = 2400

	body_temperature = null
	passive_temp_gain = 10  // This should cause IPCs to stabilize at ~80 C in a 20 C environment.

	inherent_verbs = list(
		/mob/living/carbon/human/proc/self_diagnostics,
		/mob/living/carbon/human/proc/change_monitor,
		/mob/living/carbon/human/proc/check_tag
	)

	flags = IS_IPC
	appearance_flags = HAS_SKIN_COLOR | HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SOCKS
	spawn_flags = CAN_JOIN | IS_WHITELISTED | NO_AGE_MINIMUM

	blood_type = "oil"
	blood_color = COLOR_IPC_BLOOD
	flesh_color = "#575757"
	reagent_tag = IS_MACHINE

	has_organ = list(
		BP_BRAIN   = /obj/item/organ/internal/mmi_holder/posibrain,
		BP_CELL    = /obj/item/organ/internal/cell,
		BP_EYES  = /obj/item/organ/internal/eyes/optical_sensor,
		BP_IPCTAG = /obj/item/organ/internal/ipc_tag
	)

	vision_organ = BP_EYES

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/ipc),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/ipc),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/ipc),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/ipc),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/ipc),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/ipc),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/ipc),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/ipc),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/ipc),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/ipc),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/ipc)
	)


	heat_discomfort_level = 500 //This will be 100 below the first heat level
	heat_discomfort_strings = list(
		"Your CPU temperature probes warn you that you are approaching critical heat levels!"
		)
	stamina = -1	// Machines use power and generate heat, stamina is not a thing
	sprint_speed_factor = 1  // About as capable of speed as a human
	sprint_cost_factor = 1.5

	max_hydration_factor = -1
	max_nutrition_factor = -1

	allowed_citizenships = list(CITIZENSHIP_NONE, CITIZENSHIP_GALACTICA, CITIZENSHIP_IR)
	default_citizenship = CITIZENSHIP_NONE
	bodyfall_sound = /decl/sound_category/bodyfall_machine_sound

	allowed_accents = list(ACCENT_RHEA, ACCENT_INTER, ACCENT_EARTH, ACCENT_LUNA, ACCENT_MARS, ACCENT_GALACTIC, ACCENT_TTS, ACCENT_ELO, ACCENT_TANJIR, ACCENT_NAZEER, ACCENT_RAE, ACCENT_ANGL, ACCENT_YALZ, ACCENT_BLIR)
	allowed_religions = list(RELIGION_NONE, RELIGION_OTHER, RELIGION_CHRISTIANITY, RELIGION_ISLAM, RELIGION_JUDAISM, RELIGION_HINDU, RELIGION_BUDDHISM, RELIGION_TAOISM)

	alterable_internal_organs = list()

	// Special snowflake machine vars.
	var/sprint_temperature_factor = 1.15
	var/move_charge_factor = 1

/datum/species/machine/handle_post_spawn(var/mob/living/carbon/human/H)
	. = ..()
	check_tag(H, H.client)
	var/obj/item/organ/internal/cell/C = H.internal_organs_by_name[BP_CELL]
	if(C)
		C.move_charge_factor = move_charge_factor

/datum/species/machine/handle_sprint_cost(var/mob/living/carbon/human/H, var/cost, var/pre_move)
	if(!pre_move && H.stat == CONSCIOUS)
		H.bodytemperature += cost * sprint_temperature_factor
	var/obj/item/organ/internal/cell/C = H.internal_organs_by_name[BP_CELL]
	if(C)
		C.use(cost * sprint_cost_factor)
	return TRUE

/datum/species/machine/handle_emp_act(mob/living/carbon/human/H, var/severity)
	var/obj/item/organ/internal/surge/S = H.internal_organs_by_name["surge"]
	if(!isnull(S))
		if(S.surge_left >= 1)
			playsound(H.loc, 'sound/magic/LightningShock.ogg', 25, 1)
			S.surge_left -= 1
			if(S.surge_left)
				to_chat(H, SPAN_WARNING("Warning: EMP detected, integrated surge prevention module activated. There are [S.surge_left] preventions left."))
			else
				S.broken = TRUE
				S.icon_state = "surge_ipc_broken"
				to_chat(H, SPAN_DANGER("Warning: EMP detected, integrated surge prevention module activated. The surge prevention module is fried, replacement recommended."))
			return TRUE
		else
			to_chat(src, SPAN_DANGER("Warning: EMP detected, integrated surge prevention module is fried and unable to protect from EMP. Replacement recommended."))
	return FALSE

/datum/species/machine/handle_death(var/mob/living/carbon/human/H)
	..()
	H.f_style = ""
	addtimer(CALLBACK(H, /mob/living/carbon/human/.proc/update_hair), 100)

/datum/species/machine/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = 1)

/datum/species/machine/proc/check_tag(var/mob/living/carbon/human/new_machine, var/client/player)
	if(!new_machine || !player)
		var/obj/item/organ/internal/ipc_tag/tag = new_machine.internal_organs_by_name[BP_IPCTAG]
		if(tag)
			tag.serial_number = uppertext(dd_limittext(md5(new_machine.real_name), 12))
			tag.ownership_info = IPC_OWNERSHIP_COMPANY
			tag.citizenship_info = CITIZENSHIP_GALACTICA
		return

	var/obj/item/organ/internal/ipc_tag/tag = new_machine.internal_organs_by_name[BP_IPCTAG]

	if(player.prefs.machine_tag_status)
		tag.serial_number = player.prefs.machine_serial_number
		tag.ownership_info = player.prefs.machine_ownership_status
		tag.citizenship_info = new_machine.citizenship
	else
		new_machine.internal_organs_by_name -= BP_IPCTAG
		new_machine.internal_organs -= tag
		qdel(tag)

/datum/species/machine/proc/update_tag(var/mob/living/carbon/human/target, var/client/player)
	if (!target || !player)
		return

	if (establish_db_connection(dbcon))
		var/status = FALSE
		var/sql_status = FALSE
		if (target.internal_organs_by_name[BP_IPCTAG])
			status = TRUE

		var/list/query_details = list("ckey" = player.ckey, "character_name" = target.real_name)
		var/DBQuery/query = dbcon.NewQuery("SELECT tag_status FROM ss13_ipc_tracking WHERE player_ckey = :ckey: AND character_name = :character_name:")
		query.Execute(query_details)

		if (query.NextRow())
			sql_status = text2num(query.item[1])
			if (sql_status == status)
				return

			query_details["status"] = status
			var/DBQuery/update_query = dbcon.NewQuery("UPDATE ss13_ipc_tracking SET tag_status = :status: WHERE player_ckey = :ckey: AND character_name = :character_name:")
			update_query.Execute(query_details)

/datum/species/machine/get_light_color(mob/living/carbon/human/H)
	if (!istype(H))
		return null

	// I hate this, but I can't think of a better way that doesn't involve
	// rewriting hair.
	switch (H.f_style)
		if ("pink IPC screen")
			return LIGHT_COLOR_PINK

		if ("red IPC screen")
			return LIGHT_COLOR_RED

		if ("green IPC screen")
			return LIGHT_COLOR_GREEN

		if ("blue IPC screen")
			return LIGHT_COLOR_BLUE

		if ("breakout IPC screen")
			return LIGHT_COLOR_CYAN

		if ("eight IPC screen")
			return LIGHT_COLOR_CYAN

		if ("goggles IPC screen")
			return LIGHT_COLOR_RED

		if ("heart IPC screen")
			return LIGHT_COLOR_PINK

		if ("monoeye IPC screen")
			return LIGHT_COLOR_ORANGE

		if ("nature IPC screen")
			return LIGHT_COLOR_CYAN

		if ("orange IPC screen")
			return LIGHT_COLOR_ORANGE

		if ("purple IPC screen")
			return LIGHT_COLOR_PURPLE

		if ("shower IPC screen")
			return "#FFFFFF"

		if ("static IPC screen")
			return "#FFFFFF"

		if ("static2 IPC screen")
			return "#FFFFFF"

		if ("static3 IPC screen")
			return "#FFFFFF"

		if ("yellow IPC screen")
			return LIGHT_COLOR_YELLOW

		if ("eye IPC screen")
			return LIGHT_COLOR_CYAN

		if ("heartrate IPC screen")
			return LIGHT_COLOR_BLUE

		if ("cancel IPC screen")
			return LIGHT_COLOR_RED

		if ("testcard IPC screen")
			return "#FFFFFF"

		if ("blank IPC screen")
			return null

		if ("scroll IPC screen")
			return "#FFFFFF"

		if ("console IPC screen")
			return "#FFFFFF"

		if ("RGB IPC screen")
			return "#FFFFFF" //idk

		if ("GoL glider IPC screen")
			return "#FFFFFF"

		if ("rainbow IPC screen")
			return "#FFFFFF" //idk 2.0

		if ("smiley IPC screen")
			return LIGHT_COLOR_YELLOW

		if ("database IPC screen")
			return "#FFFFFF"

		if ("lumi eyes IPC screen")
			return "#FFFFFF"

		if ("music IPC screen")
			return "#FFFFFF"

		if ("waiting IPC screen")
			return "#FFFFFF"

		if ("nanotrasen IPC screen")
			return LIGHT_COLOR_BLUE

/datum/species/machine/before_equip(var/mob/living/carbon/human/H)
	. = ..()
	check_tag(H, H.client)

/datum/species/machine/has_psi_potential()
	return FALSE

/datum/species/machine/handle_death_check(var/mob/living/carbon/human/H)
	if(H.get_total_health() <= config.health_threshold_dead)
		return TRUE
	return FALSE
