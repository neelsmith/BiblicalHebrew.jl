module Hebrew

using Unicode

using Orthography
import Orthography: OrthographyTrait
import Orthography: tokentypes 
import Orthography: codepoints 
import Orthography: tokenize

include("utils.jl")

include("consts.jl")
include("codepoints.jl")
include("phonology.jl")
include("vocalize.jl")



# This is not serious: just experiments
# prior to starting work on Luhot.jl.
include("morphology/qal.jl")
include("morphology/verbs.jl")

end # module Hebrew
