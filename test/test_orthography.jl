@testset "Test `Orthography` interface" begin
    ortho = HebrewOrthography()
    expected = [LexicalToken, PunctuationToken, NumericToken]
    @test tokentypes(ortho) == expected
    
    charlist = codepoints(ortho)
    expectedcharcount = 88
    @test length(charlist) == 88
    # Should be sorted, so last char is gershayim
    @test charlist[end] == Hebrew.gershayim_ch
end 