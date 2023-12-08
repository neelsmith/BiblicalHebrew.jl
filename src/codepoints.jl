"""Compose a list of all defined codepoints in the Hebrew range of 
Unicode sorted in codepoint order."""
function validcps()
    keys(ucode_names) .|> cp |> sort
end

"""Reduce a string to consonantal representation by removing all pointing and accents."""
function unpointed(s)
    Unicode.normalize(s, stripmark = true)
end

"""Look up Unicode summary name for a codepoint in the Hebrew range of Unicode."""
function codept_name(ch::Char)
    hexval = codepoint(ch) |> hex
    hexval in keys(ucode_names) ? ucode_names[hexval] : "Not in Hebrew range of Unicode: $(ch)"
end

