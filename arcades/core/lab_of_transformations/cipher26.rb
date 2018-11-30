def cipher26(message)
    z = ''
    rolling_sum = 0
    message.each_char { |c|
        c = ((c.ord - ?a.ord - rolling_sum) % 26 + ?a.ord).chr
        rolling_sum += c.ord - ?a.ord
        z << c
    }
    z

end
