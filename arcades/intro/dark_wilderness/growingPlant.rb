def growingPlant(upSpeed, downSpeed, desiredHeight)
    count = 0
    height = 0
    while height < desiredHeight
        height = height + upSpeed
        count += 1
        if height >= desiredHeight
            return count
            else
            height = height - downSpeed
        end
    end
    count
end
