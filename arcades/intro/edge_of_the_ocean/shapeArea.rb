def shapeArea(n)
    if n == 1
        return 1
    else
        return ((2 * n - 1) * (2 * n - 1) + 1) / 2
    end
end