require 'set'
def comfortableNumbers(l, r)
    pair = Set.new
    num = 0
    for i in (l..r)
        s = 0
        i.to_s.split("").each do |sm|
            s += sm.to_i
        end
        for j in (i-s..i+s)
            if i < j 
                pair << [i,j]
            end
            if j < i
                if pair.include?([j,i])
                    num +=1
                end
            end
        end
    end
    num          
end