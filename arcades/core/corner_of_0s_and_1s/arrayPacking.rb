def arrayPacking(a)
    for i in (0..a.length - 1)
        a[i] = a[i].to_s(2)
        if a[i].length < 8
            a[i] = "0" * (8 - a[i].length) + a[i]
        end
    end
    a.reverse.join("").to_i(2)
end