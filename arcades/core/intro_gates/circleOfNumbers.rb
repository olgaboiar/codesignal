def circleOfNumbers(n, firstNumber)
    m = (n / 2) + firstNumber
    if m >= n
        m = m - n
    end
    return m
end