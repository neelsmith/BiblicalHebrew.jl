```@setup moreortho
using BiblicalHebrew
```
# Other functions for working with Hebrew orthography


The package includes a number of functions to simplify working with the orthography of Biblical Hebrew.

Find the Unicode label for a codepoint.

```@example moreortho
ch = 'ד'
BiblicalHebrew.codept_name(ch)
```

Reduce a string to a consonantal representation by stripping off accents and vocalization markings. Since the font used by Julia's `Documenter` package does not display these additional codepoints, we will verify that they in fact are present by checking the list of codepoints in the string.

Original pointed string:

```@example moreortho
s1 = "הַדְּבָרִ֗ים"
collect(s1) .|> codepoint .|> Char
```

Consonantal reduction:

```@example moreortho
stripped = BiblicalHebrew.unpointed(s1)
collect(stripped) .|> codepoint .|> Char
```

