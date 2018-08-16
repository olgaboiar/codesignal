def spiralNumbers(n)
    array = Array.new(n) { Array.new(n, 0) } 
    num = 0
    len = array.length
    while n > 0
        # right
        for j in (0..array[(len - n).abs].length - 1)
            if array[(len - n).abs][j] == 0
                array[(len - n).abs][j] = num + 1
                num += 1
            end
        end
        # down
        for k in (1..len - 1)
            if array[k][n - 1] == 0
                array[k][n - 1] = num + 1
                num += 1
            end
        end
        # left
        for m in (n - 2).downto(0)
            puts m
            if array[n - 1][m] == 0
                array[n - 1][m] = num + 1
                num += 1
            end
        end
        # up
        for s in (n - 2).downto(0)
            if array[s][len - n] == 0
                array[s][len - n] = num + 1
                num += 1
            end
        end
        n -=1
    end
    return array
end