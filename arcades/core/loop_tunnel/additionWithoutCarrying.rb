def additionWithoutCarrying(param1, param2)
    res = ''
    param1 > param2 ? long = param1 : long = param2
    for i in (1..long.to_s.length)
        sum = param1.to_s[-i].to_i + param2.to_s[-i].to_i
        res = sum.to_s[-1] + res
    end
    res.to_i
end
