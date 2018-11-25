def characterParity(symbol)
    if symbol =~ /[[:digit:]]/
        if symbol.to_i % 2 == 0
            return "even"
            else
            return "odd"
        end
        else
        return "not a digit" 
    end
end
