def almostIncreasingSequence(sequence)
    count = 0
    max = -10000000
    sec_max = -10000000
    for i in (0..sequence.length - 1)
        if sequence[i] > max
            sec_max = max
            max = sequence [i]
        elsif sequence[i] > sec_max
            max = sequence [i]
            count += 1
        else
            count += 1
        end
        
       i += 1 
    end
    if count < 2
        return true
    else
        return false
    end
end