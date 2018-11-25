def minimalNumberOfCoins(coins, price)
    ans = 0
    coins = coins.reverse
    for i in (0..coins.length - 1)
        ans += price / coins[i]
        price = price % coins[i]
    end
    return ans
end
