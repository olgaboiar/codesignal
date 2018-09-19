def evenDigitsOnly(n)
    fl = true
    n = n.to_s
    for i in (0..n.length - 1)
        if n[i].to_i % 2 != 0
            fl = false
        end
    end
    return fl
end