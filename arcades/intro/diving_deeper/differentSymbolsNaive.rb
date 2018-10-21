def differentSymbolsNaive(s)
    unique = []
    for i in (0..s.length - 1)
        if unique.include?(s[i]) == false
            unique.push(s[i])
        end
    end
    unique.length    
end