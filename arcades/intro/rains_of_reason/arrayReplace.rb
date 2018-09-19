def arrayReplace(inputArray, elemToReplace, substitutionElem)
    for i in (0..inputArray.length - 1)
        if inputArray[i] == elemToReplace
            inputArray[i] = substitutionElem
        end
    end
    return inputArray
end