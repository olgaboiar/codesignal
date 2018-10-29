def rounders(n)
    n = n.to_s.split("")
    for i in (n.length - 1).downto 1
        n[i - 1] = n[i - 1].to_i + 1 if n[i].to_i >= 5
        n[i] = 0
    end
    return n.join('').to_i
end