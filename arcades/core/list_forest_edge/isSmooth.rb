def isSmooth(arr)
    if arr.length % 2 == 0
        middle = arr[arr.length / 2] + arr[arr.length / 2 - 1]
        else
        middle = arr[arr.length / 2]
    end
    return true if arr[0] == arr[-1] and arr[0] == middle
    return false
end