def differentSquares(matrix)
    arr = []
    for i in (0..matrix.length - 2)
        line = matrix[i]
        for j in (0..line.length - 2)
            square = matrix[i][j].to_s + matrix[i][j + 1].to_s + matrix[i + 1][j].to_s + matrix[i + 1][j + 1].to_s
            arr << square
        end
    end
    arr = arr.uniq
    return arr.length
end