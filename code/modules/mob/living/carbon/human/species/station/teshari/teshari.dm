/datum/species/teshari
	name = SPECIES_TESHARI
	bodytype = BODYTYPE_TESHARI
	category_name = "Teshari"
	name_plural = "Teshari"
	short_name = "tes"
	blurb = "The Teshari are a species of small, feathered raptors from the chilly planet of Sirsai"
	icobase = 'icons/mob/human_races/teshari/r_teshari.dmi'
	preview_icon = 'icons/mob/human_races/teshari/teshari_preview.dmi'
	blood_mask = 'icons/mob/human_races/masks/blood_teshari.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_teshari.dmi'
	damage_overlays = 'icons/mob/human_races/masks/dam_teshari.dmi'
	eyes = "eyes_teshari"

	default_h_style = "Teshari tight"
	default_f_style = "Shaved"

	unarmed_types = list(
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/bite/sharp,
		/datum/unarmed_attack/palm,
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick
	)

	num_alternate_languages = 2
	secondary_langs = list(LANGUAGE_SCHECHI)
	name_language = LANGUAGE_SCHECHI

	inherent_verbs = list(
		/mob/living/carbon/human/proc/listen_in
	)

	tail = "tesharitail"
	tail_hair = "feathers"
	blood_color = "#D514F7"
	flesh_color = "#5F7BB0"
	base_color = "#001144"

	hearing_sensitivity = HEARING_VERY_SENSITIVE //super sensitive ears

	mob_size = MOB_SMALL
	var/can_pull_mobs = MOB_PULL_SMALLER
	holder_type = /obj/item/holder/human/teshari

	meat_type = /obj/item/reagent_containers/food/snacks/meat/teshari

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	reagent_tag = IS_TESHARI

	slowdown = -1.6
	stamina = 75
	stamina_recovery = 3.4
	sprint_speed_factor = 1.2
	sprint_cost_factor = 0.45

	metabolism_mod = 1.2
	ethanol_resistance = 0.8

	brute_mod = 1.3
	burn_mod = 1.3
	grab_mod =      1.2 //little speedy things, harder to grab, but..
	resist_mod =    0.8 //if you DO grab one, they're easier to hold on to due to feathers

	age_min = 18
	age_max = 55

	spawn_flags = CAN_JOIN | IS_WHITELISTED | NO_AGE_MINIMUM //no age min here cause of tesh age stuff and the code lacking species specifc job age restricitons.
	appearance_flags = HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	fall_mod =      0.35

	bp_base_systolic = 150 // Default 120
	bp_base_disatolic = 100 // Default 80
	low_pulse = 80 // Default 40
	norm_pulse = 100 // Default 60
	fast_pulse = 130 // Default 90
	v_fast_pulse = 160 // Default 120
	max_pulse = 200 // Default 160

	pain_messages = list("It hurts so much", "You really need some painkillers", "By the spirits, the pain")

//	warning_low_pressure =
//	hazard_low_pressure =

	cold_level_1 = 180	//Default 260
	cold_level_2 = 130	//Default 200
	cold_level_3 = 70	//Default 120

//	breath_cold_level_1 = 180	//Default 240 - Lower is better
//	breath_cold_level_2 = 100	//Default 180
//	breath_cold_level_3 = 60	//Default 100

	heat_level_1 = 320	//Default 360
	heat_level_2 = 370	//Default 400
	heat_level_3 = 600	//Default 1000

//	breath_heat_level_1 = 350	//Default 380 - Higher is better
//	breath_heat_level_2 = 400	//Default 450
//	breath_heat_level_3 = 800	//Default 1250

	heat_discomfort_level = 295
	heat_discomfort_strings = list(
		"Your feathers prickle in the heat.",
		"You feel uncomfortably warm.",
		"Your hands and feet feel hot as your body tries to regulate heat",
		)
	cold_discomfort_level = 180
	cold_discomfort_strings = list(
		"You feel a bit chilly.",
		"You fluff up your feathers against the cold.",
		"You move your arms closer to your body to shield yourself from the cold.",
		"You press your ears against your head to conserve heat",
		"You start to feel the cold on your skin",
		)

	breath_pressure = 12	//Smaller, so needs less air

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/teshari),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/teshari),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/teshari),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/teshari)
		)

/datum/species/teshari/after_equip(var/mob/living/carbon/human/H)
	. = ..()
	if(H.shoes)
		return
	var/obj/item/clothing/shoes/sandal/S = new /obj/item/clothing/shoes/sandal(H)
	if(H.equip_to_slot_or_del(S,slot_shoes))
		S.autodrobe_no_remove = TRUE

/datum/species/teshari/get_surgery_overlay_icon(var/mob/living/carbon/human/H)
	return 'icons/mob/surgery_teshari.dmi'

/datum/species/teshari/New()
	..()
	equip_adjust = list(
				slot_wear_id_str = list("[NORTH]" = list("x" = 0, "y" = 0),  "[EAST]" = list("x" = 1, "y" = -3), "[SOUTH]" = list("x" = 2, "y" = -2),  "[WEST]" = list("x" = 0, "y" = 0)),
				slot_wrists_str = list("[NORTH]" = list("x" = -2, "y" = -3),  "[EAST]" = list("x" = 3, "y" = -2), "[SOUTH]" = list("x" = 3, "y" = -2),  "[WEST]" = list("x" = 0, "y" = 0))

			)