def isLucky(n)
    l = n.to_s.chars.length
    sum1 = 0
    sum2 = 0
    for i in (0..l / 2 - 1)
        sum1 += n.to_s.chars[i].to_i
    end
    for i in (l / 2..l)
        sum2 += n.to_s.chars[i].to_i
    end
    if sum1 == sum2
        return true
    end
    return false
end