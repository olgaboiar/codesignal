def weakNumbers(n)
    divisors = []
    weakness = []
    for i in 0..n - 1 
        divisors[i] = numberOfDivisors(i + 1)
        weakness[i] = divisors.inject(0) do |weakness, x| 
            (x > divisors[i]) ? weakness +1 : weakness
        end
    end
    maxWeakness = weakness.max
    [maxWeakness, weakness.count(maxWeakness)]
        
end

def numberOfDivisors(n)
    count = 0
    divisor = []
    for i in 1..Math.sqrt(n)
        if n % i == 0
            count += n / i == i ? 1 : 2
        end
    end 
    count
end