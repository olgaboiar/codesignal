def minesweeper(matrix)
    result = []
    for i in (0..matrix.length - 1)
        result.push([])
        for j in (0..matrix[i].length - 1)
            count = 0
            if i > 0
                if j > 0
                if matrix[i - 1][j - 1] == true
                    count += 1
                end
                end
                if matrix[i - 1][j] == true
                    count += 1
                end
                if matrix[i - 1][j + 1] == true
                    count += 1
                end
            end
            if i < matrix.length - 1
                if j > 0
                if matrix[i + 1][j - 1] == true
                    count += 1
                end
                end
                if matrix[i + 1][j] == true
                    count += 1
                end
                if matrix[i + 1][j + 1] == true
                    count += 1
                end
            end
            if j > 0
            if matrix[i][j - 1] == true
                count += 1
            end
            end
            if matrix[i][j + 1] == true
                count += 1
            end
            result[i].push(count)
        end
    end
    return result
end
