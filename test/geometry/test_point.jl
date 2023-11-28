using Test
include("../../src/geometry/point.jl")
include("../../src/geometry/distance.jl")

@testset "Point Tests" begin
    # test struct creation
    p = Point(1.0, 2.0)
    @test typeof(p) == Point

    # test struct fields
    @test p.x == 1.0
    @test p.y == 2.0

    # test index operations
    @test p[0] == 1.0
    @test p[1] == 2.0
    @test_throws ErrorException("Index out of bounds") p[3]

    # test string override
    @test string(p) == "(1.0, 2.0)"

    # test length override
    @test length(p) == 2

    # test equality
    p1 = Point(1.0, 2.0)
    p2 = Point(1.0, 2.0)
    @test p1 == p2

    # test inequality
    p1 = Point(1.0, 2.0)
    p2 = Point(2.0, 3.0)
    @test p1 != p2

    # test "less than"
    p1 = Point(1.0, 2.0)
    p2 = Point(2.0, 3.0)
    @test p1 < p2

    # test "greater than"
    p1 = Point(2.0, 3.0)
    p2 = Point(1.0, 2.0)

    # test "less or equal"
    p1 = Point(1.0, 2.0)
    p2 = Point(2.0, 3.0)
    @test p1 <= p2
    p1 = Point(2.0, 3.0)
    p2 = Point(2.0, 3.0)
    @test p1 <= p2

    # test "greater or eaqual
    p1 = Point(2.0, 3.0)
    p2 = Point(1.0, 2.0)
    @test p1 >= p2
    p1 = Point(2.0, 3.0)
    p2 = Point(2.0, 3.0)
    @test p1 >= p2

    # test distance operation
    p1 = Point(1.0, 2.0)
    p2 = Point(4.0, 6.0)
    @test distance(p1, p2) ≈ 5.0  # Default is euclidean distance
    @test distance(p1, p2, "euclidean") ≈ 5.0
    @test distance(p1, p2, "manhattan") == 7.0

end