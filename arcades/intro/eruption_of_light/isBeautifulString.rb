def isBeautifulString(inputString)
    myhash = {}
    inputString.split("").each do |char|
        if myhash.key?(char)
            myhash[char] += 1
            else
            myhash[char] = 1
        end
    end
    myarray = myhash.keys.sort
    array = ('a'..'z').to_a
    return false if myarray.length == 1 and myarray[0] != 'a'
    for i in (0..myarray.length - 2)
        return false if myarray[i] != array[i]
        if myhash[myarray[i+1]] > myhash[myarray[i]]
            return false
        end
        return false if myarray[i + 1] != array[i + 1]
    end
    return true
end