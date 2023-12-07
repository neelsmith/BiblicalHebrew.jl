"""Compose a list of all defined codepoints in the Hebrew range of 
Unicode sorted in codepoint order."""
function validcps()
    keys(ucode_names) .|> cp |> sort
end

"""Remove pointing from `s`."""
function unpointed(s)
    Unicode.normalize(s, stripmark = true)
end

"""Look up Unicode summary name for codepoint."""
function codept_name(ch::Char)
    hexval = codepoint(ch) |> hex
    hexval in keys(ucode_names) ? ucode_names[hexval] : "NOT FOUND: $(ch)"
end

