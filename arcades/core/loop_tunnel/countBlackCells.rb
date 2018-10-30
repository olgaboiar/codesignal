def gcd(a, b)
    while b != 0
        temp = a
        a = b
        b = temp % b
    end
    return a
end

def countBlackCells(n, m)
    return n + m + gcd(n,m) - 2
end