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

function harvesine_distance(lat1::Float64, lon1::Float64, lat2::Float64, lon2::Float64)
    earth_radius::Int64 = 6371  # earth radius in kilometers
    ϕ1::Float64 = deg2rad(lat1)
    ϕ2::Float64 = deg2rad(lat2)
    λ1::Float64 = deg2rad(lon1)
    λ2::Float64 = deg2rad(lon2)
    
    dϕ::Float64 = ϕ2 - ϕ1
    dλ::Float64 = λ2 - λ1

    sin_lat::Float64 = sin(dϕ / 2.0)
    sin_lon::Float64 = sin(dλ / 2.0)

    α::Float64 = (sin_lat)^2 + cos(ϕ1)*cos(ϕ2)*(sin_lon)^2
    c::Float64 = 2 * asin(min(1, sqrt(α)))
    c * earth_radius
end