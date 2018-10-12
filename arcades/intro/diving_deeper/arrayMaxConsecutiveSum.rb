def arrayMaxConsecutiveSum(inputArray, k)
    sum = 0
    for j in (0..k - 1)
        sum += inputArray[j]
    end
    max = sum
    for i in (1..inputArray.length - k)
        sum = sum - inputArray[i - 1] + inputArray[i + k - 1]
        max = sum if sum > max
    end
    max
end