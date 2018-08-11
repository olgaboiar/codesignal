def countSumOfTwoRepresentations2(n, l, r)
    count = 0
    a = l
    while a <= r
        b = n - a
        if b >= a and b <= r
            count += 1
        end
        a += 1
    end
    count
end
