def arrayConversion(inputArray)
    n = 1
    while inputArray.length > 1
        array = []
        for i in (0..inputArray.length - 2)
            if n % 2 != 0 and i % 2 == 0
                array << inputArray[i] + inputArray[i + 1]
            end
            if n % 2 == 0 and i % 2 == 0
                array << inputArray[i] * inputArray[i + 1]
            end
        end
        inputArray = array
        n+= 1
    end
    inputArray[0]
end
