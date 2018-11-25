def threeSplit(a)
    needed = a.reduce(0, :+) / 3
    s = 0
    x = 0
    y = 0
    (0...a.size - 1).each { |i|
        s += a[i]
        if s == needed * 2
            y += x
        end
        if s == needed
            x += 1
        end
    }
    y

end
