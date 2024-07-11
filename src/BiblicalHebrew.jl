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
export dagesh, mappiq
export gershe


export codept_name
export unpointed

include("char_utils.jl")

include("consts.jl")
include("codepoints.jl")
include("phonology.jl")
include("vocalize.jl")
include("orthography.jl")
include("syllables.jl")



end # module BiblicalHebrew
