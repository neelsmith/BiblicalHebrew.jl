module Hebrew

using Unicode

using Orthography
import Orthography: OrthographyTrait
import Orthography: tokentypes 
import Orthography: codepoints 
import Orthography: tokenize

using Documenter, DocStringExtensions

export HebrewOrthography

include("utils.jl")

include("consts.jl")
include("codepoints.jl")
include("phonology.jl")
include("vocalize.jl")
include("orthography.jl")



end # module Hebrew
