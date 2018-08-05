def compareEnv(a, b)
    r = []
    aH = Hash.new
    a.each do |e|        
        d = e.split("=")
        aH[d[0]] = d[1]
    end
    bH = Hash.new
    b.each do |e|        
        c = e.split("=")
        bH[c[0]] = c[1]
    end
    aH.each do |k, v|
        if bH.key?(k) == true
            r.push("#{k} is different") if bH[k] != v
        else
            r.push("#{k} is only in A")
        end
    end
    bH.each do |k, v|
        r.push("#{k} is only in B") if aH.key?(k) == false
    end
    r = r.sort
    return r
end
