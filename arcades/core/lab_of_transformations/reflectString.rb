def reflectString(inputString)
    for i in (0..inputString.length - 1)
        inputString[i] = ("z".ord - (inputString[i].ord - "a".ord)).chr
    end
    inputString
end