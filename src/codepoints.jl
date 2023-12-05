"""Compose a list of all defined codepoints in the Hebrew range of 
Unicode sorted in codepoint order."""
function validcps()
    keys(ucode_names) .|> cp |> sort
end

function letter(ch::Char)

end

"""Remove pointing from `s`."""
function unpointed(s)
    Unicode.normalize(s, stripmark = true)
end


function cpname(ch::Char)
    hexval = codepoint(ch) |> hex
    hexval in keys(ucode_names) ? ucode_names[hexval] : "NOT FOUND: $(ch)"
end


function cpname(hex)

end

"""Return Unicode name for code point.
"""
function cpname(cp::Int)


end