def sumUpNumbers(inputString)
    num = ''
    sum = 0
    for i in (0..inputString.length - 1)
        if inputString[i] =~ /[0-9]/
            num += inputString[i]
            else
            sum += num.to_i
            num = ""
        end
    end
    sum += num.to_i if num.length > 0
    sum
end