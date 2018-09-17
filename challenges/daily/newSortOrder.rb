def newSortOrder(d)
    n = []
    r = []
    for j in (0..d.length - 1)
        if d[j][0] == "X" && d[j][d[j].length - 1] == "X"
            d[j].slice!(0)
            d[j].slice!(d[j].length - 1)
            d[j].gsub!(/\d+/,"") if d[j] =~ /\d/
        end
        if d[j].include?("X") == false && d[j].length > 0
            d[j][0] =~ /[[:digit:]]/ ? n.push(d[j]) : r.push(d[j])
        end
    end
    r = r.sort
    n = n.sort
    for m in (9).downto(0)
        for l in (0..n.length - 1)
            r.push(n[l]) if n[l][0].to_i == m
        end
    end
    return r
end