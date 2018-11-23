def alphabetSubsequence(s)
    for i in (0..s.length - 2)
        return false if s[i].ord > s[i + 1].ord
        return false if s[i].ord == s[i + 1].ord
    end
    return true
end
