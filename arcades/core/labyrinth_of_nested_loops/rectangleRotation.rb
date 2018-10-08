def rectangleRotation(a, b)
    aHalfBisect = (a/Math.sqrt(2))/2
    bHalfBisect = (b/Math.sqrt(2))/2
    rect1 = [aHalfBisect.floor*2 + 1, bHalfBisect.floor*2 + 1]
    rect2 = []
    
    if aHalfBisect - aHalfBisect.floor < 0.5 
        rect2[0] = rect1[0] - 1
    else 
        rect2[0] = rect1[0] + 1
    end 
    
    
    if bHalfBisect - bHalfBisect.floor < 0.5 
        rect2[1] = rect1[1] - 1
    else 
        rect2[1] = rect1[1] + 1
    end 
    
    rect1.inject(:*) + rect2.inject(:*)
end
