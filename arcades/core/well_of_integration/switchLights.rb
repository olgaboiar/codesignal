def change(i)
    return 0 if i == 1
    return 1 if i == 0
end

def switchLights(a)
    n = a.length
    for i in (0..n - 1)
        if a[i] == 1
            for j in (0..i)
                a[j] = change(a[j])
            end
            
        end
    end
    a
end
