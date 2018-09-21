def absoluteValuesSumMinimization(a)
    puts a.length
    if a.length % 2 != 0
        return a[a.length / 2]
        else
        return a[a.length / 2 - 1]
    end
end