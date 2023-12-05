
"""Find hexadecimal string for an integer."""
function hex(i::Int)
    string(i, base = 16)
end

"""Find integer value of a hexadecimal string."""
function int(hexstr)
    parse(Int, hexstr, base = 16)
end

"""Find Unicode codepoint for a hexadecimal string."""
function cp(hexstr)
    int(hexstr) |> Char
end
