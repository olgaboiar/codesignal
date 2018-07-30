def firstDuplicate(a)
    hashes = Hash.new(false)
    i = 0
    while i < a.length
        value = a[i]
        if hashes[value] == true
            return value
        else
            hashes[value] = true
        end
        i += 1
    end
    return -1
end