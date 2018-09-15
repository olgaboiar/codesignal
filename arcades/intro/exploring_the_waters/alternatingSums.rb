def alternatingSums(a)
    r = []
    sum1 = 0
    sum2 = 0
    for i in (0..a.length - 1)
        if i.even?
            sum1 += a[i]
            else
            sum2 += a[i]
        end
    end
    r.push(sum1).push(sum2)
end