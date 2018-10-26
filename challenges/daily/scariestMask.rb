def scariestMask(mask)
    count = 0
    for i in (0..mask.length - 1)
        row = mask[i]
        for j in (0..row.length / 2 - 1)
            if row[j] != row[row.length - 1 - j]
                count += 1
            end
        end
    end
    count
end