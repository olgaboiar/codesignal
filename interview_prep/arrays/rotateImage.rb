def rotateImage(a)
    n = a.length
    new_a = []
    i = 0
    while i < n
        k = 0
        sub_a = []
        while k < n
            val =  a[n-1-k][i]
            sub_a.push(val)
            k += 1
        end
        new_a.push(sub_a)
        i += 1
    end
    return new_a
end