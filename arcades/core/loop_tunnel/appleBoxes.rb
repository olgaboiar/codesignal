def appleBoxes(k)
    red = 0
    yell = 0
    for i in (1..k)
        if i % 2 == 0
            red += i * i
            else
            yell += i * i
        end
    end
    red - yell
end
