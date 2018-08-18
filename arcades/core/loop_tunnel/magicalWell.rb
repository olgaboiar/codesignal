def magicalWell(a, b, n)
    sum = 0
    while n > 0
        sum += a * b
        a += 1
        b += 1
        n -= 1
    end
    sum
end