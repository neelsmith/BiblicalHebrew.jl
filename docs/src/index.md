# Hebrew.jl


## The `OrthographicSystem` interface

- implements the `OrthoraphicSystem` interface of the `Orthography` package
- valid characters are the following code points from the Unicode Hebrew range... plus the white space characters `[ \n, \r, \t]`
- tokenizes characters as lexical, numeric or punctuation tokens. White space characters are thrown away in tokenization
- punctuation tokens are the punctuation character *soph pasuq*, and the character ....  
- other indications of accent (*ole*, *raphe*, *metheg*, *athnah*), vowel pointing (*niqqud*) and consonants form lexical tokens


## Other orthography functions

Includes orthography functions to


- identify codepoints as consonantal, niqqud, accent or punctuation
- strip away context-dependent accent markings (*athnah*)
- strip a string down to consonants and punctuation only
- label codepoints with Unicode text label