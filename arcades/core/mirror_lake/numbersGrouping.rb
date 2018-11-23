def numbersGrouping(a)
    a.size + a.map{|x| (x-1)/10000 }.uniq.count
end
