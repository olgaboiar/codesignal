def arithmeticExpression(a, b, c)
    if a + b == c or a - b == c or a * b == c or (a.to_f / b) == c
        return true
        else
        return false
    end
end