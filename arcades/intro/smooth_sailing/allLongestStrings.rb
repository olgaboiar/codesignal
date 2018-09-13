def allLongestStrings(inputArray)
    longest = []
    len = 0
    for i in (0..inputArray.length - 1)
        if inputArray[i].length > len
            len = inputArray[i].length
            longest.clear
            longest.push(inputArray[i])
        elsif inputArray[i].length == len
            longest.push(inputArray[i])
        end     
    end
    return longest
end