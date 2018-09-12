def matrixElementsSum(matrix)
    sum = 0
    banned = []
    for i in (0..matrix.length - 1)
        row = matrix[i]
        for j in (0..row.length - 1)
            if row[j] == 0
                banned.push(j)
            elsif banned.index(j) == nil
                sum += row[j]
            end
            j += 1
        end
        i += 1
    end
    return sum
end