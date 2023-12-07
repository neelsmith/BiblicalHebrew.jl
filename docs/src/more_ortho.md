```@setup moreortho
using Hebrew
```
# Other functions for working with Hebrew orthography


The package includes a number of functions to simplify working with the orthography of Biblical Hebrew.

Find the Unicode label for a codepoint.

```@example moreortho
ch = 'ד'
Hebrew.codept_name(ch)
```

Reduce a string to a consonantal representation by stripping off accents and vocalization markings.

!!! note "Verifying output"
    The font used by Julia's `Documenter` package does not display these additional codepoints, so we will verify that they in fact are present in the original string by checking the list of codepoints present.

Original pointed string:

```@example moreortho
s1 = "הַדְּבָרִ֗ים"
collect(s1) .|> codepoint .|> Char
```

Consonantal reduction:

```@example moreortho
stripped = Hebrew.unpointed(s1)
collect(stripped) .|> codepoint .|> Char
```

