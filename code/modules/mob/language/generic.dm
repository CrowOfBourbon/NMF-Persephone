// Noise "language", for audible emotes.
/datum/language/noise
	name = "Noise"
	desc = "Noises"
	key = ""
	flags = RESTRICTED|NONGLOBAL|INNATE|NO_TALK_MSG|NO_STUTTER|TCOMSSIM

/datum/language/noise/format_message(message, verb)
	return "<span class='message'><span class='[colour]'>[message]</span></span>"

/datum/language/noise/format_message_plain(message, verb)
	return message

/datum/language/noise/format_message_radio(message, verb, accent)
	return "<span class='[colour]'>[message]</span>"

/datum/language/noise/get_talkinto_msg_range(message)
	// if you make a loud noise (screams etc), you'll be heard from 4 tiles over instead of two
	return (copytext(message, length(message)) == "!") ? 4 : 2

// 'basic' language; spoken by default.
/datum/language/english
	name = LANGUAGE_ENGLISH
	desc = "The most common language throughout Human controlled systems, English was already the most prominent language on Earth before Humanity's colonization of its system."
	speech_verb = list("says")
	key = "0"
	flags = RESTRICTED|TCOMSSIM
	allow_accents = TRUE
	syllables = list("a", "ado", "ago", "aj", "ajn", "al", "alt", "am", "amas", "an", "ang", "ante", "ap", "ard", "arma", "aro", "as", "aur", "aut", "aw", "ba", "bal", "bao", "be", "beau", "bel", "bi", "bit", "blu", "bo", "bod", "boj", "bojn", "bu", "but", "ca", "caj", "ce", "cer", "chun",
	"ci", "cion", "coj", "cor", "da", "daj", "dan", "de", "den", "dis", "do", "dor", "dorm", "eco", "ego", "ek", "eks", "en", "ero", "es", "est", "et", "eve", "fa", "fe", "fel", "fla", "foj", "fra", "fraz", "fros", "ful", "fut", "ga", "gan", "gar", "gi", "gis", "go", "gran", "ha", "han", "hav",
	"hom", "hong", "hu", "hum", "hushi", "ia", "iaj", "ica", "id", "idon", "il", "in", "ing", "io", "is", "iton", "iza", "ja", "ji", "jirou", "joj", "ka", "kaj", "kajo", "kan", "ke", "ket", "ki", "kna", "krio", "ku", "kui", "kuk", "kun", "kur", "la", "laca", "leng", "les", "li", "liao", "lib",
	"ling", "lis", "lo", "lon", "long", "lu", "lud", "ma", "mal", "man", "me", "mego", "mero", "mi", "mia", "min", "mo", "moj", "mola", "mon", "mul", "ne", "ner", "ni", "nio", "no", "nu", "of", "oj", "om", "on", "ou", "pe", "pi", "plan", "pli", "po", "por", "post", "pre", "prin", "pru", "pu",
	"pur", "qiu", "que", "ra", "ras", "re", "ri", "rig", "ril", "ro", "roj", "ron", "roso", "rou", "ru", "sa", "san", "sci", "sek", "shi", "shiia", "shiue", "shiwu", "shu", "shui", "si", "siaj", "sku", "so", "som", "sti", "str", "stre", "su", "suno", "ta", "tan", "tas", "te", "tel", "tem",
	"the", "ti", "tian", "tita", "tiu", "to", "toj", "ton", "tran", "tre", "tri", "trin", "tro", "trus", "un", "undo", "uno ", "uz", "va", "var", "varm", "vas", "ve", "vek", "ven", "ves", "vi", "via", "vin", "vino", "vint", "vir", "von", "vu", "whe", "wu", "yong", "zem", "zo", "zoj", "zon")

// Galactic common languages (systemwide accepted standards).
/datum/language/luna
	name = LANGUAGE_LUNIAN
	short = "LUNA"
	desc = "Similar to English, Lunian originated from the first colony on Luna. It's a more elegant sounding dialect. "
	speech_verb = list("enunciates")
	sing_verb = list("performs")
	colour = "tradeband"
	written_style = "tradeband"
	key = "2"
	flags = TCOMSSIM
	allow_accents = TRUE
	syllables = list("a", "acc", "ai", "al", "ali", "am", "ama", "ami", "amo", "an", "ang", "arme", "ave", "ba", "bai", "bar", "bat", "bi", "blie", "bris", "ca", "can", "cant", "car", "care", "ce", "ci", "cis", "cit", "cla", "co", "cul", "cur", "curt", "da", "dam", "dans", "de",
	"di", "dier", "dim", "dins", "dorm", "du", "duro", "e", "eaux", "ec", "ecto", "ees", "ego", "el", "en", "ent", "er", "ere", "eres", "eri", "ero", "es", "et", "ex", "far", "fi", "fic", "fine", "fol", "foll", "fri", "fro", "gen", "gil", "go", "gran", "hab", "ho", "huc", "ia",
	"iam", "ibus", "idor", "ie", "iens", "ier", "ieur", "iis", "il", "in", "ine", "int", "ir", "is", "ise", "it", "itt", "jar", "je", "jo", "jor", "la", "lar", "lav", "le", "lees", "ler", "les", "li", "lib", "lie", "lo", "lu", "ma", "man", "manu", "mar", "mari", "mas", "me", "mea",
	"mee", "mejo", "men", "mes", "meum", "meus", "mi", "mier", "min", "mine", "mit", "mo", "moi", "mon", "mons", "mors", "mou", "mul", "na", "nam", "ne", "nee", "nent", "nes", "ni", "nit", "no", "nom", "nu", "num", "o", "oc", "occ", "oja", "om", "omni", "or", "ori", "oro", "os", "ou",
	"oub", "pa", "par", "pars", "pas", "plu", "pluv", "po", "pol", "pos", "pou", "pous", "pre", "pu", "pug", "pus", "que", "qui", "re", "ri", "ric", "riga", "rito", "ro", "rom", "sa", "sal", "se", "ser", "sers", "ses", "sim", "sion", "so", "sol", "som", "sou", "sper", "sse", "ste", "su",
	"suis", "sul", "sur", "ta", "tar", "te", "teau", "tem", "temp", "ten", "tene", "tes", "ti", "tibus", "tien", "tion", "to", "tol", "ton", "tons", "tout", "tra", "trai", "tre", "trou", "tuo", "tus", "tut", "ues", "ui", "ul", "um", "un", "upa", "us", "ut", "ux", "va", "vail", "ve", "ven",
	"veni", "vi", "viam", "vie", "vo", "xus", "za", "zio")

// Criminal language.
/datum/language/mars
	name = LANGUAGE_MARTIAN
	short = "MARS"
	desc = "The Martian language formed during the colonization of New Holden on Mars, becoming the main language on the planet at its peak. \
	When the Holden disaster occurred, the language was feared to be dying for a while, as most surviving generations went back to Luna or Earth. \
	Now with the recent return of colonization efforts on Mars, Martianese isn't as prominent as the other three common languages, but those who grew up with it are proud folk. \
	It is another dialect of English, sounding more akin to the Native American tribal language of old Earth history."
	speech_verb = list("growls")
	sing_verb = list("croons")
	colour = "freespeak"
	written_style = "freespeak"
	key = "3"
	flags = TCOMSSIM
	allow_accents = TRUE
	syllables = list("a", "aan", "aas", "ab", "aba", "ad", "aee", "aft", "ag", "ai", "aise", "ak", "akee", "aq", "ar", "ata", "aur", "aus", "ba", "baat", "bach", "bad", "bahe", "band", "be", "ben", "ber", "bhaa", "bhu", "bra", "burt", "cap", "cer", "ch", "cha", "chaar", "chale", "chalo", "chil",
	"com", "da", "daa", "daaj", "dat", "de", "dee", "dhaa", "di", "die", "dik", "din", "diz", "do", "dos", "dosh", "durch", "eer", "ek", "er", "es", "fal", "fang", "fra", "fun", "ga", "gan", "gao", "gee", "geet", "gern", "gir", "gon", "gren", "gri", "gu", "guda", "ha", "haa", "hai", "hain", "har",
	"hat", "he", "hee", "heer", "hekt", "heu", "hit", "hn", "ho", "hua", "huk", "hul", "ich", "ig", "in", "isch", "ja", "jaa", "jad", "jan", "jao", "jar", "jas", "jee", "jiao", "jin", "jing ", "un", "ka", "kaha", "kana", "kar", "kara", "karo", "ke ", "kee", "keln", "kha", "khada", "khe", "khi", "ko",
	"koo", "ky", "la", "laa", "laat", "lad", "lada", "lana", "lane", "le", "lee", "leiden", "leis", "len", "lie", "lo", "maa", "maan", "mod ", "most", "muj", "mujhe", "mukt", "na", "naya", "ne", "nee", "net", "neta", "nir", "nka", "oon", "oop", "pa", "paa", "pet", "phen", "phot", "pi", "plo", "pra",
	"que", "ra", "raa", "rahe", "raho", "ran", "rana", "rar", "re", "ri", "rie", "rin", "ro", "rona", "rosh", "rtiv", "saa", "saal", "saath", "san", "santu", "sch", "se", "sen", "sh", "sha", "shee", "shi", "shn", "sht", "shuo", "soch", "sol", "soo", "ssa", "ster", "suk", "sur", "ta", "taan", "tak",
	"taka", "tal", "tan", "tar", "ten", "tend", "th", "tho", "tili", "to", "ton", "tr", "tu", "tum", "tung", "udaa", "ugr", "unge", "ut", "va", "vaa", "vaad", "vaib", "ve", "ven", "ver", "vi", "vis", "vol", "wic", "wu", "wut", "xi", "xiao", "ya", "yah", "yon", "you", "zas", "ze", "zhu", "zi", "zo", "zorn", "zt")

// Sign language
/datum/language/sign
	name = LANGUAGE_SIGN
	desc = "A signed version of English, though its intent is primarily to help out people who are deaf and mute, "
	speech_verb = list("signs")
	signlang_verb = list("signs", "gestures")
	sing_verb = null
	colour = "i"
	key = "4"
	flags = NO_STUTTER|SIGNLANG

// Helper
/proc/get_lang_name(var/datum/language/language)
	if (!language || !istype(language))
		return "Unknown"

	return language.name

/datum/language/aphasia
	name = LANGUAGE_GIBBERING
	desc = "It is theorized that any sufficiently brain-damaged person can speak this language."
	speech_verb = list("garbles")
	ask_verb = list("mumbles")
	whisper_verb = list("mutters")
	exclaim_verb = list("screams incoherently")
	sing_verb = list("gibbers")
	key = "gi"
	syllables = list("m","n","gh","h","l","s","r","a","e","i","o","u")
	space_chance = 20
	flags = RESTRICTED
