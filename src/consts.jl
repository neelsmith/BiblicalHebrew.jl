# Named constants for the Unicode codepoints representing consonants:
"Unicode codepoint for aleph as a `Char`."
const aleph_ch = Char(0x000005d0)
"Unicode codepoint for bet as a `Char`."
const bet_ch = Char(0x000005d1)
"Unicode codepoint for gimel as a `Char`."
const gimel_ch = Char(0x000005d2)
"Unicode codepoint for dalet as a `Char`."
const dalet_ch = Char(0x000005d3)
"Unicode codepoint for he as a `Char`."
const he_ch = Char(0x000005d4)
"Unicode codepoint for vav as a `Char`."
const vav_ch = Char(0x000005d5)
"Unicode codepoint for zayin as a `Char`."
const zayin_ch = Char(0x000005d6)
"Unicode codepoint for het as a `Char`."
const het_ch = Char(0x000005d7)
"Unicode codepoint for tet as a `Char`."
const tet_ch = Char(0x000005d8)
"Unicode codepoint for yod as a `Char`."
const yod_ch = Char(0x000005d8)
"Unicode codepoint for final kaph as a `Char`."
const kaph_final_ch = Char(0x000005da)
"Unicode codepoint for kaph as a `Char`."
const kaph_ch = Char(0x000005db)
"Unicode codepoint for lamed as a `Char`."
const lamed_ch = Char(0x000005dc)
"Unicode codepoint for final mem as a `Char`."
const mem_final_ch = Char(0x000005dd)
"Unicode codepoint for mem as a `Char`."
const mem_ch = Char(0x000005de)
"Unicode codepoint for final nun as a `Char`."
const nun_final_ch = Char(0x000005df)
"Unicode codepoint for mem as a `Char`."
const nun_ch = Char(0x000005e0)
"Unicode codepoint for samekh as a `Char`."
const samekh_ch = Char(0x000005e1)
"Unicode codepoint for ayin as a `Char`."
const ayin_ch = Char(0x000005e2)
"Unicode codepoint for final pe as a `Char`."
const pe_final_ch = Char(0x000005e3)
"Unicode codepoint for pe as a `Char`."
const pe_ch = Char(0x000005e4)
"Unicode codepoint for final tsadi as a `Char`."
const tsadi_final_ch = Char(0x000005e5)
"Unicode codepoint for pe as a `Char`."
const tsadi_ch = Char(0x000005e6)
"Unicode codepoint for qof as a `Char`."
const qof_ch = Char(0x000005e7)
"Unicode codepoint for resh as a `Char`."
const resh_ch = Char(0x000005e8)
"Unicode codepoint for sin/shin grapheme as a `Char`."
const sin_shin_ch = Char(0x000005e9)
"Unicode codepoint for tav as a `Char`."
const tav_ch = Char(0x000005ea)

## Allow these characters when stripping down to consonants + vowel point representation:
"Unicode codepoint for dagesh as a `Char`."
const dagesh_ch = Char(0x000005bc)
"Unicode codepoint for mappiq as a `Char`."
const mappiq_ch = Char(0x000005bc) # Yes, they're the same Unicode code point!
"Unicode codepoint for shin dot as a `Char`."
const shin_dot_ch = Char(0x000005c1)
"Unicode codepoint for sin dot as a `Char`."
const sin_dot_ch = Char(0x000005c2)

"String combining Unicode codepoint for sin/shin with shin dot."
const shin = string(sin_shin_ch, shin_dot_ch)
"String combining Unicode codepoint for sin/shin with sin dot."
const sin = string(sin_shin_ch, sin_dot_ch)

"Vector of the begadkepat letters as `Char`s."
const begadkepat = [bet_ch, gimel_ch, dalet_ch, kaph_final_ch, kaph_ch, pe_final_ch, pe_ch, tav_ch]

"Vector of the guttural consonants as `Char`s."
const gutturals = [aleph_ch, he_ch, het_ch, ayin_ch]

"Vector of all consonants as `Char`s."
const consonants = collect(aleph_ch:tav_ch)

# Vowel points:
"Unicode codepoint for qamats as a `Char`."
const qamats_ch = Char(0x000005b8)
"Unicode codepoint for patah as a `Char`."
const patah_ch = Char(0x000005b7)
"Unicode codepoint for seghol as a `Char`."
const seghol_ch = Char(0x000005b6)
"Unicode codepoint for hiriq as a `Char`."
const hiriq_ch = Char(0x000005b4)
"Unicode codepoint for tsere as a `Char`."
const tsere_ch = Char(0x000005b5)
"Unicode codepoint for qubbuts as a `Char`."
const qubbuts_ch = Char(0x000005bb)
"Unicode codepoint for holam as a `Char`."
const holam_ch = Char(0x000005b9)
"Unicode codepoint for sheva as a `Char`."
const sheva_ch = Char(0x000005b0)
"Unicode codepoint for metheg as a `Char`."
const metheg_ch = Char(0x000005bd) 

"Vector of all Unicode combining codepoints for vowel markings as `Char`s."
const nequddot = [
    qamats_ch, patah_ch, seghol_ch, 
    hiriq_ch, tsere_ch,qubbuts_ch, holam_ch,
    sheva_ch, 
    metheg_ch 
]

# Accents:
"Unicode codepoint for ole accent as a `Char`."
const ole_ch = Char(0x000005ab) 
# raphe
# athnah



# For marking numbers:
"Unicode codepoint for single number marker *gershe* as a `Char`."
const gershe_ch = Char(0x000005f3) 
"Unicode codepoint for multiple-digit number marker *gershayim* as a `Char`."
const gershayim_ch = Char(0x000005f4) 

# Token breakers:
const soph_pasuq_ch = Char(0x000005c3) 
const maqaf_ch = Char(0x000005be)

ucode_names = Dict(
    "591" => "etnatha",
    "592" => "segol",
    "593" => "shalshelet",
    "594" => "zaqef qatan",
    "595" => "zaqef gadol",
    "596" => "tipeha",
    "597" => "revia",
    "598" => "zarqa",
    "599" => "pashta",
    "59a" => "yetiv",
    "59b" => "tevir",
    "59c" => "geresh",
    "59d" => "geresh muqdam",
    "59e" => "gershayim",
    "59f" => "qarney para",

    "5a0" => "telisha gedola",
    "5a1" => "pazer",
    "5a2" => "atnah hafukh",
    "5a3" => "munah",
    "5a4" => "mahapakh",
    "5a5" => "merkha",
    "5a6" => "merkha kefula",
    "5a7" => "darga",
    "5a8" => "qadma",
    "5a9" => "telisha qetana",
    "5aa" => "yerah ben yomo",
    "5ab" => "ole", 
    "5ac" => "iluy",
    "5ad" => "dehi",
    "5ae" => "zinor",
    "5af" => "masora circle",

    "5b0" => "sheva",
    "5b1" => "hataf segol",
    "5b2" => "hataf patah",
    "5b3" => "hataf qamats",
    "5b4" => "hiriq", 
    "5b5" => "tsere",
    "5b6" => "segol",
    "5b7" => "patah",
    "5b8" => "qamats", 
    "5b9" => "holam",
    "5ba" => "holam haser",
    "5bb" => "qubuts", 
    "5bc" => "dagesh or mapiq",
    "5bd" => "metheg",
    "5be" => "maqaf",
    "5bf" => "rafe",

    "5c0" => "paseq",
    "5c1" => "shin dot",
    "5c2" => "sin dot",
    "5c3" => "sof pasuq",
    "5c4" => "upper dot",
    "5c5" => "lower dot",
    "5c6" => "nun hafukha",
    "5c7" => "qamats qatan",

    "5d0" => "alef",
    "5d1" => "bet",
    "5d2" => "gimel",
    "5d3" => "dalet",
    "5d4" => "he",
    "5d5" => "vav",
    "5d6" => "zayin",
    "5d7" => "het",
    "5d8" => "tet",
    "5d9" => "yod",
    "5da" => "final kaf",
    "5db" => "kaf",
    "5dc" => "lamed",
    "5dd" => "final mem",
    "5de" => "mem",
    "5df" => "final nun",
    "5e0" => "nun",
    "5e1" => "samekh",
    "5e2" => "ayin",
    "5e3" => "final pe",
    "5e4" => "pe",
    "5e5" => "final tsadi",
    "5e6" => "tsadi",
    "5e7" => "qof",
    "5e8" => "resh",
    "5e9" => "shin",
    "5ea" => "tav",

    "5f3" => "geresh",
    "5f4" => "gershayim"

)