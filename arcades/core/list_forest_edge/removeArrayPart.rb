def removeArrayPart(inputArray, l, r)
    return inputArray[r + 1..- 1] if l == 0
    inputArray[0..l - 1].concat(inputArray[r + 1..- 1])
end