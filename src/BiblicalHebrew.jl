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

include("char_utils.jl")

include("consts.jl")
include("codepoints.jl")
include("phonology.jl")
include("vocalize.jl")
include("orthography.jl")
include("syllables.jl")



end # module BiblicalHebrew
