def messageFromBinaryCode(code)
    res = ''
    for i in (1..code.length / 8)
        res += (code[(i - 1) * 8..8 * i - 1]).to_i(2).chr
    end
    res
end