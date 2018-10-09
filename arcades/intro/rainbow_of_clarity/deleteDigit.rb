def deleteDigit(n)
    n = n.to_s
    max = n[1..-1].to_i
    for i in (1..n.length - 1)
        num = (n[0..i - 1] + n[i + 1..-1]).to_i
        max = num if num > max
    end
    max
end