def alphanumericLess(s1, s2)
    tok1, tok2 = [s1, s2].map do |s|
        s.chars.chunk_while do | c_before, c_after |
            (c_before + c_after).match? /\d\d/
        end.map(&:join)
    end
    p tok1
    p tok2
    p tok1.zip(tok2)
    tok1less = nil
    tok1.zip(tok2).each do |e1, e2|
        next if e1 == e2
        return false if e2.nil?
        if e1.match?(/\d/) && e2.match?(/\d/) # both numbers
            return true if e1.to_i < e2.to_i
            return false if e1.to_i > e2.to_i
            if tok1less.nil? && e1.length != e2.length
                tok1less = e1.length > e2.length
            end
        else
            return e1 < e2
        end
    end
    return true if tok1.length < tok2.length
    return false if tok1less.nil?
    tok1less
end
