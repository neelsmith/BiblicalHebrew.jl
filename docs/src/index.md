# BiblicalHebrew.jl

## The `OrthographicSystem` interface

The type `HebrewOrthography` implements the `OrthographicSystem` interface (from the `Orthography` package) for Biblical Hebrew texts written with the Hebrew range of Unicode.  (For more information about the Julia `Orthography` package, see [its documentation](https://hcmid.github.io/Orthography.jl/stable/)).

Create a `HebrewOrthography` object and use it to get metadata about the orthography, to validate strings, and to tokenize strings.

```@example tour
using BiblicalHebrew, Orthography
ortho = HebrewOrthography()
```

!!! warning "Limitations in Documenter's Unicode display"
    Many code points in the Hebrew range of Unicode don't display at all in the font used by Julia's `Documenter` package.  These include all the vowel pointing (*niqqud*), and many of the punctuation and accent marks.  All the code examples in this documentation produce output with fully pointed and accented Hebrew, even if it is not displayed legibly here.



## Valid characters

All 84 defined codepoints in the Unicode Hebrew range plus four white-space characters (space, `\n`, `\r` and `\n`) are valid in this orthography.

```@example tour
codepoints(ortho)
```

Test whether a string is valid in this orthography:

```@example tour
validstring("בֵּֽין־פָּארָ֧ן", ortho)
```

```@example tour
validstring("Hi, בֵּֽין־פָּארָ֧ן", ortho)
```

## Tokenization


The orthography can identify three categories of token:

```@example tour
tokentypes(ortho)
```

Tokenization associates a string value with a token category. Since punctuation like *maqaf* doesn't display properly in this documentation, we'll compose a string using the package's `maqaf_join` function to create a construct chain.

```@example tour
s1 = "בֵּֽין"
s2 = "פָּארָ֧ן"
construct = BiblicalHebrew.maqaf_join([s1,s2])
tokens = tokenize(construct, ortho)
```

Even if we can't see the *maqaf* in the resulting display, we can verify that the text value of punctuation token in this example in fact has the correct string by checking that its Unicode codepoint is in fact `05be`, the *maqaf*.

```@example tour
maqaf_string =  tokens[2].text
maqaf_string[1] |> codepoint
```

Numeric tokens are followed by *gershe* or *gershayim*. To compose a string for the numeric value 1, the following example passes a named character constant as a parameter to the package's `gershe` function to append a *gershe* to it.


```@example tour
aleph = string(BiblicalHebrew.aleph_ch)
one = BiblicalHebrew.gershe(aleph)
tokenize(one, ortho)
```

