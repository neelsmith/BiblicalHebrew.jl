@testset "Test toy models of generating morphology" begin
    triliteral = "קטל"
    actual = Hebrew.qal(triliteral,"3sm")
    expected = "קָטַל"
    @test actual == expected

end