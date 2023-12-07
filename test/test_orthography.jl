@testset "Test `Orthography` interface's definition of character sets" begin
    ortho = HebrewOrthography()
    expected = [LexicalToken, PunctuationToken, NumericToken]
    @test tokentypes(ortho) == expected
    
    charlist = codepoints(ortho)
    expectedcharcount = 88
    @test length(charlist) == 88
    # Should be sorted, so last char is gershayim
    @test charlist[end] == Hebrew.gershayim_ch


    @test validstring("Hi!", ortho) ==  false
    @test validstring("מֹשֶׁה֙", ortho) == true
end 


@testset "Test tokenization" begin
    ortho = HebrewOrthography()
    uno = string(Hebrew.aleph_ch, Hebrew.gershe_ch)
    tkns = tokenize(uno, ortho)
    @test length(tkns) == 1
    @test tkns[1].text == "א"
    @test tkns[1].tokencategory isa NumericToken

    s = string("מֹשֶׁה֙", " ", uno)
    tknlist = tokenize(s, ortho)
    @test length(tknlist) == 2
    @test tknlist[1].tokencategory isa LexicalToken
    @test tknlist[1].text == "מֹשֶׁה֙"

    @test tknlist[2].tokencategory isa NumericToken
    @test tknlist[2].text == "א"


    two_verses = """אֵ֣לֶּה הַדְּבָרִ֗ים אֲשֶׁ֨ר דִּבֶּ֤ר מֹשֶׁה֙ אֶל־כָּל־יִשְׂרָאֵ֔ל בְּעֵ֖בֶר הַיַּרְדֵּ֑ן בַּמִּדְבָּ֡ר בָּֽעֲרָבָה֩ מ֨וֹל ס֜וּף בֵּֽין־פָּארָ֧ן וּבֵֽין־תֹּ֛פֶל וְלָבָ֥ן וַחֲצֵרֹ֖ת וְדִ֥י זָהָֽב׃
    אַחַ֨ד עָשָׂ֥ר יוֹם֙ מֵֽחֹרֵ֔ב דֶּ֖רֶךְ הַר־שֵׂעִ֑יר עַ֖ד קָדֵ֥שׁ בַּרְנֵֽעַ׃ 
"""
    twoverse_tokens = tokenize(two_verses, ortho)
    verse_ends = filter(t -> t.text == "׃", twoverse_tokens)
    @test length(verse_ends) == 2
    @test map(t -> t.tokencategory, verse_ends)[1] isa PunctuationToken
end

@testset "Test tokenizing utilities" begin
    s = "abba"
    @test Hebrew.codept_split(s, 'b') == ["a", "b", "b", "a"]
    @test Hebrew.codept_split(s, 'a') == ["a", "bb", "a"]
end