include("point.jl")

####################################################
## Distance Operations
####################################################
function distance(p1::Point, p2::Point, type::String = "euclidean")
    if type == "euclidean"
        sqrt((p1.x - p2.x)^2 + (p1.y - p2.y)^2)
    elseif type == "manhattan"
        abs(p1.x - p2.x) + abs(p1.y - p2.y)
    end
end