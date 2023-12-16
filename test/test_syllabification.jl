@testset "Test syllabification" begin
    desert = "מִדְבָּר"
    desert_sylls = BiblicalHebrew.syllabify(desert)
    @test length(desert_sylls) == 2


    house = "בֵּית"
    house_sylls = BiblicalHebrew.syllabify(house)
    @test length(house_sylls) == 1
    @test house_sylls == [house]

 #=
    # Vocal sheva:
    s1 = "שְׁמוֹ"
    s1_sylls = BiblicalHebrew.syllabify(s1)
    @test_broken length(s1_sylls) == 2
   
    s2 = "שֹׁמְרִימ"
    @test_broken length(BiblicalHebrew.syllabify(s2)) == 3
    # Silent sheva:
    s3 = "יִשְׁמֹר"
    @test_broken length(BiblicalHebrew.syllabify(s3)) == 2
    s4 = "אַפְקִד"
    @test_broken length(BiblicalHebrew.syllabify(s4)) == 2
    s5 = "יִשְׁמְריּ"
    @test_broken length(BiblicalHebrew.syllabify(s5)) == 3
    s6 = "אֶקְתְליּ"
    @test_broken length(BiblicalHebrew.syllabify(s6)) == 3

    # Sheva with dagesh forte is vocal:
    s7 = "קִטְּלוּ"
    @test_broken length(BiblicalHebrew.syllabify(s7)) == 3
=#
end


@testset "Test matres lectionis" begin
    
end