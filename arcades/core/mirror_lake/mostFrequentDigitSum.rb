def dig(i)
    res = 0
   while i > 0
      digit = i % 10
       res += digit
      i /= 10
    end 
    return res
end

def mostFrequentDigitSum(n)
    arr = []
    until n == 0
        arr << n
        n = n - dig(n)
    end
    arr << 0
    myh = Hash.new
    for i in (0..arr.length - 1)
        arr[i] = dig(arr[i])
        if myh.key?(arr[i])
            myh[arr[i]] += 1
            else
            myh[arr[i]] = 1
        end
    end
    max = 0
    ans = 0
    myh.each do |key, value|
        if value > max
            max = value
            ans = key
        end
        if value == max
            ans = key if key > ans
        end
    end
    return ans
end
