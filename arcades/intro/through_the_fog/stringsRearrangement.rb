def stringsRearrangement(inputArray)
    a = inputArray.permutation.to_a
    neg = 0
    for i in (0..a.length - 1)
        seg = a[i]
        counts = []
        for j in (0..seg.length - 2)
            x = seg[j]
            y = seg[j + 1]
            count = 0
            for k in (0..x.length - 1)
                if x[k] != y[k]
                    count += 1
                end
            end
            counts.push(count)
            
        end
        if counts[0] == 0
            return false
        end
        all = true
        for m in (0..counts.length - 2)
            if counts[m] != counts[m + 1]
                all = false
            end
            if counts[m] != 1
                all = false
            end
        end
        if all == true
            return true
        end
    end
    return false
end