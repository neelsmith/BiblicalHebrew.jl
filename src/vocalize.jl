#=
Functions to simplify composing strings of Hebrew combining characters.
=#

## Niqqud

"""Add qamats to string `s`."""
function qamats(s)
    string(s, qamats_ch)
end

"""Add patah to string `s`."""
function patah(s)
    string(s, patah_ch)
end


"""Add seghol to string `s`."""
function seghol(s)
    string(s, seghol_ch)
end

"""Add sheva to string `s`."""
function sheva(s)
    string(s, sheva_ch)
end


## Accents and combining punctuation

"""Add metheg to string `s`."""
function metheg(s)
    string(s, metheg_ch)
end

"""Add accent ole to string `s`."""
function ole(s)
    string(s, ole_ch)
end

"""Add mappiq to string `s`."""
function mappiq(s)
    string(s, mappiq_ch)
end

"""Append gershe to string `s`."""
function gershe(s)
    string(s, gershe_ch)
end