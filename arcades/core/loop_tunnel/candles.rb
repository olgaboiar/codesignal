def candles(candlesNumber, makeNew)
    leftover = candlesNumber
    while leftover >= makeNew
        candlesNumber += leftover / makeNew
        leftover = leftover % makeNew + leftover / makeNew
    end
    candlesNumber
end