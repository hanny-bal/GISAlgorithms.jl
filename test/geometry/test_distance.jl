using Test
include("../../src/geometry/point.jl")
include("../../src/geometry/distance.jl")

@testset "Harvesine distance tests" begin
    
    # Test cases with known distances
    # Test case 1: Innsbruck, Austria to Munich, Germany
    lat1 = 47.267222
    lon1 = 11.561111
    lat2 = 48.135125
    lon2 = 11.575439
    expected_distance = 96.5124

    distance = harvesine_distance(lat1, lon1, lat2, lon2)
    @test isapprox(distance, expected_distance; atol = 0.01)

    # Test case 2: New York City, USA to Los Angeles, USA
    lat1 = 40.712784
    lon1 = -74.006064
    lat2 = 34.052235
    lon2 = -118.243689
    expected_distance = 3935.7385

    distance = harvesine_distance(lat1, lon1, lat2, lon2)
    @test distance ≈ expected_distance

    # Test case 3: London, UK to Tokyo, Japan
    lat1 = 51.507222
    lon1 = -0.1275
    lat2 = 35.689506
    lon2 = 139.691711
    expected_distance = 9558.7194

    distance = harvesine_distance(lat1, lon1, lat2, lon2)
    @test distance ≈ expected_distance
end