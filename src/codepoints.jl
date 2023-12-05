"""Compose a list of all defined codepoints in the Hebrew range of 
Unicode sorted in codepoint order."""
function validcps()
    keys(ucode_names) .|> cp |> sort
end


function cpname(hex)
    
end

"""Return Unicode name for code point.
"""
function cpname(cp::Int)


end