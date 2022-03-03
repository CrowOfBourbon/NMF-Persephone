/datum/species/bug/type_b
	name = SPECIES_VAURCA_WARRIOR
	short_name = "vaw"
	name_plural = "Type BA"
	language = LANGUAGE_VAURCA
	primitive_form = SPECIES_VAURCA_WORKER
	greater_form = SPECIES_VAURCA_BREEDER
	icobase = 'icons/mob/human_races/vaurca/r_vaurcab.dmi'
	slowdown = 0

	brute_mod = 0.7
	burn_mod = 1.2
	oxy_mod = 1
	radiation_mod = 0.5

	grab_mod = 1.25
	resist_mod = 1.75

	mob_size = 10 //fairly lighter than the worker type.
	taste_sensitivity = TASTE_DULL
	blurb = "Za or Type B: Warrior forms, total opposites to the Worker forms. Typically less-armored though much faster, sporting larger mandibles and sharper claws. \
	Warrior forms differ most from Workers with their lust for violence, warrior forms are known for their mindlessness. \
	Warriors blindly follow the commands of MV forms, unable to comprehend self-will due to parts of their brains being cut away. \
	While less intelligent than other forms, Warriors are still able to problem solve, only having limited free-will. \
	<b>Type BA are most comfortable obviously in security positions, but can rarely be found in the lower hierarchies of other departments.</b>"

	heat_level_1 = 450 // Warriors spend more time on the heated surface.
	heat_level_2 = 500
	heat_level_3 = 600

	stamina = 115
	sprint_speed_factor = 1.0
	sprint_cost_factor = 0.40
	stamina_recovery = 3


	inherent_verbs = list(
		/mob/living/carbon/human/proc/bugbite //weaker version of gut.
		)
	
	//num_alternate_languages = 1
	//secondary_langs = list(LANGUAGE_VAURCA, LANGUAGE_VAURCA_SIGN)

/datum/species/bug/type_c
	name = SPECIES_VAURCA_BREEDER
	short_name = "vab"
	name_plural = "Type CB"
	bodytype = BODYTYPE_VAURCA_BREEDER
	primitive_form = SPECIES_VAURCA_WARRIOR
	icon_template = 'icons/mob/human_races/vaurca/r_vaurcac.dmi'
	icobase = 'icons/mob/human_races/vaurca/r_vaurcac.dmi'
	deform = 'icons/mob/human_races/vaurca/r_vaurcac.dmi'
	icon_x_offset = -8
	healths_x = 22
	healths_overlay_x = 9
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick,  /datum/unarmed_attack/claws/strong, /datum/unarmed_attack/bite/strong)
	rarity_value = 10
	slowdown = 2
	eyes = "breeder_eyes" //makes it so that eye colour is not changed when skin colour is.
	eyes_icons = 'icons/mob/human_face/eyes48x48.dmi'
	grab_mod = 4
	toxins_mod = 1 //they're not used to all our weird human bacteria.
	break_cuffs = TRUE
	mob_size = 30
	taste_sensitivity = TASTE_DULL
	blurb = {"MV or Type D: MV forms, the pure born of queens. Type D Vaurcae are the mothers of lesser forms, creating and fertilizing eggs. \
	Type D forms are rarer than lesser forms, though still make up a considerable population within the hive. Usually seen as chaplains, consulars, visitors and Quartermasters on the station. \ 
	MV forms are able to advise all lesser forms, who treat type D with respect and love. MV forms can additionally give orders to warriors, who always follow the command of an MV. \
	No matter what the instruction."}

	age_max = 60
	default_genders = list(FEMALE)
	economic_modifier = 3

	speech_sounds = list('sound/voice/hiss1.ogg','sound/voice/hiss2.ogg','sound/voice/hiss3.ogg','sound/voice/hiss4.ogg')
	speech_chance = 50

	death_sound = 'sound/voice/hiss6.ogg'
	damage_overlays = 'icons/mob/human_races/masks/dam_breeder.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_breeder.dmi'
	blood_mask = 'icons/mob/human_races/masks/blood_breeder.dmi'
	canvas_icon = 'icons/mob/base_48.dmi'


	stamina = 175
	sprint_speed_factor = 1
	sprint_cost_factor = 0.80
	stamina_recovery = 3

	allowed_citizenships = list(CITIZENSHIP_XAL)
	default_citizenship = CITIZENSHIP_XAL

	flags =  NO_SLIP | NO_ARTERIES | PHORON_IMMUNE

	inherent_verbs = list(
		/mob/living/carbon/human/proc/bugbite
		)

	default_h_style = "Bald"

/datum/species/bug/type_c/New()
	..()
	equip_adjust = list(
		slot_l_hand_str = list("[NORTH]" = list("x" = 6, "y" = 8),  "[EAST]" = list("x" = 15, "y" = 5), "[SOUTH]" = list("x" = 16, "y" = 8), "[WEST]" = list("x" = -9, "y" = 4)),
		slot_r_hand_str = list("[NORTH]" = list("x" = 11, "y" = 8), "[EAST]" = list("x" = 25, "y" = 4), "[SOUTH]" = list("x" = 2, "y" = 8),  "[WEST]" = list("x" = 1, "y" = 5))
	)

/datum/species/bug/type_c/handle_post_spawn(var/mob/living/carbon/human/H)
	..()
	H.gender = FEMALE
	return

/datum/species/bug/type_big
	name = SPECIES_VAURCA_WARFORM
	short_name = "vam"
	name_plural = "Type BA"
	bodytype = BODYTYPE_VAURCA_WARFORM
	primitive_form = SPECIES_VAURCA_WARRIOR
	icon_template = 'icons/mob/human_races/vaurca/r_vaurcamecha.dmi'
	icobase = 'icons/mob/human_races/vaurca/r_vaurcamecha.dmi'
	deform = 'icons/mob/human_races/vaurca/r_vaurcamecha.dmi'
	default_language = LANGUAGE_GIBBERING
	language = LANGUAGE_VAURCA
	icon_x_offset = -8
	unarmed_types = list(/datum/unarmed_attack/claws/cleave, /datum/unarmed_attack/bite/strong)
	rarity_value = 10
	slowdown = 0
	eyes = "warform_eyes"
	eyes_icons = 'icons/mob/human_face/warform_eyes.dmi'
	brute_mod = 0.5
	burn_mod = 0.1
	fall_mod = 0
	toxins_mod = 1
	grab_mod = 10
	total_health = 200
	break_cuffs = TRUE
	mob_size = 30

	speech_sounds = list('sound/voice/hiss1.ogg','sound/voice/hiss2.ogg','sound/voice/hiss3.ogg','sound/voice/hiss4.ogg')
	speech_chance = 100

	death_sound = 'sound/voice/hiss6.ogg'
	damage_overlays = 'icons/mob/human_races/masks/dam_mask_warform.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_warform.dmi'
	blood_mask = 'icons/mob/human_races/masks/dam_mask_warform.dmi'
	onfire_overlay = 'icons/mob/OnFire_large.dmi'


	stamina = 200
	stamina_recovery = 5
	sprint_speed_factor = 0.9
	sprint_cost_factor = 0.5

	heat_level_1 = 1000 //Default 360
	heat_level_2 = 4000 //Default 400
	heat_level_3 = 16000 //Default 1000
	hazard_high_pressure = 55000 //Default 550
	warning_high_pressure = 3250 //Default 325

	spawn_flags = IS_RESTRICTED
	flags = NO_SCAN | NO_SLIP | NO_PAIN | NO_BREATHE | NO_ARTERIES | PHORON_IMMUNE

	inherent_verbs = list(
		/mob/living/carbon/human/proc/rebel_yell,
		/mob/living/carbon/human/proc/devour_head,
		/mob/living/carbon/human/proc/formic_spray,
		/mob/living/carbon/human/proc/trample
		)

	has_organ = list(
		BP_PHEROMONE_PROCESSOR       = /obj/item/organ/internal/pheromoneprocessor/vaurca,
		BP_LUNGS              = /obj/item/organ/internal/lungs/vaurca,
		BP_HEART              = /obj/item/organ/internal/heart/vaurca,
		BP_PHORON_RESERVOIR    = /obj/item/organ/vaurca/reservoir,
		BP_VAURCA_LIVER    = /obj/item/organ/internal/liver/vaurca/robo,
		BP_VAURCA_KIDNEYS  = /obj/item/organ/internal/kidneys/vaurca/robo,
		BP_STOMACH            = /obj/item/organ/internal/stomach,
		BP_BRAIN              = /obj/item/organ/internal/brain/vaurca,
		BP_EYES               = /obj/item/organ/internal/eyes/night/vaurca,
		BP_FILTRATION_BIT      = /obj/item/organ/vaurca/filtrationbit
	)

	default_h_style = "Bald"

/datum/species/bug/type_big/handle_post_spawn(var/mob/living/carbon/human/H)
	H.mutations.Add(HULK)
	return ..()

/datum/species/bug/type_e
	name = SPECIES_VAURCA_BULWARK
	short_name = "vak"
	name_plural = "Type E"
	bodytype = BODYTYPE_VAURCA_BULWARK
	preview_icon = 'icons/mob/human_races/vaurca/r_vaurcae.dmi'
	icon_template = 'icons/mob/human_races/vaurca/r_vaurcae.dmi'
	icobase = 'icons/mob/human_races/vaurca/r_vaurcae.dmi'
	deform = 'icons/mob/human_races/vaurca/r_vaurcae.dmi'
	canvas_icon = 'icons/mob/base_48.dmi'
	talk_bubble_icon = 'icons/mob/talk_bulwark.dmi'

	default_h_style = "Bulwark Classic Antennae"

	icon_x_offset = -9
	healths_x = 22
	healths_overlay_x = 9
	floating_chat_x_offset = 6

	damage_overlays = 'icons/mob/human_races/masks/dam_mask_bulwark.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_bulwark.dmi'
	blood_mask = 'icons/mob/human_races/masks/dam_mask_bulwark.dmi'
	onfire_overlay = 'icons/mob/OnFire_bulwark.dmi'

	eyes_icons = 'icons/mob/human_face/eyes48x48.dmi'
	eyes = "bulwark_eyes"

	slowdown = 6

	unarmed_types = list(/datum/unarmed_attack/claws/vaurca_bulwark)

	natural_armor = list(
		melee = ARMOR_MELEE_SMALL
	)

	brute_mod = 0.65
	burn_mod = 1
	oxy_mod = 1
	radiation_mod = 0
	toxins_mod = 3

	grab_mod = 0.8
	resist_mod = 4

	mob_size = 28
	taste_sensitivity = TASTE_DULL
	blurb = "La or Type C: Structural forms, a variation of the worker form, their large bodies are often used as temporary shields for breached or flooding areas. \
	Structural forms are able to hold their ground against extreme force and pressure, being able to tank heavy hits. \
	Structural forms are incredibly slow when it comes to their movement, this is because of their large size and limited amount of legs. \
	When it comes to combat, structural forms typically defend themselves and never chase down opponents, when defending themselves, however. They are ruthless."

	heat_level_1 = 520 // Typically the building blocks of exterior structures. Immune to extremely heated temperatures.
	heat_level_2 = 600
	heat_level_3 = 750

	sprint_speed_factor = 1.4

/datum/species/bug/type_e/New()
	..()
	equip_adjust = list(
		slot_head_str    = list(                                     "[EAST]" = list("x" = 16, "y" = 0),  "[SOUTH]" = list("x" = 9, "y" = 0), "[WEST]" = list("x" = 0, "y" = 0)),
		slot_glasses_str = list(                                     "[EAST]" = list("x" = 15, "y" = 0),  "[SOUTH]" = list("x" = 9, "y" = 0), "[WEST]" = list("x" = 1, "y" = 0)),
		slot_l_hand_str  = list("[NORTH]" = list("x" = 6, "y" = 0),  "[EAST]" = list("x" = 9, "y" = 2),  "[SOUTH]" = list("x" = 12, "y" = 0), "[WEST]" = list("x" = 4, "y" = 0)),
		slot_r_hand_str  = list("[NORTH]" = list("x" = 12, "y" = 0), "[EAST]" = list("x" = 12, "y" = 0), "[SOUTH]" = list("x" = 6, "y" = 0),  "[WEST]" = list("x" = 7, "y" = 2)),
		slot_l_ear_str   = list(                                     "[EAST]" = list("x" = 0, "y" = 0),  "[SOUTH]" = list("x" = 9, "y" = 0),  "[WEST]" = list("x" = 0, "y" = 0)),
		slot_r_ear_str   = list(                                     "[EAST]" = list("x" = 16, "y" = 0), "[SOUTH]" = list("x" = 9, "y" = 0),  "[WEST]" = list("x" = 0, "y" = 0)),
		slot_belt_str    = list("[NORTH]" = list("x" = 9, "y" = 2),  "[EAST]" = list("x" = 10, "y" = 1), "[SOUTH]" = list("x" = 9, "y" = 2),  "[WEST]" = list("x" = 6, "y" = 1)),
		slot_wear_id_str = list("[NORTH]" = list("x" = 0, "y" = 0),  "[EAST]" = list("x" = 12, "y" = 0), "[SOUTH]" = list("x" = 9, "y" = 0),  "[WEST]" = list("x" = 0, "y" = 0)),
		slot_wrists_str  = list("[NORTH]" = list("x" = 15, "y" = 0), "[EAST]" = list("x" = 12, "y" = 0), "[SOUTH]" = list("x" = 4, "y" = 0),  "[WEST]" = list("x" = 9, "y" = 0)),
		slot_shoes_str   = list("[NORTH]" = list("x" = 9, "y" = 0),  "[EAST]" = list("x" = 8, "y" = 0),  "[SOUTH]" = list("x" = 9, "y" = 0),  "[WEST]" = list("x" = 8, "y" = 0))
	)

/datum/species/bug/type_e/can_double_fireman_carry()
	return TRUE
