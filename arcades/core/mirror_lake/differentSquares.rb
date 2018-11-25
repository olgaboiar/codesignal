def differentSquares(matrix)
    squares = []
    for i in (0..matrix.length - 2)
        for j in (0..matrix[0].length - 2)
            square = ''
            square << matrix[i][j]
            square << matrix[i][j + 1]
            square << matrix[i + 1][j]
            square << matrix[i + 1][j + 1]
            squares << square
        end
    end
       return squares.uniq.length     
end