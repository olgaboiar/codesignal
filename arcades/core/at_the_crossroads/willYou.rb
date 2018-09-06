def willYou(young, beautiful, loved)
    return false if young and beautiful and loved
    return false if !young or !beautiful and !loved
    return true
end