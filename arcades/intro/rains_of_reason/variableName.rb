def variableName(name)
    if name[0] =~ /[[:digit:]]/
        return false
    end
    for i in (0..name.length - 1)
        puts name[i]
        if name[i] =~ /[[:alpha:]]/
        elsif name[i] =~ /[[:digit:]]/
        elsif name[i] == "_"
        else
            return false
        end
    end
    true
end