# Hebrew.jl



The type `HebrewOrthography` implements the `OrthographicSystem` interface of the `Orthography` package for Biblical Hebrew texts using the Hebrew range of Unicode.  (For more information about the Julia `Orthography` package, see [its documentation](https://hcmid.github.io/Orthography.jl/stable/)).


## Quick start

Create a `HebrewOrthography` object and use it to get metadata about the orthography, to validate strings, and to tokenize strings.

```@example tour
using Hebrew, Orthography
ortho = HebrewOrthography()
```

All 84 defined codepoints in the Unicode Hebrew ranges plus four white-space characters (space, `\n`, `\r` and `\n`) are valid in this orthography.

```@example tour
codepoints(ortho)
```

The orthography can identify three categories of token:

```@example tour
tokentypes(ortho)
```


- tokenizes characters as lexical, numeric or punctuation tokens. White space characters are thrown away in tokenization
- punctuation tokens are the punctuation character *soph pasuq*, and the character ....  
- numeric tokens are sequences of alphabetic characters followed by *geresh* (for single digits) or *gershayim* (for multi-digit numeric expressions)
- other indications of accent (*ole*, *raphe*, *metheg*, *athnah*), vowel pointing (*niqqud*) and consonants form lexical tokens


## Other orthography functions

Includes orthography functions to:


- identify codepoints as consonantal, niqqud, accent or punctuation
- strip away context-dependent accent markings (*athnah*)
- strip a string down to consonants and punctuation only
- label codepoints with Unicode text label