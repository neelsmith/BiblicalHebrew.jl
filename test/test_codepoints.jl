@testset "Test Unicode code point sets" begin
    
    s  = "בְּרֵאשִׁ֖ית בָּרָ֣א אֱלֹהִ֑ים אֵ֥ת הַשָּׁמַ֖יִם וְאֵ֥ת הָאָֽרֶץ׃"

    grvect = Unicode.graphemes(s) |> collect
    @test length(grvect) == 35
end