def timedReading(maxLength, text)
    text.scan(/\w+/).count{|x| x.size<=maxLength}
end