def validTime(time)
    arr = time.split(":")
    return false if arr[0].to_i > 23
    return false if arr[1].to_i > 59 
    return true
end