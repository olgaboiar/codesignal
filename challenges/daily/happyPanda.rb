def happyPanda(coins, candies)
    money = 0
    hap = 0
    max = 0
    for i in (0..coins.length - 1)
        money += coins[i]
        if money >= candies[i][0]
            hap += candies[i][1]
            money -= candies[i][0]
            max = candies[i][1] if candies[i][1] > max
            else
            hap -= candies[i][1] if candies[i][1] >= max
        end
    end
    hap
end