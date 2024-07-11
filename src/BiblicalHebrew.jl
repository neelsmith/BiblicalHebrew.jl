module BiblicalHebrew

using Unicode

using Orthography
import Orthography: OrthographyTrait
import Orthography: tokentypes 
import Orthography: codepoints 
import Orthography: tokenize
import Orthography: validstring

using Documenter, DocStringExtensions

export HebrewOrthography


export qamats, patah, seghol, hiriq, tsere, qubbuts, holam, sheva
export metheg
export unpointed


export dagesh, mappiq, ole
export gershe
export maqaf_join

export is_consonant, is_alphabetic, is_vowelpoint, is_guttural, is_begadkepat

export codept_name


include("char_utils.jl")

include("consts.jl")
include("codepoints.jl")
include("phonology.jl")
include("vocalize.jl")
include("orthography.jl")
include("syllables.jl")



end # module BiblicalHebrew
