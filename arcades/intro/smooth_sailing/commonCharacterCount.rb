def commonCharacterCount(s1, s2)
    c = 0
    for i in (0..s1.length - 1)
        for j in (0..s2.length - 1)
            if s1[i] == s2[j]
                c += 1
                s2 = s2.sub(s2[j], "")
                break
            end
        end
    end
    return c
    
end