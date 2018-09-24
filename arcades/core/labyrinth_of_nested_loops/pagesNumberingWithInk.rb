def pagesNumberingWithInk(current, numberOfDigits)
    current -= 1
    while numberOfDigits > 0
        current += 1
        numberOfDigits -= current.to_s.length
    end
    return current - 1 if numberOfDigits < 0
    current
end