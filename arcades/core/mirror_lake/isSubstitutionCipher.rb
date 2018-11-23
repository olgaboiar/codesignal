def isSubstitutionCipher(a, b)
    m = {}
    a.chars.zip(b.chars).all? { |x, y|
        m[x] ? (m[x] == y) : (m[x] = y)
    } && !m.values.uniq!
end
