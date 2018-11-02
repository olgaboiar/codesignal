def crosswordFormation(words)
    cnt = 0
    indicator = words[0]
    combinations = words.permutation.to_a
    combinations.each{ |combination|
        v1 = combination[0]
        v2 = combination[1]
        h1 = combination[2]
        h2 = combination[3]
        
        next if(h1 == indicator || h2 == indicator)
        next if(v1.count(h1) == 0 || v1.count(h2) == 0 || v2.count(h1) == 0 || v2.count(h2) == 0)
        cnt += 2*countCrosswordLetters(h1,h2,v1,v2)
    }
    
    cnt
end

def countCrosswordLetters(h1, h2, v1, v2)
    cnt = 0
    
    for i in 0..h1.length-1
        next if(v1.count(h1[i]) == 0)
        for j in i+2..h1.length-1
            next if(v2.count(h1[j]) == 0)
            for k in 0..v1.length-1
                next if(h1[i] != v1[k])
                for l in k+2..v1.length-1
                    for m in 0..v2.length-1
                        next if(h1[j] != v2[m])
                        break if(m+l-k >= v2.length)
                        for n in 0..h2.length-1
                            break if(n+j-i >= h2.length)
                            if(v1[l] == h2[n] && v2[m+l-k]==h2[n+j-i])

                                cnt += 1
                            end
                        end
                    end
                end
            end
        end
    end
    
    cnt
end