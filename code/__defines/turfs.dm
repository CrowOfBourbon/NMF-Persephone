#define TURF_REMOVE_CROWBAR     1
#define TURF_REMOVE_SCREWDRIVER 2
#define TURF_REMOVE_SHOVEL      4
#define TURF_REMOVE_WRENCH      8
#define TURF_REMOVE_WELDER      16
#define TURF_CAN_BREAK          32
#define TURF_CAN_BURN           64
#define TURF_HAS_EDGES          128
#define TURF_HAS_CORNERS        256
#define TURF_IS_FRAGILE         512
#define TURF_ACID_IMMUNE        1024

//Used for floor/wall smoothing
#define SMOOTH_NONE 0	//Smooth only with itself
#define SMOOTH_ALL 1	//Smooth with all of type
#define SMOOTH_WHITELIST 2	//Smooth with a whitelist of subtypes
#define SMOOTH_BLACKLIST 3 //Smooth with all but a blacklist of subtypes
#define SMOOTH_GREYLIST 4 // Use a whitelist and a blacklist at the same time. atom smoothing only

#define isCardinal(x)			(x == NORTH || x == SOUTH || x == EAST || x == WEST)
#define isDiagonal(x)			(x == NORTHEAST || x == SOUTHEAST || x == NORTHWEST || x == SOUTHWEST)

#define FOOTSTEP_SPRITE_AMT 2

// Roof related flags
#define ROOF_FORCE_SPAWN        1
#define ROOF_CLEANUP            2

// MultiZ faller control. (Bit flags.)
// Default flag is needed for assoc lists to work.
#define CLIMBER_DEFAULT 1
#define CLIMBER_NO_EXIT 2
