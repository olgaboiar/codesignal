def amendTheSentence(s)
    s = s.chars
    for i in (0..s.length)
        if ('A'..'Z').include?(s[i])
            s[i] = " " + s[i].downcase
        end
    end
    return s.join("").lstrip
end