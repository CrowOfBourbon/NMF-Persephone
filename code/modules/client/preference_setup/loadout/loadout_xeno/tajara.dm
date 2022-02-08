/datum/gear/shoes/tajara/boots
	display_name = "tajaran boots selection"
	description = "A selection of boots fitted for Tajara."
	path = /obj/item/clothing/shoes/tajara
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/shoes/tajara/boots/New()
	..()
	var/list/boots = list()
	boots["black boots, short"] = /obj/item/clothing/shoes/tajara/jackboots
	boots["black boots, knee"] = /obj/item/clothing/shoes/tajara/jackboots/knee
	boots["black boots, thigh"] = /obj/item/clothing/shoes/tajara/jackboots/thigh
	boots["brown workboots"] = /obj/item/clothing/shoes/tajara/workboots
	boots["grey workboots"] = /obj/item/clothing/shoes/tajara/workboots/grey
	boots["dark workboots"] = /obj/item/clothing/shoes/tajara/workboots/dark
	gear_tweaks += new /datum/gear_tweak/path(boots)

/datum/gear/gloves/tajara
	display_name = "tajara gloves selection"
	description = "A selection of tajaran gloves."
	path = /obj/item/clothing/gloves/black/tajara
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/gloves/tajara/New()
	..()
	var/list/taj_gloves = list()
	taj_gloves["black gloves"] = /obj/item/clothing/gloves/black/tajara
	taj_gloves["red gloves"] = /obj/item/clothing/gloves/red/tajara
	taj_gloves["blue gloves"] = /obj/item/clothing/gloves/blue/tajara
	taj_gloves["orange gloves"] = /obj/item/clothing/gloves/orange/tajara
	taj_gloves["purple gloves"] = /obj/item/clothing/gloves/purple/tajara
	taj_gloves["brown gloves"] = /obj/item/clothing/gloves/brown/tajara
	taj_gloves["light brown gloves"] = /obj/item/clothing/gloves/light_brown/tajara
	taj_gloves["green gloves"] = /obj/item/clothing/gloves/green/tajara
	taj_gloves["grey gloves"] = /obj/item/clothing/gloves/grey/tajara
	taj_gloves["white gloves"] = /obj/item/clothing/gloves/white/tajara
	taj_gloves["rainbow gloves"] = /obj/item/clothing/gloves/rainbow/tajara
	taj_gloves["black leather gloves"] = /obj/item/clothing/gloves/black_leather/tajara
	gear_tweaks += new /datum/gear_tweak/path(taj_gloves)

/datum/gear/suit/tajara_coat
	display_name = "tajara coat selection"
	description = "A selection of tajaran native coats."
	path = /obj/item/clothing/suit/storage/toggle/tajaran/wool
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/suit/tajara_coat/New()
	..()
	var/list/coat = list()
	coat["tajaran naval coat"] = /obj/item/clothing/suit/storage/toggle/tajaran
	coat["gruff cloak"] = /obj/item/clothing/suit/storage/hooded/tajaran
	coat["adhomian wool coat"] = /obj/item/clothing/suit/storage/toggle/tajaran/wool
	gear_tweaks += new /datum/gear_tweak/path(coat)

/datum/gear/suit/tajara_cloak
	display_name = "tajara cloak selection"
	description = "A selection of tajaran native cloaks."
	path = /obj/item/clothing/accessory/poncho/tajarancloak
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"
	cost = 1

/datum/gear/suit/tajara_cloak/New()
	..()
	var/list/tajarancloak = list()
	tajarancloak["common cloak"] = /obj/item/clothing/accessory/poncho/tajarancloak
	tajarancloak["fancy cloak"] = /obj/item/clothing/accessory/poncho/tajarancloak/fancy
	gear_tweaks += new /datum/gear_tweak/path(tajarancloak)

/datum/gear/suit/tajara_priest
	display_name = "tajaran religious suits selection"
	description = "A selection of tajaran religious robes."
	path = /obj/item/clothing/suit/storage/hooded/tajaran/priest
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/suit/tajaran_surgeon
	display_name = "adhomian surgeon garb"
	path = /obj/item/clothing/suit/storage/hooded/tajaran/surgery
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	allowed_roles = list("Chief Medical Officer", "Physician", "Surgeon", "Xenobiologist", "Roboticist")
	sort_category = "Xenowear - Tajara"

/datum/gear/uniform/tajara
	display_name = "tajaran uniform selection"
	description = "A selection of tajaran native uniforms."
	path = /obj/item/clothing/under/tajaran
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/uniform/tajara/New()
	..()
	var/list/uniform = list()
	uniform["laborers clothes"] = /obj/item/clothing/under/tajaran
	uniform["fancy uniform"] = /obj/item/clothing/under/tajaran/fancy
	uniform["NanoTrasen overalls"] = /obj/item/clothing/under/tajaran/nt
	uniform["matake priest garments"] = /obj/item/clothing/under/tajaran/matake
	uniform["adhomian summerwear"] = /obj/item/clothing/under/tajaran/summer
	uniform["adhomian summer pants"] = /obj/item/clothing/under/pants/tajaran
	gear_tweaks += new /datum/gear_tweak/path(uniform)

/datum/gear/uniform/tajara_dress
	display_name = "tajaran dress selection"
	description = "A selection of tajaran native dresses."
	path = /obj/item/clothing/under/dress/tajaran
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/uniform/tajara_dress/New()
	..()
	var/list/dress = list()
	dress["white fancy adhomian dress"] = /obj/item/clothing/under/dress/tajaran
	dress["blue fancy adhomian dress"] = /obj/item/clothing/under/dress/tajaran/blue
	dress["green fancy adhomian dress"] = /obj/item/clothing/under/dress/tajaran/green
	dress["red fancy adhomian dress"] = /obj/item/clothing/under/dress/tajaran/red
	dress["red noble adhomian dress"] = /obj/item/clothing/under/dress/tajaran/fancy
	dress["black noble adhomian dress"] = /obj/item/clothing/under/dress/tajaran/fancy/black
	dress["black noble adhomian dress"] = /obj/item/clothing/under/dress/tajaran/fancy/black
	dress["adhomian summer dress"] = /obj/item/clothing/under/dress/tajaran/summer
	gear_tweaks += new /datum/gear_tweak/path(dress)

/datum/gear/shoes/tajara/flats
	display_name = "tajaran flats selection"
	description = "Dress flats, in a selection of colors. Refitted for Tajara"
	path = /obj/item/clothing/shoes/tajara
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/shoes/tajara/flats/New()
	..()
	var/list/flats = list()
	flats["dress flats, black"] = /obj/item/clothing/shoes/flats/tajara
	flats["dress flats, white"] = /obj/item/clothing/shoes/flats/tajara/white
	flats["dress flats, red"] = /obj/item/clothing/shoes/flats/tajara/red
	flats["dress flats, blue"] = /obj/item/clothing/shoes/flats/tajara/blue
	flats["dress flats, green"] = /obj/item/clothing/shoes/flats/tajara/green
	flats["dress flats, purple"] = /obj/item/clothing/shoes/flats/tajara/purple
	gear_tweaks += new /datum/gear_tweak/path(flats)

/datum/gear/accessory/tajara
	display_name = "fur scarf"
	description = "A selection of tajaran colored fur scarfs."
	path = /obj/item/clothing/accessory/tajaran
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/accessory/tajara/New()
	..()
	var/list/scarf = list()
	scarf["brown fur scarf"] = /obj/item/clothing/accessory/tajaran
	scarf["light brown fur scarf"] = /obj/item/clothing/accessory/tajaran/lbrown
	scarf["cinnamon fur scarf"] = /obj/item/clothing/accessory/tajaran/cinnamon
	scarf["blue fur scarf"] = /obj/item/clothing/accessory/tajaran/blue
	scarf["silver fur scarf"] = /obj/item/clothing/accessory/tajaran/silver
	scarf["black fur scarf"] = /obj/item/clothing/accessory/tajaran/black
	scarf["ruddy fur scarf"] = /obj/item/clothing/accessory/tajaran/ruddy
	scarf["orange fur scarf"] = /obj/item/clothing/accessory/tajaran/orange
	scarf["cream fur scarf"] = /obj/item/clothing/accessory/tajaran/cream
	gear_tweaks += new /datum/gear_tweak/path(scarf)

/datum/gear/head/tajara
	display_name = "adhomian headgear selection"
	description = "A selection of tajaran native headgear."
	path = /obj/item/clothing/head/tajaran/circlet
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"

/datum/gear/head/tajara/New()
	..()
	var/list/circlet = list()
	circlet["golden dress circlet"] = /obj/item/clothing/head/tajaran/circlet
	circlet["silver dress circlet"] = /obj/item/clothing/head/tajaran/circlet/silver
	circlet["fur hat"] = /obj/item/clothing/head/tajaran/fur
	gear_tweaks += new /datum/gear_tweak/path(circlet)

/datum/gear/accessory/tajara_wrap
	display_name = "marriage wrap"
	description = "A holy cloth wrap that signifies marriage amongst tajara."
	path = /obj/item/clothing/accessory/tajaran_wrap
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/accessory/tajara_wrap/New()
	..()
	var/list/wrap = list()
	wrap["marriage wrap, male"] = /obj/item/clothing/accessory/tajaran_wrap
	wrap["marriage wrap, female"] = /obj/item/clothing/accessory/tajaran_wrap/female
	gear_tweaks += new /datum/gear_tweak/path(wrap)

/datum/gear/accessory/tajara_pelt
	display_name = "ceremonial pelt"
	path = /obj/item/clothing/accessory/tajaran_pelt
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	sort_category = "Xenowear - Tajara"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/shoes/tajara/footwraps
	display_name = "native tajaran foot-wear"
	path = /obj/item/clothing/shoes/tajara/footwraps
	sort_category = "Xenowear - Tajara"
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)

/datum/gear/adhomai_zippo
	display_name = "adhomian lighter"
	path = /obj/item/flame/lighter/adhomai
	sort_category = "Xenowear - Tajara"
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/adhomai_pocketwatch
	display_name = "adhomian watch"
	path = /obj/item/pocketwatch/adhomai
	sort_category = "Xenowear - Tajara"
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/tajaran_dice
	display_name = "bag of adhomian dice"
	path = /obj/item/storage/pill_bottle/dice/tajara
	sort_category = "Xenowear - Tajara"
	whitelisted = list(SPECIES_TAJARA, SPECIES_TAJARA_ZHAN, SPECIES_TAJARA_MSAI)
	flags = GEAR_HAS_DESC_SELECTION


