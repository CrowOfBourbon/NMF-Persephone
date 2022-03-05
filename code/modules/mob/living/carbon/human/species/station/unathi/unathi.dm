/datum/species/unathi
	name = SPECIES_UNATHI
	short_name = "una"
	name_plural = "Unathi"
	category_name = "Unathi"
	bodytype = BODYTYPE_UNATHI
	icobase = 'icons/mob/human_races/unathi/r_lizard.dmi'
	deform = 'icons/mob/human_races/unathi/r_def_lizard.dmi'
	preview_icon = 'icons/mob/human_races/unathi/unathi_preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "sogtail"
	tail_animation = 'icons/mob/species/unathi/tail.dmi'
	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/claws/unathi,
		/datum/unarmed_attack/palm/unathi,
		/datum/unarmed_attack/bite/sharp
	)
	primitive_form = SPECIES_MONKEY_UNATHI
	darksight = 3
	gluttonous = GLUT_MESSY
	stomach_capacity = 7
	slowdown = 0.5

	brute_mod = 0.8
	fall_mod = 1.2
	grab_mod = 1.25 // Huge, usually have horns
	resist_mod = 2.5 // Arguably our strongest organic species

	ethanol_resistance = 0.4
	taste_sensitivity = TASTE_SENSITIVE
	economic_modifier = 7

	num_alternate_languages = 2
	secondary_langs = list(LANGUAGE_MHOSTUM, LANGUAGE_YZALTUM, LANGUAGE_ANGLIKIRTAN)
	name_language = LANGUAGE_MHOSTUM

	stamina	=	120			  // Unathi have the shortest but fastest sprint of all
	stamina_recovery = 5

	sprint_cost_factor = 1.45
	sprint_speed_factor = 3.2
	exhaust_threshold = 65
	bp_base_systolic = 80 // Default 120
	bp_base_disatolic = 50 // Default 80
	low_pulse = 20 // Default 40
	norm_pulse = 40 // Default 60
	fast_pulse = 60 // Default 90
	v_fast_pulse = 80// Default 120
	max_pulse = 100// Default 160
	body_temperature = T0C + 24

	rarity_value = 3
	break_cuffs = TRUE
	mob_size = 10
	climb_coeff = 1.35

	blurb = "The Unathi (Ou-NAH-thee) are a spacefaring species of humanoid reptiles standing from six to seven feet tall on average. \
	They have a passing resemblance to Earthen crocodiles with hard scales. They hail from the star system of Bomus with their homeworld of Moghes \
	as well as the planets of Yzali and Zakkera."

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	inherent_verbs = list(
		/mob/living/carbon/human/proc/tongue_flick
	)


	spawn_flags = CAN_JOIN | IS_WHITELISTED
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34AF10"

	reagent_tag = IS_UNATHI
	base_color = "#066000"

	heat_discomfort_level = 304 // 30°C
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 294  // 20°C
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)

	has_organ = list(
        BP_BRAIN =    /obj/item/organ/internal/brain/unathi,
        BP_HEART =    /obj/item/organ/internal/heart/unathi,
        BP_LIVER =    /obj/item/organ/internal/liver/unathi,
        BP_LUNGS =    /obj/item/organ/internal/lungs/unathi,
        BP_KIDNEYS =    /obj/item/organ/internal/kidneys/unathi,
        BP_STOMACH =    /obj/item/organ/internal/stomach/unathi,
        BP_EYES =    /obj/item/organ/internal/eyes/unathi
    )

	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze, /decl/emote/audible/roar, /decl/emote/audible/bellow) = 80,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 20,
		)

	pain_messages = list("It hurts so much", "You really need some painkillers", "Ancestors, it hurts")

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	allowed_citizenships = list(CITIZENSHIP_GALACTICA, CITIZENSHIP_MOGHES, CITIZENSHIP_YZALIA, CITIZENSHIP_ZAKKERAN)
	allowed_religions = list(RELIGION_ENSI, RELIGION_HART, RELIGION_SASS, RELIGION_NONE, RELIGION_OTHER)
	default_citizenship = CITIZENSHIP_MOGHES

	zombie_type = SPECIES_ZOMBIE_UNATHI

	default_accent = ACCENT_MHOS
	allowed_accents = list(ACCENT_MHOS, ACCENT_YALZ, ACCENT_ANGL)

	possible_external_organs_modifications = list("Normal","Amputated","Prosthesis")

/datum/species/unathi/after_equip(var/mob/living/carbon/human/H)
	. = ..()
	if(H.shoes)
		return
	var/obj/item/clothing/shoes/sandal/S = new /obj/item/clothing/shoes/sandal(H)
	if(H.equip_to_slot_or_del(S,slot_shoes))
		S.autodrobe_no_remove = TRUE
