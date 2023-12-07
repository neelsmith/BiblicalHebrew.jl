```@setup niqqud
using BiblicalHebrew
```
# *Niqqud*

The Unicode specification defines combining characters for the system of vowel pointing (*niqqud*).

The `BiblicalHebrew` package defines character constants that can be used to refer to these values, and a parallel suite of functions for composing strings with these vowel points.

For example, add a *qamats* to an aleph:


```@example niqqud
pointed = BiblicalHebrew.qamats("א")
```

Check that the combining character has been added:

```@example niqqud
collect(pointed) #.|> codepoint .|> Char
```

You can chain these functions, as for example to compose *hateph* vowels:

```@example niqqud
hateph_seghol = BiblicalHebrew.sheva("א") |> BiblicalHebrew.seghol
collect(hateph_seghol)
```

There is also a suite of functions for adding accents and other marks, such as *metheg*.

```@example niqqud
qamats_metheg = BiblicalHebrew.qamats("א") |> BiblicalHebrew.metheg
collect(qamats_metheg)
```


## Functions for adding vowel points to strings


```@docs
BiblicalHebrew.qamats
BiblicalHebrew.patah
BiblicalHebrew.seghol
BiblicalHebrew.hiriq
BiblicalHebrew.tsere
BiblicalHebrew.qubbuts
BiblicalHebrew.holam
BiblicalHebrew.sheva
```


## Other accent marks

```@docs
BiblicalHebrew.metheg
BiblicalHebrew.ole
BiblicalHebrew.mappiq
BiblicalHebrew.gershe
BiblicalHebrew.maqaf_join
```
