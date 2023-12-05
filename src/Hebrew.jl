module Hebrew

using Unicode



include("utils.jl")

include("consts.jl")
include("codepoints.jl")
include("phonology.jl")
include("vocalize.jl")



# This is not serious: just experiments
# prior to starting a separate package.
include("morphology/qal.jl")

end # module Hebrew
