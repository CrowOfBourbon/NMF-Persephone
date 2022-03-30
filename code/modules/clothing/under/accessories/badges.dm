/*
	Badges are worn on the belt or neck, and can be used to show that the holder is an authorized
	Security agent - the user details can be imprinted on holobadges with a Security-access ID card,
	or they can be emagged to accept any ID for use in disguises.
*/

/obj/item/clothing/accessory/badge
	name = "badge"
	desc = "A corporate security badge, made from gold and set on false leather."
	icon_state = "badge"
	item_state = "marshalbadge"
	overlay_state = "marshalbadge"
	slot_flags = SLOT_BELT | SLOT_TIE

	var/stored_name
	var/badge_string = "Corporate Security"
	var/v_flippable = 1

	drop_sound = 'sound/items/drop/ring.ogg'
	pickup_sound = 'sound/items/pickup/ring.ogg'

/obj/item/clothing/accessory/badge/press
	name = "corporate press pass"
	desc = "A corporate reporter's pass, emblazoned with the NanoTrasen logo."
	icon_state = "pressbadge"
	item_state = "pbadge"
	overlay_state = "pbadge"
	badge_string = "Corporate Reporter"
	w_class = ITEMSIZE_TINY

	drop_sound = 'sound/items/drop/rubber.ogg'
	pickup_sound = 'sound/items/pickup/rubber.ogg'

/obj/item/clothing/accessory/badge/press/independent
	name = "press pass"
	desc = "A freelance journalist's pass."
	icon_state = "pressbadge-i"
	badge_string = "Freelance Journalist"

/obj/item/clothing/accessory/badge/press/plastic
	name = "plastic press pass"
	desc = "A journalist's 'pass' shaped, for whatever reason, like a security badge. It is made of plastic."
	icon_state = "pbadge"
	badge_string = "Sicurity Journelist"
	w_class = ITEMSIZE_SMALL

/obj/item/clothing/accessory/badge/old
	name = "faded badge"
	desc = "A faded security badge, backed with leather."
	icon_state = "badge_round"
	overlay_state = "badge_round"

/obj/item/clothing/accessory/badge/proc/set_name(var/new_name)
	stored_name = new_name
	desc += "\nThe name [stored_name] is written on it."

/obj/item/clothing/accessory/badge/attack_self(mob/user as mob)

	if(!stored_name)
		var/imprintID = alert(user,"Do you wish to imprint your name on \the [src.name]?","Imprint id","Yes", "No")
		if(imprintID == "Yes")
			to_chat(user, "You inspect your [src.name]. Everything seems to be in order and you give it a quick cleaning with your hand.")
			set_name(user.real_name)
		return

	if(isliving(user))
		if(badge_string)
			if(stored_name)
				user.visible_message("<span class='notice'>[user] displays their [src.name].\nIt reads: [stored_name], [badge_string].</span>","<span class='notice'>You display your [src.name].\nIt reads: [stored_name], [badge_string].</span>")
			else
				user.visible_message("<span class='notice'>[user] displays their [src.name].\nIt reads: [badge_string].</span>","<span class='notice'>You display your [src.name]. It reads: [badge_string].</span>")
		else
			if(stored_name)
				user.visible_message("<span class='notice'>[user] displays their [src.name].\nIt reads: [stored_name].</span>","<span class='notice'>You display your [src.name].\nIt reads: [stored_name].</span>")
			else
				user.visible_message("<span class='notice'>[user] displays their [src.name].</span>","<span class='notice'>You display your [src.name].</span>")

/obj/item/clothing/accessory/badge/attack(mob/living/carbon/human/M, mob/living/user)
	if(isliving(user))
		user.visible_message("<span class='danger'>[user] invades [M]'s personal space, thrusting [src] into their face insistently.</span>","<span class='danger'>You invade [M]'s personal space, thrusting [src] into their face insistently.</span>")

/obj/item/clothing/accessory/badge/verb/flip_side()
	set category = "Object"
	set name = "Flip badge"
	set src in usr

	if (use_check_and_message(usr))
		return
	if (!v_flippable)
		to_chat(usr, "You cannot flip \the [src] as it is not a flippable item.")
		return

	src.flipped = !src.flipped
	if(src.flipped)
		if(!overlay_state)
			src.icon_state = "[icon_state]_flip"
		else
			src.overlay_state = "[overlay_state]_flip"
	else
		if(!overlay_state)
			src.icon_state = initial(icon_state)
		else
			src.overlay_state = initial(overlay_state)
	to_chat(usr, "You change \the [src] to be on your [src.flipped ? "right" : "left"] side.")
	update_clothing_icon()
	src.inv_overlay = null
	src.accessory_mob_overlay = null

//.Holobadges.
/obj/item/clothing/accessory/badge/holo
	name = "holobadge"
	desc = "This glowing blue badge marks the holder as a member of corporate security."
	icon_state = "holobadge"
	item_state = "holobadge"
	overlay_state = "holobadge"
	var/emagged //Emagging removes Sec check.

/obj/item/clothing/accessory/badge/holo/cord
	icon_state = "holobadge-cord"
	overlay_state = null
	slot_flags = SLOT_MASK | SLOT_TIE

	drop_sound = 'sound/items/drop/ring.ogg'
	pickup_sound = 'sound/items/pickup/ring.ogg'

/obj/item/clothing/accessory/badge/holo/cord/get_mask_examine_text(mob/user)
	return "around [user.get_pronoun("his")] neck"

/obj/item/clothing/accessory/badge/holo/attack_self(mob/user as mob)
	if(!stored_name)
		to_chat(user, "Waving around a holobadge before swiping an ID would be pretty pointless.")
		return
	return ..()

/obj/item/clothing/accessory/badge/holo/emag_act(var/remaining_charges, var/mob/user)
	if (emagged)
		to_chat(user, "<span class='danger'>\The [src] is already cracked.</span>")
		return
	else
		emagged = 1
		to_chat(user, "<span class='danger'>You crack the holobadge security checks.</span>")
		return 1

/obj/item/clothing/accessory/badge/holo/attackby(var/obj/item/O as obj, var/mob/user as mob)
	if(O.GetID())

		var/obj/item/card/id/id_card = O.GetID()

		if(!istype(id_card))
			return

		if(access_security in id_card.access || emagged)
			to_chat(user, "You imprint your ID details onto the badge.")
			set_name(user.real_name)
		else
			to_chat(user, "[src] rejects your insufficient access rights.")
		return
	..()

/obj/item/clothing/accessory/badge/officer
	name = "officer's badge"
	desc = "A bronze corporate security badge. Stamped with the words 'Security Officer.'"
	icon_state = "bronzebadge"
	overlay_state = "bronzebadge"
	slot_flags = SLOT_TIE

/obj/item/clothing/accessory/badge/warden
	name = "warden's badge"
	desc = "A silver corporate security badge. Stamped with the words 'Brig Officer.'"
	icon_state = "silverbadge"
	overlay_state = "silverbadge"
	slot_flags = SLOT_TIE

/obj/item/clothing/accessory/badge/hos
	name = "commander's badge"
	desc = "An immaculately polished gold security badge. Labeled 'Commander.'"
	icon_state = "goldbadge"
	overlay_state = "goldbadge"
	slot_flags = SLOT_TIE

/obj/item/clothing/accessory/badge/sol_visa
	name = "Interstellar visa recommendation slip"
	desc = "A compact piece of legal paperwork that can replace the enormous amounts of documents required to obtain a Interstellar Republic visa."
	icon_state = "sol-visa"
	overlay_state = "sol-visa"
	slot_flags = SLOT_TIE
	badge_string = "Priority IR Visa Applicant"

	drop_sound = 'sound/items/drop/card.ogg'
	pickup_sound = 'sound/items/pickup/card.ogg'

/obj/item/clothing/accessory/badge/tcfl_papers
	name = "Galactic Forces enlistment"
	desc = "A compact piece of legal paperwork, making one an official recruit of the Galactic Forces!"
	icon_state = "tc-visa"
	overlay_state = "tc-visa"
	slot_flags = SLOT_TIE
	badge_string = "Galactic Forces Recruit"

	drop_sound = 'sound/items/drop/card.ogg'
	pickup_sound = 'sound/items/pickup/card.ogg'

/obj/item/clothing/accessory/badge/tcfl_papers/service
	name = "Galactic Forces service card"
	desc = "A small card identifying one as a current member of the Galactic Forces!"
	badge_string = "Tau Ceti Foreign Legion Service Member"

/obj/item/clothing/accessory/badge/galactica_papers/service/veteran
	name = "Galactic Forces veteran's service card"
	desc = "A small card identifying one as a former member of the Galactic Forces"
	badge_string = "Galactica Forces Veteran"

/obj/item/clothing/accessory/badge/sheriff
	name = "sheriff badge"
	desc = "A star-shaped brass badge denoting who the law is around these parts."
	icon_state = "sheriff"
	overlay_state = "sheriff"
	badge_string = "County Sheriff"

/obj/item/clothing/accessory/badge/marshal
	name = "marshal badge"
	desc = "A hefty gold-plated badge which tells you who's in charge."
	icon_state = "marshalbadge"
	badge_string = "Federal Marshal"

/obj/item/clothing/accessory/badge/investigator
	name = "\improper investigator badge"
	desc = "This badge marks the holder as an investigative agent."
	icon_state = "invbadge"
	overlay_state = "invbadge"
	badge_string = "Corporate Investigator"

/obj/item/clothing/accessory/badge/idbadge
	name = "\improper ID badge"
	desc = "A descriptive identification badge with the holder's credentials."
	icon_state = "solbadge"
	overlay_state = "solbadge"
	badge_string = null
	w_class = ITEMSIZE_TINY

/obj/item/clothing/accessory/badge/idbadge/nt
	name = "\improper NT ID badge"
	desc = "A descriptive identification badge with the holder's credentials. This one has red marks with the NanoTrasen logo on it."
	icon_state = "ntbadge"
	overlay_state = "ntbadge"
	badge_string = null

/obj/item/clothing/accessory/badge/idbadge/intel
	name = "electronic ID badge"
	desc = "A descriptive identification badge with the holder's credentials displayed with a harsh digital glow."
	icon_state = "intelbadge"
	overlay_state = "intelbadge"
	badge_string = null

// passcards

/obj/item/clothing/accessory/badge/passcard
	name = "Galactica passcard"
	desc = "A passcard issued to citizens of Galactica, typically from planets Rhea, Hades, and smaller territories."
	desc_fluff = "A passcard is a modern evolution of the state-issued identification card, with all the functionality of a driver's license, birth certificate, passport, or other document, \
	updated as necessary or able by a central government."
	icon = 'icons/clothing/accessories/passcards.dmi'
	icon_state = "passcard_galactica"
	item_state = "passcard_galactica"
	contained_sprite = TRUE
	slot_flags = null
	w_class = ITEMSIZE_TINY
	flippable = FALSE
	v_flippable = FALSE
	badge_string = null

	drop_sound = 'sound/items/drop/card.ogg'
	pickup_sound = 'sound/items/pickup/card.ogg'

/obj/item/clothing/accessory/badge/passcard/interstellar
	name = "Interstellar Republic Passcard"
	desc = "A passcard issued to citizens of the Interstellar Republic, typically from planets such as the Earth, Mars, Luna, Kepler, or Harmonia."
	icon_state = "passcard_inter"
	item_state = "passcard_inter"

/obj/item/clothing/accessory/badge/passcard/freeport
	name = "Free Port passcard"
	desc = "A passcard issued as a writ of passage to Free Port Citizens abroad."
	icon_state = "passcard_freeport"
	item_state = "passcard_freeport"
	contained_sprite = TRUE
	slot_flags = null
	w_class = ITEMSIZE_TINY
	flippable = FALSE
	v_flippable = FALSE
	badge_string = null

	drop_sound = 'sound/items/drop/card.ogg'
	pickup_sound = 'sound/items/pickup/card.ogg'

//passports

#define CANT_OPEN -1
#define CLOSED 0
#define OPEN 1

/obj/item/clothing/accessory/badge/passport
	name = "Galactica passport"
	desc = "A passport issued to a citizen of Galactica."
	icon = 'icons/clothing/accessories/passcards.dmi'
	icon_state = "passport_gala"
	item_state = "passport_gala"
	contained_sprite = TRUE
	slot_flags = null
	w_class = ITEMSIZE_TINY
	flippable = FALSE
	v_flippable = FALSE
	badge_string = null

	var/open = CANT_OPEN

	drop_sound = 'sound/items/drop/cloth.ogg'

	pickup_sound = 'sound/items/pickup/cloth.ogg'

/obj/item/clothing/accessory/badge/passport/Initialize()
	. = ..()
	if(open != CANT_OPEN)
		verbs += /obj/item/clothing/accessory/badge/passport/proc/open_passport

/obj/item/clothing/accessory/badge/passport/proc/open_passport()
	set name = "Open/Close Passport"
	set src in usr

	open = !open
	to_chat(usr, SPAN_NOTICE("You [open ? "open" : "close"] \the [src]."))
	update_icon()

/obj/item/clothing/accessory/badge/passport/update_icon()
	if(open != CANT_OPEN)
		icon_state = "[initial(icon_state)][open ? "_o" : ""]"

/obj/item/clothing/accessory/badge/passport/interstellar
	name = "Interstellar Republic passport"
	desc = "A passport issued to a citizen of the Alliance of Sovereign Solarian Nations, or Sol Alliance. An outdated document for passage abroad."
	icon_state = "passport_inter"
	item_state = "passport_inter"

/obj/item/clothing/accessory/badge/passport/coc
	name = "coalition passport"
	desc = "A passport issued to a citizen of the Coalition of Colonies, typically from worlds like Xanu Prime or the 'wilder' frontier-ward planets lacking in strong central government."
	icon_state = "passport_coc"
	item_state = "passport_coc"

/obj/item/clothing/accessory/badge/passport/elodile
	name = "Elodile Empire passport"
	desc = "A passport issued to citizens of the Elodile Empire. Shiny, and compact, it's perfect to use on the go."
	icon_state = "passport_elodile"
	item_state = "passport_elodile"
	open = CLOSED
	var/credit_score = 5
	var/species_tag = ""

/obj/item/clothing/accessory/badge/passport/elodile/examine(mob/user)
	. = ..()
	to_chat(user, SPAN_NOTICE("The passport displays the owner's social credit score as: [credit_score]."))

/obj/item/clothing/accessory/badge/passport/elodile/update_icon()
	icon_state = "[initial(icon_state)][open ? "_o[species_tag]" : ""]"

#undef CANT_OPEN
#undef CLOSED
#undef OPEN
