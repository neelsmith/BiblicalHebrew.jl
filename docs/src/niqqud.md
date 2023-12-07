```@setup niqqud
using Hebrew
```
# *Niqqud*

The Unicode specification defines combining characters for the system of vowel pointing (*niqqud*).

The `Hebrew` package defines character constants that can be used to refer to these values, and a parallel suite of functions for composing strings with these vowel points.

For example, add a *qamats* to an aleph:


```@example niqqud
pointed = Hebrew.qamats("א")
```

Check that the combining character has been added:

```@example niqqud
collect(pointed) #.|> codepoint .|> Char
```

You can chain these functions, as for example to compose *hateph* vowels:

```@example niqqud
hateph_seghol = Hebrew.sheva("א") |> Hebrew.seghol
collect(hateph_seghol)
```

There is also a suite of functions for adding accents and other marks, such as *metheg*.

```@example niqqud
qamats_metheg = Hebrew.qamats("א") |> Hebrew.metheg
collect(qamats_metheg)
```


## Functions for adding vowel points to strings


```@docs
Hebrew.qamats
Hebrew.patah
Hebrew.seghol
Hebrew.hiriq
Hebrew.tsere
Hebrew.qubbuts
Hebrew.holam
Hebrew.sheva
```


## Other accent marks

```@docs
Hebrew.metheg
Hebrew.ole
Hebrew.mappiq
Hebrew.gershe
Hebrew.maqaf_join
```
