def firstNotRepeatingCharacter(s)
    i = 0
    no_result = "_"
    hashes = Hash.new(false)
    while i < s.length
        value = s[i]
    
            if hashes[value] == true
                hashes[value] = 'repeating'
            elsif hashes[value] == 'repeating'
                
            else
                hashes[value] = true
            end
        
        
        i += 1
    end
    puts hashes
    if hashes.has_value?(true)
        return hashes.key(true)
    else
        return no_result
    end
end
