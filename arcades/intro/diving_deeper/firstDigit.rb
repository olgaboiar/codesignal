def firstDigit(inputString)
    for i in (0..inputString.length - 1)
        if inputString[i] =~ /[[:digit:]]/
            return inputString[i]
        end
    end
end