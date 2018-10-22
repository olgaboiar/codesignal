def longestDigitsPrefix(inputString)
    prefix = []
    inputString.split('').each do |char|
        if char =~ /[[:digit:]]/
            prefix << char
            else
            break
        end
    end
    return prefix.join("")
end