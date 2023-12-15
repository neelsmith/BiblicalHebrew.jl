

"""True if `s` begins with a guttural."""
function isguttural(s)
    chars = collect(s)
    chars[1] in gutturals
end


"""True if initial consonant of `s` is a consonant in the begadkepat."""
function is_begadkepat(s)
    chars = collect(s)
    chars[1] in begadkepat
end

"""Add dagesh to string `s`."""
function dagesh(s)
    # Only legal for bgdkft
    string(s, dagesh_ch)
end



"""Reduce a string to consonantal representation by removing all pointing and accents."""
function unpointed(s)
    Unicode.normalize(s, stripmark = true)
end


function rmaccents(s)
    filter(c -> , s)
end