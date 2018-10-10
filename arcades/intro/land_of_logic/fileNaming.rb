require 'set'
def fileNaming(names)
    res = []
    s = Set.new
    puts s
    for i in (0..names.length - 1)
        name = names[i]
        temp = name
        j = 1
        if !s.include?(name)
            s << name
        else
            while true
                if !s.include?(names[i] + "(#{j})")
                    s << names[i] + "(#{j})"
                    temp = names[i] + "(#{j})"
                    break
                else
                    j += 1
                    temp = names[i] + "(#{j})"
                end
            end
        end
        res << temp
    end
    res
end