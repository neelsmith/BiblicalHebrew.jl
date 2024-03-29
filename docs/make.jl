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

using Documenter, DocStringExtensions, BiblicalHebrew


makedocs(
    sitename="BiblicalHebrew.jl",
    pages = [
            "BiblicalHebrew.jl" => "index.md",  
            "Other functions for working with Hebrew orthography" => "more_ortho.md",
            "Working with vowel points (niqqud)" => "niqqud.md",
            "Syllabification" => "syllables.md",
            "Generic utility functions" => "utils.md",
            "APIs for all constants and functions" => "autodocs.md"
    ],
    )

deploydocs(
    repo = "github.com/neelsmith/BiblicalHebrew.jl.git",
)
