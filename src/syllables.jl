"""True if a syllable is long.
$(SIGNATURES)
"""
function is_long(s::S)  where S <: AbstractString
    cplist = collect(s) 
    # end in seghol-he is short
    if cplist[end] == he_ch && seghol_ch in cplist
        false
    else
        tsere_ch in cplist || holam_ch in cplist || is_mater(s)
    end
end


"""True if a syllable has a reduced vowel.
$(SIGNATURES)
"""
function reduced_vowel(s::S)  where S <: AbstractString
    vowels = filter(c -> is_vowelpoint(c),s)
    sheva_ch in collect(s) && ! isempty(vowels)
end

"""True if a syllable has a sheva.
$(SIGNATURES)
"""
function has_sheva(s::S)  where S <: AbstractString
    vowels = filter(c -> is_vowelpoint(c),s)
    isempty(vowels) && sheva_ch in collect(s)
end

"""True if a syllable represents a *mater lectionis*.
$(SIGNATURES)
"""
function is_mater(s::S) where S <: AbstractString
    codepoints = collect(s)
    codepoints[end] in matres && has_vowelpoint(s)
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
    previous_long = false
    startidx = 1
    grs = graphemes(s) |> collect
    if has_sheva(grs[1])
        @info("Initial syllable with sheva")
        push!(syllables, grs[1])
        startidx = 2
    end
    @info("Grapheme list is $(grs[startidx:end])")
    for gr in grs[startidx:end]
        @info("=> Examining  $(gr)")
        
        consonant_seen = is_consonant(gr[1])
        if is_long(gr)
            @info("Grapheme with LONG vowel: $(gr): push current $(currentsyll) if not empty")
            if ! isempty(currentsyll) && have_vowel
                push!(syllables, join(currentsyll))
                currentsyll = []
            end
            @info("Syllables now at $(syllables)")
            have_vowel = true
            previous_long = true

        elseif has_sheva(gr) && previous_long
            @info("LOOK AT SHEVA: syllabic here")
            push!(syllables, join(currentsyll))
            currentsyll = []
            previous_long = false
            
        elseif has_vowelpoint(gr) # short vowel
            @info("What to do with short vowel syll? Next might be sheva...")
            #@info("Grapheme with vowel: $(gr): push current $(currentsyll) if not empty")
            #@info("But what's up with sheva?")
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
