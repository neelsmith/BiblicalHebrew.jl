
"""True if `s` begins with a guttural."""
function isguttural(s)
    chars = collect(s)
    chars[1] in gutturals
end
