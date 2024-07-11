#=
Functions to simplify composing strings of Hebrew that include Unicode combining characters.
=#

## Niqqud

"""Add qamats to string `s`.

**Example**
```julia-repl
julia> qamats("ב")
"בָ"
```

$(SIGNATURES)
"""
function qamats(s)
    string(s, qamats_ch)
end

"""Add patah to string `s`.

**Example**
```
julia> patah("ב")
"בַ"
```

$(SIGNATURES)
"""
function patah(s)
    string(s, patah_ch)
end


"""Add seghol to string `s`.

**Example**

```julia
julia> seghol("ב")
"בֶ"
```

$(SIGNATURES)
"""
function seghol(s)
    string(s, seghol_ch)
end



"""Add hiriq to string `s`.

**Example**

```julia
julia> hiriq("ב")
"בִ"
```

$(SIGNATURES)
"""
function hiriq(s)
    string(s, hiriq_ch)
end


"""Add tsere to string `s`.

**Example**

```julia
julia> tsere("ב")
"בֵ"
```


$(SIGNATURES)
"""
function tsere(s)
    string(s, tsere_ch)
end

"""Add qubbuts to string `s`.

**Example**

```julia
julia> qubbuts("ב")
"בֻ"
```
$(SIGNATURES)
"""
function qubbuts(s)
    string(s,qubbuts_ch)
end

"""Add holam to string `s`.

**Example**

```julia
julia> holam("ב")
"בֹ"
```

$(SIGNATURES)
"""
function holam(s)
    string(s,holam_ch)
end

"""Add sheva to string `s`.

**Example**

```julia
julia> sheva("ב")
"בְ"
```

$(SIGNATURES)
"""
function sheva(s)
    string(s, sheva_ch)
end



## Accents and combining punctuation

"""Add metheg to string `s`.

**Example**

```julia
julia> qamats("ב") |> metheg
"בָֽ"
```

$(SIGNATURES)
"""
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

"""Connect a list of tokens together with *maqaf*."""
function maqaf_join(v)
    join(v, maqaf_ch)
end