def replaceMiddle(arr)
    if arr.length % 2 == 0
        middle = []
        middle << arr[arr.length / 2] + arr[arr.length / 2 - 1]
        return middle if arr.length == 2
        arr = arr[0..arr.length / 2 - 2].concat(middle).concat(arr[arr.length / 2 + 1..-1]) 
    end
    arr
end