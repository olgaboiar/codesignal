def digitDegree(n)
    return 0 if n < 10
    @dep = 1
    def recur(num)
        sum = 0
        num.to_s.split("").each do |int|
            sum += int.to_i
        end 
        if sum <= 9
            return @dep
            else
            new_num = sum
            @dep += 1
            recur(new_num)
        end
    end
    recur n
end