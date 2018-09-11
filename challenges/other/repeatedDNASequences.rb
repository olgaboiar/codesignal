def repeatedDNASequences(s)
    tens = []
    result = []
    unique = []
    for i in (0..s.length - 9)
        j = s[i - 1..i + 8]
        tens.push(j) 
        if unique.include?(j) == true
            if result.include?(j) != true
                result.push(j)
            end
        else
            unique.push(j)
        end
    end
    result = result.sort
    return result
end