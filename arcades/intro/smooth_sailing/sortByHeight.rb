def sortByHeight(a)
    nonTrees = []
    for i in (0..a.length - 1)
        if a[i] != -1
            nonTrees.push(a[i])
        end
    end
    nonTrees = nonTrees.sort.reverse
    puts nonTrees.join(", ")  
    for i in (0..a.length - 1)
        if a[i] != -1
            k = nonTrees.pop
            a[i] = k
        end
    end
    return a
end