def houseNumbersSum(inputArray)
    res = 0
    i = 0
    until inputArray[i] == 0
        res += inputArray[i]
        i += 1
    end
    return res
end
