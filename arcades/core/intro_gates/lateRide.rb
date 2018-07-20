def lateRide(n)
    h = n / 60
    m = n % 60
    h = h.to_s
    m = m.to_s
    r = h + m
    r = r.chars
    sum = 0
    for i in (0..r.length - 1)
        sum += r[i].to_i
    end
    return sum
end