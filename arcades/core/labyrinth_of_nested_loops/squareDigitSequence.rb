@arr = []
def squareDigitsSequence(a0)
    @arr << a0
    temp = 0
    for i in (0..a0.to_s.length - 1)
        temp += a0.to_s[i].to_i ** 2
    end
    return @arr.length + 1 if @arr.include?(temp)
    squareDigitsSequence(temp)
end