def isInfiniteProcess(a, b)
    if (a - b - 1) % 2 == 0 or a > b
        return true
    end
    return false
end