def houseOfCats(legs)
    res = []
    res << 0 if legs%4 == 0
    while legs > 0
        res << legs/2
        legs -= 4
    end
    res = res.sort
    return res
end