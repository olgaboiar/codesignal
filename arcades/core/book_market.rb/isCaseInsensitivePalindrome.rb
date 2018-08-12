def isCaseInsensitivePalindrome(inputString)
    inputString = inputString.downcase
    n = inputString.length
    for i in (0..n/2)
        if inputString[i] != inputString[n-1-i]
            return false
        end
        i += 1
    end
    return true
end
