def countNoFillZones(w)
    a = 0
    d = ["a","A","b","D","d", "e", "g","O", "o","P", "p","Q","R", "q", "0", "4", "6", "9"]
    for i in (0..w.length - 1)
        a += 2 if w[i] == "B" or w[i] == "8"
        a += 1 if d.include?(w[i])
    end
    a
end
