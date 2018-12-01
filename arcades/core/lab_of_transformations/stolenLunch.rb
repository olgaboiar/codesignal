def stolenLunch(note)
    for i in (0..note.length - 1)
        if note[i] =~ /[[:digit:]]/
            note[i] = (note[i].to_i + 65).chr.downcase
        elsif note[i] =~ /[[a-j]]/
            note[i] = (note[i].ord - 97).to_s
        end
    end
    note
end
