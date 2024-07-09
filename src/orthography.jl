
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
    sentences = codept_split(s, soph_pasuq_ch)
    nojoins = map(s -> codept_split(s, maqaf_ch), sentences) |> Iterators.flatten |> collect
    nojoins .|> tokenize_string |> Iterators.flatten |> collect
end


"""Tokenize a string `s` where `s` has already
isolated the token separators *maqaf* and *soph pasuq*.
This can be accomplished by feeding `s` to the `tokenize` function
with a `HebrewOrthography`.
"""
function tokenize_string(s, o::HebrewOrthography = HebrewOrthography())
    results = OrthographicToken[]
    tokenstrings = map(split(s)) do t
        grphms = graphemes(t) |> collect
        #@info("Last one is $(grphms[end]) so $(codepoint(grphms[end]))")
        if length(grphms) == 1
            @debug("LOOK at $(grphms[1])")
            if grphms[1] == string(maqaf_ch) 
                push!(results, OrthographicToken(grphms[1], PunctuationToken()))
            elseif grphms[1] == string(soph_pasuq_ch)
                push!(results, OrthographicToken(grphms[1], PunctuationToken()))
            else
                push!(results, OrthographicToken(grphms[1], LexicalToken()))
            end

        elseif endswith(grphms[end], gershe_ch) || endswith(grphms[end], gershayim_ch)
            s = join(grphms[1:end-1])
            push!(results, OrthographicToken(s, NumericToken()))
        else 
            s = join(grphms)
            push!(results, OrthographicToken(s, LexicalToken()))
        end
    end
    results
end

"""Implement `Orthography`'s codepoints functions for `HebrewOrthography`.

$(SIGNATURES)    
"""    
function codepoints(ortho::HebrewOrthography)
    vcat(ws_chars(), hebrew_chars())
end

"""Implement Orthography's tokentypes functions for `HebrewOrthography`.

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


"""Implement `validstring` function for `HebrewOrthography`.
True if every code point in `s` appears in the `HebrewOrthography`'s
values for `codepoints`.
"""
function validstring(s, ortho::HebrewOrthography)::Bool
    ok = true
    checkstring = join(codepoints(ortho), "") |> string 
    for cp in collect(s)  
        if ! occursin(cp, checkstring)
            ok = false
        end          
    end
    ok
end