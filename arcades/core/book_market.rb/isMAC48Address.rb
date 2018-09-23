def isMAC48Address(inputString)
    return false if inputString.length != 17
    for i in (0..inputString.length - 1)
        if (i + 1) % 3 == 0
            return false if inputString[i] != "-"
        else
            if inputString[i] =~ /^[0-9A-F]/
                else
                return false
            end
        end
    end
    return true

end
