def makeArrayConsecutive2(statues)
    sorted = statues.sort
    count = 0
    for i in (0..sorted.length - 2)
        if sorted[i] + 1 != sorted[i + 1]
            diff = sorted[i+1] - sorted[i]
            count = count + (diff -1)
        end
       i += 1 
    end
    return count
end