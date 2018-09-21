def extractEachKth(inputArray, k)
    res = []
    for i in (0..inputArray.length - 1)
        if (i + 1) % k != 0
            res.push(inputArray[i])
        end
    end
    res
end