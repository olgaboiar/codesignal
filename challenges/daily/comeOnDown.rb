def comeOnDown(m, b)
    b.push(0).push(m)
    b = b.sort
    d = 0
    n = b.length
    for i in (0..n - 2)
        if b[i + 1] <= m
            if b[i + 1] - b[i] > d
                d = b[i + 1] - b[i]
                my = b[i] + 1
            end
        end
    end
    
    my = m if b.include?(my)
        
    my = b[n - 2] + 1 if m - b[n - 2] == d
    
    return my
end