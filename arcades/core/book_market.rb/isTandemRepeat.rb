def isTandemRepeat(inputString)
    return true if inputString[0..inputString.length / 2 - 1] == inputString[inputString.length / 2..- 1]
    return false
end
