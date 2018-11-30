def newNumeralSystem(number)
    n = number.ord - 65
    i = 0
    ans = []
    until i > n / 2
        an = ''
        an += (i + 65).chr
        an += ' + '
        an += ((n - i) + 65).chr
        i += 1
        ans << an
    end
    return ans
end
