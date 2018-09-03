def adjacentElementsProduct(inputArray)
    largest_product = inputArray[0] * inputArray[1]
    for i in (0..inputArray.length - 2)
        if inputArray[i].to_i * inputArray[i + 1].to_i > largest_product
            largest_product = inputArray[i].to_i * inputArray[i + 1].to_i
        end
        i += 1
    end
    return largest_product
end