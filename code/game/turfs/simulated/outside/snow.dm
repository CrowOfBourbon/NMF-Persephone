/turf/simulated/floor/outdoors/snow
	name = "snow"
	icon_state = "snow"
	movement_cost = 1
	initial_flooring = /decl/flooring/snow
	var/list/crossed_dirs = list()

/turf/simulated/floor/outdoors/snow/update_icon()
	..()
	for(var/d in crossed_dirs)
		add_overlay(image(icon = 'icons/turf/snow.dmi', icon_state = "snow_footprints", dir = text2num(d)))

/turf/simulated/floor/outdoors/snow/attack_hand(mob/user as mob)
	visible_message("[user] starts scooping up some snow.", "You start scooping up some snow.")
	if(do_after(user, 1 SECOND))
		var/obj/S = new /obj/item/stack/material(user.loc)
		user.put_in_hands(S)
		visible_message("[user] scoops up a pile of snow.", "You scoop up a pile of snow.")
	return

/turf/simulated/floor/outdoors/ice
	name = "ice"
	icon_state = "ice"
	desc = "Looks slippery."

/turf/simulated/floor/outdoors/ice/dark
	name = "black ice"
	icon_state = "ice_dark"
	desc = "An uneven surface of dark rocks glazed over by solid ice. Looks slippey, maybe even painful"

/turf/simulated/floor/outdoors/ice/dark_smooth
	name = "smooth black ice"
	icon_state = "ice_dark_smooth"
	desc = "Dark rock that has been smoothened to be perfectly even. It's coated in a layer of slippey ice"

/turf/simulated/floor/outdoors/ice/Entered(var/mob/living/M)
	..()
	if(istype(M))
		M.SetStunned(1)
		addtimer(CALLBACK(src, .proc/slip_mob, M), 1 * world.tick_lag)

/turf/simulated/floor/outdoors/ice/proc/slip_mob(var/mob/living/M)
	if(istype(M, /mob/living) && M.loc == src)
		if(M.stunned == 0)
			to_chat(M, "<span class='warning'>You slide across the ice!</span>")
		step(M,M.dir)

// Ice that is used for, say, areas floating on water or similar.
/turf/simulated/floor/outdoors/shelfice
	name = "ice"
	icon_state = "ice"
	desc = "Looks slippery."
	movement_cost = 4
