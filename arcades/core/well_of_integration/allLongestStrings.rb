def allLongestStrings(inputArray)
    max = 0
    res = []
    for i in (0..inputArray.length - 1)
        if inputArray[i].length > max
            res = []
            max = inputArray[i].length
        end
        res << inputArray[i] if inputArray[i].length == max
    end
    return res
end
