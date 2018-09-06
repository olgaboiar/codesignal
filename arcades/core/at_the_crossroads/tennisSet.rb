def tennisSet(score1, score2)
    return false if score1 == score2
    if score1 > 4 and score2 > 4
        return true if score1 == 7 or score2 == 7
    else
        return true if score1 == 6 or score2 == 6
    end
    return false
end