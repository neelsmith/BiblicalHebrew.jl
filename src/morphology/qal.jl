function rootclass(verb)
    consonants = collect(unpointed(verb))
    if length(consonants) != 3
        @warn("Analysis only available for roots with 3 consonants")
        nothing
    elseif isguttural(consonants[1])
        :pe_guttural

    # handle others here....
    # pe-nun
    # ayin-guttural
    # lamed-guttural
    # lamed-aleph
    # pe-waw and pe-yod
    # ayin-waw and ayin-yod
    # lamed-he
    # double ayin
    # various doubly weak combos

    else
        :strong
    end

    # pe-guttural
end

function qal_perfect(root,form)
    verbclass = rootclass(root)    

    if verbclass == :strong
        qal_perfect_strong(root, form)
    else
        @warn("Verb class $(verbclass) not yet implemented")
        nothing
    end

end

function qal_perfect_strong(root, form)
    consonants = collect(unpointed(root))

    if form == "3sm"
        string(qamats(consonants[1]), patah(consonants[2]), consonants[3])
    elseif form == "3sf"
        string(qamats(consonants[1]) |> metheg, sheva(consonants[2]), qamats(consonants[3]), he_ch)
    else
        @warn("Form $(form) not recognized or not yet implemented.")
    end
end