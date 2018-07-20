def phoneCall(min1, min2_10, min11, s)
    if s == min1
        call = 1
    elsif (min2_10 * 9) + min1 > s
        rem = s - min1
        call = rem / min2_10 + 1
        else
        rem = s - min1 - (min2_10 * 9)
        call = rem / min11 + 1 + 9
    end
    return call
end