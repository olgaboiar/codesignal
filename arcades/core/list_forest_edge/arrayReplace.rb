def arrayReplace(a, elemToReplace, substitutionElem)
    a.map! {|x|
        if x == elemToReplace
            x = substitutionElem
            else
            x
        end
        }
end