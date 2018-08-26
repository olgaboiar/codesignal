def knapsackLight(value1, weight1, value2, weight2, maxW)
    if weight1 + weight2 <= maxW
        return value1 + value2
    elsif weight1 > maxW and weight2 > maxW
        return 0
    else
        if weight1 > maxW
            return value2
        elsif weight2 > maxW
            return value1
        else
            if value1 > value2
                return value1
                else
                return value2
            end
        end
    end
end
