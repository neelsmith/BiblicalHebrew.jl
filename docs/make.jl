# Run this from repository root, e.g. with
# 
#    julia --project=docs/ docs/make.jl
#
# Run this from repository root to serve:
#
#   julia -e 'using LiveServer; serve(dir="docs/build")'
#
using Pkg
Pkg.activate(".")
Pkg.instantiate()

using Documenter, DocStringExtensions, Hebrew


makedocs(
    sitename="Hebrew.jl",
    pages = [
            "User's guide" => "index.md",  
            "API" => "apis.md",
            "Comprehensive autodocs" => "auto.md"
    ],
    )

deploydocs(
    repo = "github.com/neelsmith/Hebrew.jl.git",
)
