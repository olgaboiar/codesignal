def lineEncoding(s)
    res = ''
    count = 1
    for i in (0..s.length - 1)
        if s[i] != s[i + 1]
            if count == 1
                res += s[i]
            else
                res += count.to_s + s[i]
            end
            count = 1
        else
            count += 1
        end
    end
    return res
end