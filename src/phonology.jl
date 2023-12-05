

"""True if `s` begins with a guttural."""
function isguttural(s)
    chars = collect(s)
    chars[1] in gutturals
end


"""True if initial consonant of `s` is a consonant in the begadhkephat."""
function is_begadhkephat(s)
    chars = collect(s)
    chars[1] in begadhkephat
end

"""Add dagesh to string `s`."""
function dagesh(s)
    # Only legal for bgdkft
    string(s, metheg_ch)
end
