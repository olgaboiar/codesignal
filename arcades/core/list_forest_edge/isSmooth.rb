def isSmooth(arr)
    if arr.length % 2 == 0
        middle = arr[arr.length / 2] + arr[arr.length / 2 - 1]
        else
        middle = arr[arr.length / 2]
    end
    return true if arr[0] == arr[-1] and arr[0] == middle
    return false
end

def knapsackLight2(weight1, weight2, maxW)
    return "none" if weight1 > maxW and weight2 > maxW
    return "both" if weight1 + weight2 <= maxW
    return "either" if weight1 <= maxW and weight2 <= maxW
    return "first" if weight1 <= maxW and weight2 > maxW
    return "second" if weight2 <= maxW and weight1 > maxW
end
def deleteWhitespaces(inputStr)
    inputStr = inputStr.gsub(" ", "")  
    return inputStr
end

def sumOfTheAngles(n)
    result = 180 * n
    result -= 180 * 2
end
