def digitsProduct(product)
    return 10 if product == 0
    return product if product < 10
    arr = []
    n = 9
    while n > 1
        if product % n == 0
            product = product / n 
            arr.append(n)
            n = 10
        end
        n -= 1
    end
    return -1 if product != 1
    a = arr.sort
    s = a.join("").to_i
end