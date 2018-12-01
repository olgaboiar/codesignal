def higherVersion(ver1, ver2)
    return false if ver1 == ver2
    v1 = ver1.split(".")
    v2 = ver2.split(".")
    for i in (0..v1.length - 1)
        return false if v1[i].to_i < v2[i].to_i
        return true if v1[i].to_i > v2[i].to_i
    end
end
