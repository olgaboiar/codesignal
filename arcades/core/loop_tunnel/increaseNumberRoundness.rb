def increaseNumberRoundness(n)
    for i in (1..n.to_s.length - 2)
        if n.to_s[i].to_i == 0
            for j in (i + 1..n.to_s.length - 1)
                return true if n.to_s[j].to_i != 0
            end
        end
    end
    return false
end