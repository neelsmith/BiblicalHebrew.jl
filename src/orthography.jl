
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
    
    tokenstrings = map(split(s)) do t
        
    end
    

    #OrthographicToken(normed, LexicalToken())
end

"""Implement Orthography's codepoints functions for LiteraryGreekOrthography.

$(SIGNATURES)    
"""    
function codepoints(ortho::HebrewOrthography)
    vcat(ws_chars(), hebrew_chars())
end

"""Implement Orthography's tokentypes functions for LiteraryGreekOrthography.

$(SIGNATURES)    
"""    
function tokentypes(ortho::HebrewOrthography)
    [
        Orthography.LexicalToken,
        Orthography.PunctuationToken,
        Orthography.NumericToken
    ]
end
    
"""Whitespace characters accepted in this orthography"""
function ws_chars()
    [' ', '\n', '\t', '\r'] |> sort
end

"""Compose a list of all defined characters in the Hebrew
range of Unicode as `Char`s, sorted in Unicode order.
"""
function hebrew_chars()
    map(s -> parse(Int, s, base = 16), keys(ucode_names).|> string |> sort)  .|> Char
end