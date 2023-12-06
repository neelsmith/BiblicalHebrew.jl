
"""
An orthographic system for encoding Hebrew in Unicode.
"""    
struct HebrewOrthography <: OrthographicSystem
end


OrthographyTrait(::Type{HebrewOrthography}) = IsOrthographicSystem()


"""Implement Orthography's tokenize function for HebrewOrthography.

$(SIGNATURES)    
"""    
function tokenize(s::AbstractString, o::HebrewOrthography)
    s #tokenizeLiteraryGreek(s)
end

"""Implement Orthography's codepoints functions for LiteraryGreekOrthography.

$(SIGNATURES)    
"""    
function codepoints(ortho::HebrewOrthography)
    [] #ortho.codepoints
end

"""Implement Orthography's tokentypes functions for LiteraryGreekOrthography.

$(SIGNATURES)    
"""    
function tokentypes(ortho::HebrewOrthography)
    [] # ortho.tokencategories
end
    