@testset "Test phonological manipulation" begin
    s1 = "הַדְּבָרִ֗ים"

    expected_consonants = "הדברים"
    @test BiblicalHebrew.unpointed(s1) == expected_consonants

    expected_alphabetic = "הַדְּבָרִים"
    @test BiblicalHebrew.rm_accents(s1) == expected_alphabetic

    codepointlist = collect(s1)
  
    @test BiblicalHebrew.is_consonant(codepointlist[1])
    @test BiblicalHebrew.is_vowelpoint(codepointlist[1]) == false
    
    @test BiblicalHebrew.is_consonant(codepointlist[2]) == false
    @test BiblicalHebrew.is_vowelpoint(codepointlist[2])
    
    
    s2 = "תִּשְׁלְחוּ"
    expected_mappiq = "תִּשְׁלְחוּ"
    @test BiblicalHebrew.rm_accents(s2) == expected_mappiq


    s3 = "מִצְרָֽיְמָה"
    expected_metheg = "מִצְרָֽיְמָה"
    @test_broken BiblicalHebrew.rm_accents(s3) == expected_metheg
end