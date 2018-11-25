def integerToStringOfFixedWidth(number, width)
    n = number.to_s
    until n.length == width
        n = "0" + n if n.length < width
        n.slice!(0) if n.length > width
    end
    return n
end
