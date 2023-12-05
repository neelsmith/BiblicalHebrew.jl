
"""Find hexadecimal string for an integer."""
function hex(i::UInt32)
    string(i, base = 16)
end

function hex(ch::Char)
    hex(codepoint(ch))
end

"""Find integer value of a hexadecimal string."""
function int(hexstr)
    parse(UInt32, hexstr, base = 16)
end

"""Find Unicode codepoint for a hexadecimal string."""
function cp(hexstr)
    int(hexstr) |> Char
end
