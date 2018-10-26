def leastFactorial(n)
    k = 1
    prod = 1
    while prod < n
        prod *= k
        k += 1
    end
    prod
end