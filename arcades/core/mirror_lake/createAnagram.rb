def createAnagram(s, t)
    count = 0
    for i in (0..t.length - 1)
        if s.include?(t[i])
            s = s.sub(t[i], "")
            else
            count += 1
        end
    end
    count
end