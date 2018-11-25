def stringsConstruction(a, b)
    b_need = ""
    for i in (0..b.length - 1)
        if a.include?(b[i])
            b_need += b[i]
        end
    end
    a_hash = Hash.new
    b_hash = Hash.new
    for i in (0..a.length - 1)
        if a_hash.key?(a[i])
            a_hash[a[i]] += 1
            else
            a_hash[a[i]] = 1
        end
    end
    for i in (0..b_need.length - 1)
        if b_hash.key?(b_need[i])
            b_hash[b_need[i]] += 1
            else
            b_hash[b_need[i]] = 1
        end
    end
    min = b_hash[a[0]].to_i / a_hash[a[0]].to_i
    b_hash.each do |key, value|
        temp = value / a_hash[key]
        min = temp if temp < min
    end
    min
end
