def areSimilar(a, b)
    return true if a == b
    sub = []
    tot = 0
    for i in (0..a.length)
        if a[i] != b[i]
            tot += 1
            return false if tot > 2
            sub << a[i]
            sub << b[i]
            
        end
    end
    puts sub.join("=")
    return true if sub.uniq.length == 2
    return false
end