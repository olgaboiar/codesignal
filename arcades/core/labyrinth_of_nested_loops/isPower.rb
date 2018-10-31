def isPower(n)
    return true if n == 1
    i = 2
    while i <= Math.sqrt(n)
        j = 2
        while j <= Math.sqrt(n)
            return true if i ** j == n
            j += 1
        end
        i += 1
    end
    return false
end