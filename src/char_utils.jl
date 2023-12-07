#=
Convenience functions for:
    
- conversions across Chars, Ints and hex strings
- splitting strings into vectors of substrings
=#

"""Find hexadecimal string for an integer."""
function hex(i::UInt32)
    string(i, base = 16)
end


"""Compose hexadecimal string for integer value of `ch`."""
function hex(ch::Char)
    hex(codepoint(ch))
end

"""Find integer value of a hexadecimal string."""
function int(hexstr)::UInt32
    parse(UInt32, hexstr, base = 16)
end

"""Find Unicode codepoint for a hexadecimal string."""
function codept(hexstr)
    int(hexstr) |> Char
end


"""Split string `s` into substrings separated by character `c`;
if `keep` is true, also maintain `c` as a string in the resulting list.
"""
function codept_split(s, c::Char; keep = true)
    results = String[]
    current = Char[]
    for ch in s
        if ch == c
            if ! isempty(current) 
                push!(results, join(current))
            end
            if keep
                push!(results, string(ch))
            end
            current = []
        else
            push!(current, ch)
        end
    end
    if ! isempty(current)
        push!(results, join(current))
    end
    results
end