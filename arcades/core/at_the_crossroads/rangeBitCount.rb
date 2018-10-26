def rangeBitCount(a, b)
    count = 0
    while a <= b
        a.to_s(2).split("").each do |s|
            count += 1 if s.to_i == 1
        end
        a += 1
    end
    count
end