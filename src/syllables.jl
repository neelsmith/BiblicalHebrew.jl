
"""True if a grapheme (a String value) represents a *mater lectionis*.
$(SIGNATURES)
"""
function is_mater(s::S) where S <: AbstractString
    codepoints = collect(s)
    codepoints[1] in matres && ! has_vowelpoint(s)
end

"""True if a grapheme (a String value) has a vowel point.
$(SIGNATURES)
"""
function has_vowelpoint(s)
    vowels = filter(c -> is_vowelpoint(c), s)
    ! isempty(vowels)
end


# Syllable is always a C + V
# Can be closed CVC or open CV
#  
"""Syllabify string.
$(SIGNATURES)
"""
function syllabify(s::S) where S <: AbstractString
    syllables = []
    currentsyll = []
    have_vowel = false
    for gr in graphemes(s) 
        @info("=> Examining $(gr)")
        
        consonant_seen = is_consonant(gr[1])
        if has_vowelpoint(gr)
            
            @info("Grapheme with vowel: $(gr): push current $(currentsyll) if not empty")
            @info("But what's up with sheva?")
            if ! isempty(currentsyll) && have_vowel
                push!(syllables, join(currentsyll))
                currentsyll = []
            end
            @info("Syllables now at $(syllables)")
            have_vowel = true
        elseif have_vowel && is_mater(gr)
            # Keep going!
            @info("This is the mater pattern.")
        elseif consonant_seen && is_consonant(gr[1]) && has_vowelpoint(gr)
            @info("Grapheme with second consonant: $(gr): push current $(currentsyll)")
            if ! isempty(currentsyll)
                push!(syllables, join(currentsyll))
                currentsyll = []
            end
            consonant_seen = is_consonant(gr[1])
        end
        
        push!(currentsyll, gr)
        @info("Current syll now $(currentsyll) and syllables $(syllables)")
    end
    if ! isempty(currentsyll)
        push!(syllables, join(currentsyll))
    end
    syllables
end
