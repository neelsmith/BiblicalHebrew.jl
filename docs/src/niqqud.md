```@setup niqqud
using BiblicalHebrew, Markdown
```
# *Niqqud*

The Unicode specification defines combining characters for the Tiberian vowel points (*niqqud*).

The `BiblicalHebrew` package defines character constants that can be used to refer to these values (see the complete list of constants in the section "APIs for all constants and functions" of this documentation. It also offers a parallel suite of functions for composing strings with the vowel points.

For example, add a *qamats* to an aleph:

```@example niqqud
pointed = BiblicalHebrew.qamats("א")
Markdown.parse("> pointed = " * pointed)
```


You can of course chain these functions. To compose *hateph* vowels, for example, use the `sheva` function, then a function for a vowel:

```@example niqqud
hateph_seghol = BiblicalHebrew.sheva("א") |> BiblicalHebrew.seghol
Markdown.parse("> hateph_seghol is " * hateph_seghol)
```

There is also a suite of functions for adding accents and other marks, such as *metheg*.

```@example niqqud
qamats_metheg = BiblicalHebrew.qamats("א") |> BiblicalHebrew.metheg
Markdown.parse("> qamats_metheg is " * qamats_metheg)
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
