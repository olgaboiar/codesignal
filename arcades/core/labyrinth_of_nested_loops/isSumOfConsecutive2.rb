def isSumOfConsecutive2(n)
    count = 0
    for i in (1..n)
        sum = i
        for j in (i + 1..n)
            sum += j
            if sum == n
                count += 1
            end
        end
    end
    count
end