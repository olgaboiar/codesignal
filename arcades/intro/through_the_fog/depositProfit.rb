def depositProfit(deposit, rate, threshold)
    count = 0
    until deposit >= threshold
        count += 1
        deposit = deposit.to_f * (100 + rate) / 100
        puts deposit
    end
    return count
end