def metroCard(lastNumberOfDays)
    res = []
    mon = {1=>31, 2=>28, 3=>31, 4 =>30, 5=>31, 6=>30, 7=>31, 8=>31, 9=>30, 10=>31, 11=>30, 12=>31}
    mon.each do|k, v|
        if lastNumberOfDays == v
            var = k + 1
            if var == 13
                var = 1
            end
            if !res.include?(mon[var])
                res << mon[var]
            end
        end
    end
    res
end