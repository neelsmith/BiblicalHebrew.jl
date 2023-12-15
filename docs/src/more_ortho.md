```@setup moreortho
using BiblicalHebrew
using Markdown
```
# Other functions for working with Hebrew orthography


The package includes a number of functions to simplify working with the orthography of Biblical Hebrew.

Find the Unicode label for a codepoint.

```@example moreortho
ch = 'ד'
BiblicalHebrew.codept_name(ch)
```


## Normalize or reduce string

Reduce a string to a consonantal representation by stripping off accents and vocalization markings. Since the font used by Julia's `Documenter` package does not display these additional codepoints, we will verify that they in fact are present by checking the list of codepoints in the string.

Original pointed string:

```@example moreortho
s1 = "הַדְּבָרִ֗ים"
Markdown.parse("> s1 = $(s1)")

```

Consonantal reduction:

```@example moreortho
stripped = BiblicalHebrew.unpointed(s1)
Markdown.parse("> Value of `stripped` is " * stripped)
```

Reduce a string to consonants and vowel points only by stripping off punctuation, accents or other cantillation marks.


```@example moreortho
accented = "בִלְהָ֛ה"
Markdown.parse("> accented = $(accented)")
```

Consonants and vowel points only:


```@example moreortho
unaccented = BiblicalHebrew.rm_accents(accented)
Markdown.parse("> Value of `unaccented` is " * unaccented)
```

## Test individual characters

Determine if individual characters in a String are consonants or vowe points in Biblical Hebrew.

```@example moreortho
codepoints = collect(s1)
BiblicalHebrew.is_consonant(codepoints[1])
```

```@example moreortho
BiblicalHebrew.is_vowelpoint(codepoints[1])
```
```@example moreortho
BiblicalHebrew.is_consonant(codepoints[2])
```
```@example moreortho
BiblicalHebrew.is_vowelpoint(codepoints[2])
```