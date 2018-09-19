def alphabeticShift(inputString)
    alp = []
    ("a".."z").each do |let|
        alp.push(let)
    end
    for i in (0..inputString.length - 1)
        if inputString[i] == "z"
            inputString[i] = "a"
            else
        x = alp.find_index(inputString[i])
        inputString[i] = alp[x + 1]
        end
    end
    inputString
end