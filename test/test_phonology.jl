@testset "Test phonological manipulation" begin
    s1 = "הַדְּבָרִ֗ים"

    expected_consonants = "הדברים"
    @test BiblicalHebrew.unpointed(s1) == expected_consonants

    expected_alphabetic = "הַדְבָרִים"
    @test BiblicalHebrew.rm_accents(s1) == expected_alphabetic
end