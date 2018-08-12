def crosswordFormation(words)
    words.permutation.map do |w|
        crosswordFormation1 w
    end.reduce(:+)
end

def crosswordFormation1(words)
    w1 = words[0]
    w2 = words[1]
    
    l1 = w1.length
    l2 = w2.length
    
    count = 0
    w1.chars.each_with_index do |c1, i1|
        w2.chars.each_with_index do |c2, i2|
            imax = [l1-i1-1, l2-i2-1].min
            if imax > 1
                (2..imax).each do |i|
                    c3 = w1[i1 + i]
                    c4 = w2[i2 + i]
                    count += crosswordFormation2(words[2..3], c1, c2, c3, c4)
                end
            end
        end
    end
    count
end

def crosswordFormation2(words, c1, c2, c3, c4)
    w1 = words[0]
    w2 = words[1]
    
    l1 = w1.length
    l2 = w2.length
    
    jmax = [l1, l2].min
    return(0) unless jmax > 2
    (2..jmax).map do |j|
        fits(w1, c1, c2, j) * fits(w2, c3, c4, j)
    end.reduce(:+)
end
    
def fits w, c1, c2, j
    (0..w.length-j).count do |j1|
        w[j1] == c1 and w[j1 + j] == c2
    end
end
