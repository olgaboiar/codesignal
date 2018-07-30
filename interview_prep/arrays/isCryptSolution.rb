def isCryptSolution(crypt, solution)
    m = solution.map.to_h
    crypt.each {|x| 
        for i in (0..x.length - 1)
            if m.include?(x[i])
                x[i] = m[x[i]]
            end
            
        end
        if x.length > 1 and x[0].to_i == 0
            return false
        end
        }
    puts crypt.join(", ")
    if crypt[0].to_i + crypt[1].to_i == crypt[2].to_i
        return true
        else
        return false
    end
end