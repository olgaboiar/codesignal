def meanScores(s)
    a = []
    for i in (0..s.length - 1)
        a << (s[0..i].inject(:+)) /(i + 1)
    end
    a
end
