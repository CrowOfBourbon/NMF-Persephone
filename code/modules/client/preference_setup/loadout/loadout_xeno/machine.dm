/datum/gear/head/goldenchains
	display_name = "golden headchains"
	path = /obj/item/clothing/head/headchain
	cost = 1
	whitelisted = list(SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL)
	sort_category = "Xenowear - IPC"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/head/goldenchains/New()
	..()
	var/list/headchains = list()
	headchains["head chains, cobalt"] = /obj/item/clothing/head/headchain
	headchains["head chains, emerald"] = /obj/item/clothing/head/headchain/emerald
	headchains["head chains, ruby"] = /obj/item/clothing/head/headchain/ruby
	gear_tweaks += new /datum/gear_tweak/path(headchains)

/datum/gear/head/goldencrests
	display_name = "golden crests"
	path = /obj/item/clothing/head/crest
	cost = 1
	whitelisted = list(SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL)
	sort_category = "Xenowear - IPC"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/head/goldencrests/New()
	..()
	var/list/crest = list()
	crest["crest, cobalt"] = /obj/item/clothing/head/crest
	crest["crest, emerald"] = /obj/item/clothing/head/crest/emerald
	crest["crest, ruby"] = /obj/item/clothing/head/crest/ruby
	gear_tweaks += new /datum/gear_tweak/path(crest)

/datum/gear/wrists/armchains
	display_name = "golden armchains"
	path = /obj/item/clothing/wrists/armchain
	whitelisted = list(SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL)
	sort_category = "Xenowear - IPC"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/wrists/armchains/New()
	..()
	var/list/armchains = list()
	armchains["arm chains, cobalt"] = /obj/item/clothing/wrists/armchain
	armchains["arm chains, emerald"] = /obj/item/clothing/wrists/armchain/emerald
	armchains["arm chains, ruby"] = /obj/item/clothing/wrists/armchain/ruby
	gear_tweaks += new /datum/gear_tweak/path(armchains)

/datum/gear/wrists/bracers
	display_name = "golden bracers"
	path = /obj/item/clothing/wrists/goldbracer
	whitelisted = list(SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL)
	sort_category = "Xenowear - IPC"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/wrists/bracers/New()
	..()
	var/list/bracers = list()
	bracers["arm chains, cobalt"] = /obj/item/clothing/wrists/goldbracer
	bracers["arm chains, emerald"] = /obj/item/clothing/wrists/goldbracer/emerald
	bracers["arm chains, ruby"] = /obj/item/clothing/wrists/goldbracer/ruby
	gear_tweaks += new /datum/gear_tweak/path(bracers)

/datum/gear/ears/antennae
	display_name = "antennae"
	path = /obj/item/clothing/ears/antenna
	cost = 1
	whitelisted = list(SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL)
	sort_category = "Xenowear - IPC"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/ears/antennae/New()
	..()
	var/list/antenna = list()
	antenna["antenna, curved"] = /obj/item/clothing/ears/antenna/curved
	antenna["antenna, straight"] = /obj/item/clothing/ears/antenna/straight
	antenna["antenna, circle"] = /obj/item/clothing/ears/antenna/circle
	antenna["antenna, tusk"] = /obj/item/clothing/ears/antenna/tusk
	antenna["antenna, horn crown"] = /obj/item/clothing/ears/antenna/horncrown
	antenna["antenna, dual horns"] = /obj/item/clothing/ears/antenna/horn
	antenna["antenna, horn"] = /obj/item/clothing/ears/antenna/horn/single
	antenna["antenna, dishes"] = /obj/item/clothing/ears/antenna/dish
	antenna["antenna, dual whips"] = /obj/item/clothing/ears/antenna/whip
	antenna["antenna, whip"] = /obj/item/clothing/ears/antenna/whip/single
	gear_tweaks += new /datum/gear_tweak/path(antenna)

/datum/gear/ears/headlights
	display_name = "headlights"
	path = /obj/item/device/flashlight/headlights
	cost = 2
	whitelisted = list(SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL)
	sort_category = "Xenowear - IPC"
