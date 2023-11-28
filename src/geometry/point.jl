####################################################
## Points
####################################################
struct Point
    x::Float64
    y::Float64
end

# override comparison operators
Base.:(==)(p1::Point, p2::Point) = p1.x == p2.x && p1.y == p2.y
Base.:(!=)(p1::Point, p2::Point) = !(p1 == p2)
Base.:(<)(p1::Point, p2::Point) = begin
    if p1.x < p2.x
        true
    elseif p1.x == p2.x && p1.y < p2.y
        true
    else 
        false
    end
end

Base.:(>)(p1::Point, p2::Point) = begin
    if p1.x > p2.x
        true
    elseif p1.x == p2.x && p1.y > p2.y
        true
    else 
        false
    end
end

Base.:(<=)(p1::Point, p2::Point) = begin
    if p1 < p2 || p1 == p2
        true
    else 
    false
end
end

Base.:(>=)(p1::Point, p2::Point) = begin
    if p1 > p2 || p1 == p2
        true
    else 
        false
    end
end

# override string and print operation
Base.string(p::Point) = "($(p.x), $(p.y))"
Base.show(p::Point) = "($(p.x), $(p.y))"
Base.print(p::Point) = "($(p.x), $(p.y))"

# override index operation
Base.getindex(p::Point, index::Int64) = begin
    if index == 0
        p.x
    elseif index == 1
        p.y
    else
        error("Index out of bounds")
    end
end

Base.length(p::Point) = 2