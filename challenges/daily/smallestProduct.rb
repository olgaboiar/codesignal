def smallestProduct(a)
    a = a.sort
    n = a.length
    s = a[0] * a[1] * a[2]
    if n > 3
        g = 0
        for i in (0..2)
            if a[i] < 0
                g += 1
            end
        end
        if g == 2 or g == 1
            s = a[0] * a[n - 2] * a[n - 1]
        elsif g == 3
            if a[n - 2] * a[n - 1] > a[1] * a[2]
                s = a[0] * a[n - 2] * a[n - 1]
            end
        end
    end
    return s
end