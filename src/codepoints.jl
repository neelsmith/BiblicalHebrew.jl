"""Compose a list of all defined codepoints in the Hebrew range of Unicode sorted in codepoint order.

$(SIGNATURES)
"""
function validcps()
    keys(ucode_names) .|> cp |> sort
end



"""Look up Unicode summary name for a codepoint in the Hebrew range of Unicode.

**Example**

```julia
julia> codept_name('ב')
"bet"
```
$(SIGNATURES)
"""
function codept_name(ch::Char)
    hexval = codepoint(ch) |> hex
    hexval in keys(ucode_names) ? ucode_names[hexval] : "Not in Hebrew range of Unicode: $(ch)"
end

